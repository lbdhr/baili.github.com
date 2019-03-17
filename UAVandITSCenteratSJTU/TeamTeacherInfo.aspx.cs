using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeamTeacherInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                string id = Request.QueryString["tecid"];
                this.lblEmail.Text = SqlHelper.FindString("select TEmail from [TeachersInfo] where ID=" + id);
                this.lblName.Text = SqlHelper.FindString("select TName from [TeachersInfo] where ID=" + id);
                this.lblTel.Text = SqlHelper.FindString("select TTel from [TeachersInfo] where ID=" + id);
                this.lblZhiwu.Text = SqlHelper.FindString("select TZhiwu from [TeachersInfo] where ID=" + id);
                this.lblInfo.Text = SqlHelper.FindString("select TInfo from [TeachersInfo] where ID=" + id);
                this.lblSex.Text = SqlHelper.FindString("select TSex from [TeachersInfo] where ID=" + id);
                string imgurl = SqlHelper.FindString("select TPicUrl from [TeachersInfo] where ID=" + id);
                this.imgPic.ImageUrl = "UpLoads/" + imgurl;
            }
            catch
            {
                //Response.Redirect("Error.aspx");
            }
        }
    }
}