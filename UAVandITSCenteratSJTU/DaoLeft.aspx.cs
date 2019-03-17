using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.Odbc;

public partial class DaoLeft : System.Web.UI.Page
{
    protected string stringss = "";
    protected string fathernavname = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Random num = new Random();
            int a = num.Next(1, 4);
            this.Image1.ImageUrl = "images/flash" + a.ToString() + ".jpg";
            //Response.Write(a.ToString());
            try
            {
                string fathernavid = Request.QueryString["fathernav"].ToString();
                string hassons = Request.QueryString["hassons"].ToString();
                fathernavname = SqlHelper.FindString("select FatherNav from NavList where ID=" + fathernavid.ToString());
            }
            catch
            { }

            try
            {
                string navid = Request.QueryString["navid"].ToString();
                AccessDataSource ads = this.AccessDataSource2;
                ads.SelectCommand = "SELECT top 1 * FROM [NavDetail] WHERE ([ID] = " + navid.ToString() + ")";
                ads.DataBind();
            }
            catch
            { }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected System.Drawing.Color Change(string ss)
    {
        bool s = Convert.ToBoolean(ss);
        if (s == false)
            return System.Drawing.Color.Black;
        else
            return System.Drawing.Color.Red;

    }

}