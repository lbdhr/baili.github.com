using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ServiceYong : System.Web.UI.Page
{

    string type;
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
                type = Request.QueryString["type"].ToString();
                AdminOrg = Request.QueryString["id"].ToString();
                if (!Page.IsPostBack)
                {
                    this.Editor1.Text = SqlHelper.FindString("SELECT [" + type.ToString() + "] FROM [Orgs] WHERE [ID]=" + AdminOrg.ToString());
                }
            }
            catch
            { }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ServiceYong = this.Editor1.Text.ToString();
        if (UpdateServiceYong(ServiceYong, type, AdminOrg))
        {
            Response.Write("<script language='javascript'>alert('修改成功！');window.location='"+type.ToString()+".aspx';</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('修改失败！');</script>"); //Response.Write("not ok");
        }
    }

    protected bool UpdateServiceYong(string ServiceYong, string type, string adminorg)
    {
        string updatecmd = "UPDATE [Orgs] SET [" + type.ToString() + "]='" + ServiceYong.ToString() + "' WHERE [ID]=" + adminorg.ToString() ;
        int flag = SqlHelper.ExecuteNonQuery(updatecmd);
        if (flag == -1)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}