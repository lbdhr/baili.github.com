using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ServiceYong : System.Web.UI.Page
{

    string navid;
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
                navid = Request.QueryString["navid"].ToString();
                if (!Page.IsPostBack)
                {
                    this.Editor1.Text = SqlHelper.FindString("SELECT [InfoDetail] FROM [NavDetail] WHERE [ID]=" + navid.ToString());
                }
            }
            catch
            { }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ServiceYong = this.Editor1.Text.ToString();
        if (UpdateServiceYong(ServiceYong, navid))
        {
            Response.Write("<script language='javascript'>alert('修改成功！');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('修改失败！');</script>"); //Response.Write("not ok");
        }
    }

    protected bool UpdateServiceYong(string ServiceYong, string ID)
    {
        string updatecmd = "UPDATE [NavDetail] SET InfoDetail='" + ServiceYong.ToString() + "' WHERE [ID]=" + ID.ToString() ;
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