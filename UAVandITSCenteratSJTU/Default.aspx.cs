using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //   HyperLink1.Text = (SqlHelper.FindString("select InfoDetail from NavDetail where ID=1"));
        this.HyperLink1.Text = SqlHelper.FindString("select InfoDetail from NavDetail where ID=20");
        this.HyperLink2.Text = SqlHelper.FindString("select InfoDetail from NavDetail where ID=21");
        this.HyperLink3.Text = SqlHelper.FindString("select InfoDetail from NavDetail where ID=22");
    }

    protected System.Drawing.Color Change(string ss)
    {
        bool s = Convert.ToBoolean(ss);
        if (s == false)
            return System.Drawing.Color.Black;
        else
            return System.Drawing.Color.Red;
    }

    protected string ChageStringIntro(string ss)
    {
        string sss;
        if (ss.Length > 500)
        {
            sss = ss.Substring(0, 500);
            return sss;
        }
        else
        {
            sss = ss;
            return sss;
        }
    }
    protected string ChageString(string ss)
    {
        string sss;
        if (ss.Length > 15)
        {
            sss = ss.Substring(0, 15);
            return sss;
        }
        else
        {
            sss = ss;
            return sss;
        }
    }
    protected string ChageString2(string ss)
    {
        string sss;
        if (ss.Length > 12)
        {
            sss = ss.Substring(0, 12);
            return sss;
        }
        else
        {
            sss = ss;
            return sss;
        }
    }
    protected string ChageString3(string ss)
    {
        string sss;
        if (ss.Length > 19)
        {
            sss = ss.Substring(0, 19);
            return sss;
        }
        else
        {
            sss = ss;
            return sss;
        }
    }
}