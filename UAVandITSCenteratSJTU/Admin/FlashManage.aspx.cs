using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml;


public partial class Admin_FlashManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null || Session["AdminName"] == "")
        {
            Response.Redirect("../Login.aspx");
        }

    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        LinkButton link = GridView1.SelectedRow.FindControl("LinkButton3") as LinkButton;
        int nn = Convert.ToInt32(link.Text.ToString());
        Response.Redirect("FlashEdit.aspx?id=" + nn.ToString());
    }
}