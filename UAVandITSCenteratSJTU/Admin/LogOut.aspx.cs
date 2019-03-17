using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Admin_LogOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<script>if(confirm('确认注销？')){parent.location.href='LogOutSure.aspx';}else{parent.location.href='Index.htm';}</script>");
        
        //  string ss = "";
        // ss = "<script language='javascript'>self.opener = null;self.close();</script>";
        // Response.Redirect(ss);
    }
}