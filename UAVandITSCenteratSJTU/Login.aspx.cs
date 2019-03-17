using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.Odbc;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Request.Cookies["CheckCode"] == null)
            {
                Response.Write("<script>alert('您的浏览器设置已被禁用 Cookies，您必须设置浏览器允许使用 Cookies 选项后才能使用本系统。')</script>");
                return;
            }
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (String.Compare(Request.Cookies["CheckCode"].Value, txtCheckCode.Text, true) != 0)
        {
            // lblMessage.Text = "验证码错误，请输入正确的验证码。";
            Response.Write("<script>alert('验证码错误，请输入正确的验证码。')</script>");
            //lblMessage.Visible = true;
            //return;
        }
        else
        {
            string adminName = Stringdis.newstr(this.txtName.Text.ToString());
            string adminPwd = Stringdis.newstr(this.txtPwd.Text.ToString());

            try
            {

                String cmdText;
                cmdText = "select * from [Admin] where [AdminName] = '" + adminName.ToString() + "' AND [AdminPwd]='" + adminPwd.ToString() + "' AND [AdminType]='" + this.RadioButtonList1.SelectedValue.ToString() + "'";
                OleDbDataReader da = SqlHelper.ExecuteDataReader(cmdText);

                da.Read();
                if (da.HasRows)
                {
                    Session["AdminName"] = adminName.ToString();
                    //Session["AdminID"] = da["ID"].ToString();
                    Session["AdminPwd"] = adminPwd.ToString();
                    Session["AdminType"] = this.RadioButtonList1.SelectedValue.ToString();
                    Session["AdminOrg"] = SqlHelper.FindString("select [AdminOrg] from [Admin] where [AdminName]='"+ adminName.ToString()+"'");
                    FormsAuthentication.RedirectFromLoginPage(this.txtName.Text.ToString(), false);//以后添加,需要配置web.config
                    Response.Redirect("./Admin/Index.htm");
                }
                else
                {
                    Response.Write("<Script Language=JavaScript>alert('登录失败！');window.top.location = document.URL;</Script>");
                }

                da.Close();
                da.Dispose();
            }
            catch
            {
                Response.Write("<Script Language=JavaScript>alert('登录失败！');window.top.location = document.URL;</Script>");
            }
            finally
            { }
        }
    }
}