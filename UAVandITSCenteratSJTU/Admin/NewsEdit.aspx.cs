using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_NewsEdit : System.Web.UI.Page
{
    string newstype;
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
                //Response.Write(id);
                this.txtTitle.Text = SqlHelper.FindString("select NewsTitle from [News] where ID=" + id + "");
                this.txtKeyWord.Text = SqlHelper.FindString("select NewsKeyWords from [News] where ID=" + id + "");
                this.ckTop.Checked = Convert.ToBoolean(SqlHelper.FindString("select NewsIsTop from [News] where ID=" + id + ""));
                this.ckRed.Checked = Convert.ToBoolean(SqlHelper.FindString("select NewsIsRed from [News] where ID=" + id + ""));
                newstype = SqlHelper.FindString("select NewsWriter from [News] where ID=" + id + "");
                this.Label1.Text = newstype.ToString();
                //this.lbltype.InnerText = newstype.ToString();

                this.Editor1.Text = SqlHelper.FindString("select NewsCont from [News] where ID=" + id + "");
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
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        try
        {
            string ss = "NewsReleaseManage.aspx" ;
            Response.Redirect(ss);
        }
        catch
        {
            //Response.Redirect("NewsReleaseManage.aspx?newstype=2");
        }
    }
    string newspicrul = "";
    bool ispicchanged = false;
    string sql = "";
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string newscont = this.Editor1.Text.ToString();
        DateTime newsdate = System.DateTime.Now;
        string newskeywords = this.txtKeyWord.Text.ToString();
        string newstitle = this.txtTitle.Text.ToString();

        string newsisred;
        if (this.ckRed.Checked)
        {
            newsisred = "1";
        }
        else
        {
            newsisred = "0";
        }
        string newsistop;
        if (this.ckTop.Checked)
        {
            newsistop = "1";
        }
        else
        {
            newsistop = "0";
        }

        if (IsPostBack)
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
            else
            {
                //nr.NRPic = "";
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
                    newspicrul = Convertme(newspicrul);
                    string strPath = Server.MapPath("../UpLoads/" + newspicrul);

                    // 上传文件
                    fileuploadPic.PostedFile.SaveAs(strPath);
                    ispicchanged = true;
                }
                catch (Exception ex)
                {
                    Response.Write("<script language='javascript'>alert('上传图片失败！');</script>");
                }
            }
        }
        try
        {
            string id = Request.QueryString["id"].ToString();
            if (ispicchanged)
            {
                sql = string.Format("update [News] set NewsTitle='{0}',NewsCont='{1}',NewsIsTop='{2}',NewsIsRed='{3}',NewsKeyWords='{4}',NewsPicUrl='{5}'  where ID={6}",
                    newstitle.ToString(), newscont.ToString(), newsistop.ToString(), newsisred.ToString(), newskeywords.ToString(), newspicrul.ToString(), id.ToString());
            }
            else
            {
                sql = string.Format("update [News] set NewsTitle='{0}',NewsCont='{1}',NewsIsTop='{2}',NewsIsRed='{3}',NewsKeyWords='{4}'  where ID={5}",
                                  newstitle.ToString(), newscont.ToString(), newsistop.ToString(), newsisred.ToString(), newskeywords.ToString(), id.ToString());
            }
            int flag = SqlHelper.ExecuteNonQuery(sql);
            if (flag == -1)
            {
                Stringdis.Show_Msg("修改失败！");
            }
            else
            {
                //Stringdis.Show_Msg("新闻发布成功！");
                string ss = "<script language=javaScript>alert('修改成功！');window.location='NewsReleaseManage.aspx';</script>";
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