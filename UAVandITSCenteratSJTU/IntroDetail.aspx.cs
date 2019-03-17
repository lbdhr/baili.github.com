using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IntroDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string infodetail = "";
        try
        {
            string type = Request.QueryString["hassons"].ToString();
            string navid = Request.QueryString["navid"].ToString();
            string selfurl = Request.QueryString["selfurl"].ToString();
            if (type == "1" || type == null)
            {
                if (selfurl == "0")
                {
                    Response.Redirect("NewsList.aspx?navid=" + navid.ToString());
                }
                else
                {
                    Response.Redirect(selfurl.ToString()+".aspx");
                }
            }
            else
            {
                infodetail = SqlHelper.FindString("SELECT [InfoDetail] FROM [NavDetail] WHERE [ID]= " + navid.ToString());
                this.lblInfo.Text = infodetail.ToString();
            }
        }
        catch (Exception ee)
        {
            Response.Write(ee.ToString());
        }

    }
}