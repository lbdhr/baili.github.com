using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminEdit : System.Web.UI.Page
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
                //Response.Write(id);
                this.lblName.Text = SqlHelper.FindString("select AdminName from [Admin] where [ID]=" + id + "");
            }
            catch
            {
                Response.Redirect("Index.htm");
            }
            finally
            { }
        }
    }
    protected void btnRe_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminManage.aspx");
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"].ToString());
        
        try
        {
            string updatecmd = "UPDATE  [Admin] SET AdminPwd='"+this.txtRPwd.Text.ToString()+"' WHERE [ID]="+id.ToString();
            int flag = SqlHelper.ExecuteNonQuery(updatecmd);
            if (flag == -1)
            {
                Stringdis.Show_Msg("修改失败！");
            }
            else
            {
                //Stringdis.Show_Msg("新闻发布成功！");
                Response.Write("<script language='javascript'>alert('修改成功!');window.location='AdminManage.aspx';</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'>alert('修改失败!');</script>");
        }
        finally
        {
        }
    }
}