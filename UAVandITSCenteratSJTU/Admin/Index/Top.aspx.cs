using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Index_Top : System.Web.UI.Page
{
    protected string name, type;
    protected void Page_Load(object sender, EventArgs e)
    {
        name = "baicong";
        type = "admin";

        //if (!Page.IsPostBack)
        //{
        //    if (Session["AdminName"] == null || Session["AdminName"].ToString() == "")
        //    {
        //        Response.Write("<script>parent.location.href='../../Login.aspx';</script>");
        //        name = "";
        //        type = "";
        //    }
        //    else
        //    {
        //        name = Session["AdminName"].ToString();
        //        type = Session["AdminType"].ToString();
        //    }
        //}
    }
}