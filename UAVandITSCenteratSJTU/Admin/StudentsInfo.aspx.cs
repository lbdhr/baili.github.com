using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_TeachersInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null || Session["AdminName"] == "")
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
        }
    }

    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        string tinfo = this.Editor1.Text.ToString();
        string tname = this.txtName.Text.ToString();
        string tsex = this.DropDownList1.Text.ToString();
        string tnation = this.txtNation.Text.ToString();
        string temail = this.txtEmail.Text.ToString();
        string tteacher = this.txtTeacher.Text.ToString();
        string tinterst = this.txtInterst.Text.ToString();
        string tstudy = this.DropDownList2.Text.ToString();
        string tgrade = this.DropDownList3.Text.ToString();
       
        try
        {
            string insertcmd = "INSERT INTO [StudentsInfo](SName,SNation,SEmail,SInterst,SStudy,SInfo,SSex,SGrade,STeacher) VALUES ('"
                + tname.ToString() + "','" + tnation.ToString() + "','" + temail.ToString() + "','" + tinterst.ToString() + "','" + tstudy.ToString() + "','" + tinfo.ToString() + "','" + tsex.ToString() + "','" + tgrade.ToString() + "','" + tteacher.ToString() + "')";
            int flag = SqlHelper.ExecuteNonQuery(insertcmd);
            if (flag == -1)
            {
                Stringdis.Show_Msg("添加失败！");
            }
            else
            {
                //Stringdis.Show_Msg("新闻发布成功！");
                string ss = "<script language=javaScript>alert('添加成功！');window.location='StudentsInfoManage.aspx';</script>";
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