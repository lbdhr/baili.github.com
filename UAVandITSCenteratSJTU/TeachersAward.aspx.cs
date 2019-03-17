using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeachersAward : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            this.Label1.Text = SqlHelper.FindString("select TeachersAward from Teachers");
        }
        catch
        { }
    }

}