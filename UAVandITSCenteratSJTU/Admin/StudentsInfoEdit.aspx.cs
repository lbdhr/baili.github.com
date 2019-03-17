using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_TeachersInfoEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null || Session["AdminName"] == "")
        {
            Response.Redirect("../Login.aspx");
        }


        if (!Page.IsPostBack)
        {
            try
            {
                string id = Request.QueryString["id"].ToString();
                this.txtEmail.Text = SqlHelper.FindString("select SEmail from [StudentsInfo] where ID=" + id);
                this.txtName.Text = SqlHelper.FindString("select SName from [StudentsInfo] where ID=" + id);
                this.Editor1.Text = SqlHelper.FindString("select SInfo from [StudentsInfo] where ID=" + id);
                this.DropDownList1.Text = SqlHelper.FindString("select SSex from [StudentsInfo] where ID=" + id);
                this.DropDownList2.Text = SqlHelper.FindString("select SStudy from [StudentsInfo] where ID=" + id);
                this.txtInterst.Text = SqlHelper.FindString("select SInterst from [StudentsInfo] where ID=" + id);
                this.txtNation.Text = SqlHelper.FindString("select SNation from [StudentsInfo] where ID=" + id);
                this.txtTeacher.Text = SqlHelper.FindString("select STeacher from [StudentsInfo] where ID=" + id);
            }
            catch (Exception ee)
            {
                Response.Write(ee.ToString());
                //Response.Redirect("Index.htm");
            }
            finally
            { }
        }
    }


    bool ispicchanged = false;
    string sql = "";
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
            string id = Request.QueryString["id"].ToString();

            sql = string.Format("update [StudentsInfo] set SName='{0}',SNation='{1}',SEmail='{2}',SStudy='{3}',SInterst='{4}',SInfo='{5}',SSex='{6}',SGrade='{7}',STeacher='{8}'  where ID={9}",
                tname.ToString(), tnation.ToString(), temail.ToString(), tstudy.ToString(), tinterst.ToString(), tinfo.ToString(), tsex.ToString(), tgrade.ToString(), tteacher.ToString(), id.ToString());

            int flag = SqlHelper.ExecuteNonQuery(sql);
            if (flag == -1)
            {
                Stringdis.Show_Msg("修改失败！");
            }
            else
            {
                //Stringdis.Show_Msg("新闻发布成功！");
                string ss = "<script language=javaScript>alert('修改成功！');window.location='StudentsInfoManage.aspx';</script>";
                Response.Write(ss);
            }

        }
        catch (Exception ex)
        {
            //Response.Write(ex.ToString());
            Stringdis.Show_Msg("修改失败！");
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
    public static string Convertme(string picurl)
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