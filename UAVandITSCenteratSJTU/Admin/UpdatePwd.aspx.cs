using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UpdatePwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null || Session["AdminName"] == "")
        {
            Response.Redirect("../Login.aspx");
        }


        if (!Page.IsPostBack)
        {
            this.txtOldPwd.Text = "";
            if (Session["AdminName"] == null || Session["AdminName"].ToString() == "")
            {
                // Response.Redirect("../Login.aspx");
                //Response.Write("<script>parent.location.href='../Login.aspx';</script>");
            }
            else
            {
                this.lblName.Text = Session["AdminName"].ToString();
            }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (Session["AdminName"] != null && Session["AdminName"].ToString() != "")
        {
            string name = Session["AdminName"].ToString();
            string oldpwd = SqlHelper.FindString("select AdminPwd from Admin where AdminName='" + name.ToString() + "'");

            if (oldpwd.ToString() == this.txtOldPwd.Text.ToString())
            {
                try
                {
                    string newpwd = this.txtRPwd.Text.ToString();

                    string sql = string.Format("update [Admin] set AdminPwd='{0}' where AdminName='{1}'", newpwd.ToString(), name.ToString());
                    int flag = SqlHelper.ExecuteNonQuery(sql);
                    if (flag == -1)
                    {
                        Response.Write("<script language='javascript'>alert('修改失败!');</script>");
                    }
                    else
                    {
                        Session["AdminName"] = name.ToString();
                        Session["AdminPwd"] = txtRPwd.Text.ToString();
                        Response.Write("<script language='javascript'>alert('修改成功!');window.location='UpdatePwd.aspx';</script>");
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("<script language='javascript'>alert('修改失败!');</script>");
                }
                finally
                {
                }
            }
            else
            {
                Response.Write("<script language='javascript'>alert('原密码错误!');</script>");
            }
        }
    }
}