using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml;


public partial class Admin_FlashEdit : System.Web.UI.Page
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

                XmlDocument XMLDoc = new XmlDocument();
                XMLDoc.Load(Server.MapPath("../xml/viewerData.xml"));
                XmlNodeList list = XMLDoc.GetElementsByTagName("item");

                for (int i = 0; i < list.Count; i++)
                {
                    if (list[i].Attributes[0].Value == id.ToString())
                    {
                        this.lblflahid.Text =list[i].Attributes["id"].Value.ToString();//在这里改
                        this.txtFlashTitle.Text = list[i].Attributes["title"].Value.ToString();//在这里改
                        this.txtFlashUrl.Text = list[i].Attributes["url"].Value.ToString();//在这里改
                    }
                }
                //StreamWriter swriter = new StreamWriter(Server.MapPath("viewerData.xml"));
                //XmlTextWriter xw = new XmlTextWriter(swriter);
                //xw.Formatting = Formatting.Indented;
                //XMLDoc.WriteTo(xw);
                //xw.Close();
                //swriter.Close();
                //Response.Write(id);
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
            string ss = "FlashManage.aspx";
            Response.Redirect(ss);
        }
        catch
        {
            //Response.Redirect("NewsReleaseManage.aspx?newstype=2");
        }
    }
    string newspicrul = "";
    string flashpicrul = "";
    bool ispicchanged = false;
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string fid = this.lblflahid.Text.ToString();
        string ftitle = this.txtFlashTitle.Text.ToString();
        string furl = this.txtFlashUrl.Text.ToString();

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
                    flashpicrul = "flashimages/" + newspicrul;
                    string strPath = Server.MapPath("../flashimages/" + newspicrul);

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
            if (ispicchanged)
            {
                try
                {
                    XmlDocument XMLDoc = new XmlDocument();
                    string path = Server.MapPath("../xml/viewerData.xml");
                    XMLDoc.Load(path);

                    XmlNodeList list = XMLDoc.GetElementsByTagName("item");

                    for (int i = 0; i < list.Count; i++)
                    {
                        if (list[i].Attributes[0].Value == fid.ToString())
                        {
                            list[i].Attributes["title"].Value = ftitle.ToString();//在这里改
                            list[i].Attributes["url"].Value = furl.ToString();//在这里改
                            list[i].Attributes["img"].Value = flashpicrul.ToString();//在这里改
                        }
                    }

                    XMLDoc.Save(path);

                    Response.Write("<script language='javascript'>alert('修改成功！');location.href='FlashManage.aspx';</script>");
                }
                catch (Exception ex)
                {
                    Response.Redirect("FlashManage.aspx");
                }
                finally
                {
                    // Response.Redirect("SinList.aspx");
                }
              
            }
            else
            {
                try
                {
                    XmlDocument XMLDoc = new XmlDocument();
                    string path = Server.MapPath("../xml/viewerData.xml");
                    XMLDoc.Load(path);

                    XmlNodeList list = XMLDoc.GetElementsByTagName("item");

                    for (int i = 0; i < list.Count; i++)
                    {
                        if (list[i].Attributes[0].Value == fid.ToString())
                        {
                            list[i].Attributes["title"].Value = ftitle.ToString();//在这里改
                            list[i].Attributes["url"].Value = furl.ToString();//在这里改
                        }
                    }

                    XMLDoc.Save(path);

                    Response.Write("<script language='javascript'>alert('修改成功！');location.href='FlashManage.aspx';</script>");
                }
                catch (Exception ex)
                {
                    Response.Redirect("FlashManage.aspx");
                }
                finally
                {
                    // Response.Redirect("SinList.aspx");
                }
            }

        }
        catch (Exception ex)
        {
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