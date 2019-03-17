using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewsDetial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                string id = Request.QueryString["ID"];
                this.lblContent.Text = SqlHelper.FindString("select NewsCont from [News] where ID=" + id);
                this.lblDate.Text = "发布日期：" + Convert.ToDateTime(SqlHelper.FindString("select NewsDate from [News] where ID=" + id)).ToString("yyyy/MM/dd");
                this.lblTitle.Text = SqlHelper.FindString("select NewsTitle from [News] where ID=" + id);
                this.lblType.Text = "公告来源：" + SqlHelper.FindString("select NewsWriter from [News] where ID=" + id);

                this.lblHr.Text = " <hr />";

                //Random num = new Random();
                //int a = num.Next(1, 4);
                //this.Image1.ImageUrl = "images/flash" + a.ToString() + ".jpg";

            }
            catch
            {
                //Response.Redirect("Error.aspx");
            }
        }
    }
}