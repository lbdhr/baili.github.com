using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeacherInfoDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                string id = Request.QueryString["tecid"];
                //this.lblBirth.Text = SqlHelper.FindString("select TBirth from [TeachersInfo] where ID=" + id);
                this.lblEmail.Text = SqlHelper.FindString("select TEmail from [TeachersInfo] where ID=" + id);
                this.lblName.Text = SqlHelper.FindString("select TName from [TeachersInfo] where ID=" + id);
                this.lblNation.Text = SqlHelper.FindString("select TNation from [TeachersInfo] where ID=" + id);
                this.lblTeacher.Text = SqlHelper.FindString("select TTel from [TeachersInfo] where ID=" + id);
                this.lblGrade.Text = SqlHelper.FindString("select TZhiwu from [TeachersInfo] where ID=" + id);
                this.lblInfo.Text = SqlHelper.FindString("select TInfo from [TeachersInfo] where ID=" + id);
                this.lblSex.Text = SqlHelper.FindString("select TSex from [TeachersInfo] where ID=" + id);
                string imgurl = SqlHelper.FindString("select TPicUrl from [TeachersInfo] where ID=" + id);
                //this.imgPic.ImageUrl = "UpLoads/" + imgurl;
            }
            catch
            {
                //Response.Redirect("Error.aspx");
            }
        }
    }
}