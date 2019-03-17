using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_NewsReleaseManage : System.Web.UI.Page
{
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
                string type = Request.QueryString["type"].ToString();
                this.LinkButton4.PostBackUrl = "~/Admin/NewsRelease.aspx?atype=" + type.ToString();

                if (type == "xueshulunwen")
                {
                    this.LinkButton4.Text = "添加【学术论文】";
                }
            }
            catch
            { }
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        LinkButton link = GridView1.SelectedRow.FindControl("LinkButton3") as LinkButton;
        int nn = Convert.ToInt32(link.Text.ToString());
        Response.Redirect("NewsEdit.aspx?id=" + nn.ToString());
    }


    protected string ShortString(string ss)
    {
        string sss;
        if (ss.Length > 30)
        {
            sss = ss.Substring(0, 30) + "...";
            return sss;
        }
        else
        {
            sss = ss;
            return sss;
        }
    }

    protected string ConvertToType(string ss)
    {
        try
        {
            string s = SqlHelper.FindString(" SELECT OrgName FROM [Orgs] WHERE [ID]=" + ss.ToString());
            return s.ToString();
        }
        catch
        {
            return ss.ToString();
        }
    }
}