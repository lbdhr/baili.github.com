using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_FABU : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null || Session["AdminName"] == "")
        {
            Response.Redirect("../Login.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cont = this.Editor1.Text.ToString();
        Response.Write(cont);
    }
}