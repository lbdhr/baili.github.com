using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_NewsRelease : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null || Session["AdminName"] == "")
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
            try
            {
                // string admintype = 
                //string s = SqlHelper.FindString(" SELECT OrgName FROM [Orgs] WHERE [ID]=" + admintype.ToString());
                string atype = Request.QueryString["atype"].ToString();
                if (atype == "xueshulunwen")
                    this.lblType.Text = "学术论文";
                { }
            }
            catch
            { }
        }
    }

    string newspicrul = "";
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        string newscont = this.Editor1.Text.ToString();
        DateTime newsdate = System.DateTime.Now;
        string newskeywords = this.txtKeyWord.Text.ToString();
        string newsisred;
        newsisred = "0";
        string newstitle = this.txtTitle.Text.ToString();
        string newsistop;
        newsistop = "0";
        string newswriter = this.lblType.Text.ToString();


        try
        {
            string insertcmd = "INSERT INTO [News](NewsTitle,NewsKeyWords,NewsWriter,NewsPicUrl,NewsIsTop,NewsIsRed,NewsCont,NewsDate) VALUES ('"
                + newstitle.ToString() + "','" + newskeywords.ToString() + "','" + newswriter.ToString() + "','" + newspicrul.ToString() + "','" + newsistop.ToString() + "','" + newsisred.ToString() + "','" + newscont.ToString() + "','" + newsdate.ToShortDateString() + "')";
            int flag = SqlHelper.ExecuteNonQuery(insertcmd);
            if (flag == -1)
            {
                Stringdis.Show_Msg("发布失败！");
            }
            else
            {
                //Stringdis.Show_Msg("新闻发布成功！");
                string ss = "<script language=javaScript>alert('发布成功！');window.location='NewsReleaseManage.aspx';</script>";
                Response.Write(ss);
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
            //Stringdis.Show_Msg("发布失败！");
        }
        finally
        {
            // Response.Redirect("NewsReleaseManage.aspx");
        }
    }

    public static bool CheckFile(string fileExtension)
    {
        bool fileOk = false;
        string[] allowExtensions = { ".jpg", ".gif", ".bmp", ".png", ".jpeg" };
        for (int i = 0; i < allowExtensions.Length; i++)
        {
            //             if (i >= allowExtensions.Length - 1)
            //             {
            //                 Response.Write("<script language='javascript'>alert('文件不符合格式,请重新上传!');</script>");
            //                 return false;
            //             }
            if (fileExtension == allowExtensions[i])
            {
                fileOk = true;
                break;
            }
        }
        return fileOk;
    }

    #region 重命名文件名，防止重复
    /// <summary>
    /// 重命名文件名，防止重复
    /// </summary>
    /// <param name="theme"></param>
    /// <returns></returns>
    public static string Convert(string picurl)
    {
        // 得到最后一个“\”的位置
        int nIndex = picurl.LastIndexOf('\\');

        // 得到真正的文件名
        picurl = picurl.Substring(nIndex + 1);

        // 得到文件后缀前的“.”所在位置
        nIndex = picurl.LastIndexOf('.');

        // 将“文件名.后缀”改为“文件名+时间.后缀”（那个加号表示连接）
        picurl = picurl.Substring(0, nIndex) + DateTime.Now.ToString("yyyyMMddHHmmss") + picurl.Substring(nIndex);
        /* 获取新文件名结束 */

        // 将上传文件的虚拟目录映射为服务器绝对路径
        return picurl;
    }
    #endregion
}