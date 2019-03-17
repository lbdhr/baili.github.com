using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OrgLogo : System.Web.UI.Page
{
    string AdminOrg;
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
                AdminOrg = Session["AdminOrg"].ToString();
                if (!Page.IsPostBack)
                {
                    string imgurl = SqlHelper.FindString("select OrgPicUrl from Orgs where [OrgName]='" + AdminOrg .ToString()+ "'");
                    this.Image1.ImageUrl = "../Uploads/"+imgurl.ToString();  
                }
            }
            catch
            { }
        }
    }
    string newspicrul = "";
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
         bool fileOk = false;
            //string path = Server.MapPath("~/");
            if (fileuploadPic.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(fileuploadPic.FileName).ToLower();
                fileOk = CheckFile(fileExtension);
                if (!fileOk)
                {
                    Response.Write("<script language='javascript'>alert('文件不符合格式,请重新上传!');</script>");
                    return;
                }

            }

            /* 为防止上传的文件重名，将上传时间追加到文件名之后 
                获取新文件名开始     */
            //string strFileName = "";
            if (fileOk)
            {
                if (fileuploadPic.PostedFile.ContentLength / 1024.0 / 1024 > 2)
                {
                    Response.Write("<script language='javascript'>alert('图片大于2M,请重新上传!');</script>");
                    return;
                }
                try
                {
                    // 取得上传文件名，注意这样得到的是完整路径+文件名
                    //
                    newspicrul = fileuploadPic.FileName;
                    // dlg;
                    newspicrul = Convert(newspicrul);
                    string strPath = Server.MapPath("../UpLoads/" + newspicrul);
                    this.Image2.ImageUrl = "../Uploads/" + newspicrul.ToString();

                    // 上传文件
                    fileuploadPic.PostedFile.SaveAs(strPath);
                }
                catch (Exception ex)
                {
                    Response.Write("<script language='javascript'>alert('新Logo上传失败！');</script>");
                }
            }
            //string ss = "<script language=javaScript>alert('新Logo上传成功！');</script>";
            //Response.Write(ss);
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
    protected void btnSubmit444_Click(object sender, EventArgs e)
    {
        try
        {
            string insertcmd = "UPDATE  [Orgs] SET OrgPicUrl='" + this.Image2.ImageUrl.ToString() + "' WHERE [OrgName]='" + AdminOrg .ToString()+ "'";
            int flag = SqlHelper.ExecuteNonQuery(insertcmd);
            if (flag == -1)
            {
                Stringdis.Show_Msg("新Logo修改失败！");
            }
            else
            {
                //Stringdis.Show_Msg("新闻发布成功！");
                string ss = "<script language=javaScript>alert('新Logo修改成功！');window.location='OrgLogo.aspx';</script>";
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
}