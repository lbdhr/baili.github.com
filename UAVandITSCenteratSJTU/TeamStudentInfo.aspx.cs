using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeamStudentInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                string id = Request.QueryString["stuid"];
                this.lblName.Text = SqlHelper.FindString("select SName from [StudentsInfo] where ID=" + id);
                this.lblNation.Text = SqlHelper.FindString("select SNation from [StudentsInfo] where ID=" + id);
                this.lblEmail.Text = SqlHelper.FindString("select SEmail from [StudentsInfo] where ID=" + id);
                this.lblInterst.Text = SqlHelper.FindString("select SInterst from [StudentsInfo] where ID=" + id);
                this.lblStudy.Text = SqlHelper.FindString("select SStudy from [StudentsInfo] where ID=" + id);
                this.lblTeacher.Text = SqlHelper.FindString("select STeacher from [StudentsInfo] where ID=" + id);
                this.lblSex.Text = SqlHelper.FindString("select SSex from [StudentsInfo] where ID=" + id);
                this.lblGrade.Text = SqlHelper.FindString("select SGrade from [StudentsInfo] where ID=" + id);
                this.lblInfo.Text = SqlHelper.FindString("select SInfo from [StudentsInfo] where ID=" + id);
            }
            catch
            {
                //Response.Redirect("Error.aspx");
            }
        }
    }
}