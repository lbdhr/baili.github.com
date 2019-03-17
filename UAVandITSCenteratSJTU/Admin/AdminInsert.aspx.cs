using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null || Session["AdminName"] == "")
        {
            Response.Redirect("../Login.aspx");
        }

    }
    string type;
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string name = this.txtName.Text.ToString();
        string pwd = this.txtRPwd.Text.ToString();
        string org = this.DropDownList1.Text.ToString();
        if (this.DropDownList1.Text.ToString() == "管理员")
        {
            type = "1";
        }
        else
        {
            type = "2";
        }

        //if
        try
        {
            if (!IsHere(name))
            {
                string insertcmd = "INSERT INTO [Admin](AdminName,AdminPwd,AdminOrg,AdminType) VALUES ('"
                + name.ToString() + "','" + pwd.ToString() + "','" + org.ToString() + "','" + type.ToString() + "')";
                int flag = SqlHelper.ExecuteNonQuery(insertcmd);
                if (flag == -1)
                {
                    Stringdis.Show_Msg("添加管理员失败！");
                }
                else
                {
                    //Stringdis.Show_Msg("新闻发布成功！");
                    string ss = "<script language=javaScript>alert('添加管理员成功！');window.location='AdminManage.aspx';</script>";
                    Response.Write(ss);
                }

            }
            else
            {
                Response.Write("<script language=javaScript>alert('添加管理员失败！');</script>");
            }
        }
        catch
        {
            Response.Write("<script language=javaScript>alert('添加管理员失败！');</script>");
        }
        finally
        { }
    }
    protected void txtName_TextChanged1(object sender, EventArgs e)
    {
        string name = this.txtName.Text.ToString();
        if (IsHere(name))
        {
            this.lblMsg.Text = "用户名已存在，请更改！";
        }
        else
        {
            this.lblMsg.Text = "用户名可用！";
        }
    }

    protected bool IsHere(string name)
    {
        string str = "select top 1 [ID] from [Admin] where [Admin].[AdminName] = '" + name.ToString() + "'";
        string nn = SqlHelper.FindString(str);
        //获取sql返回值
        //int a = Convert.ToInt32(dt.Rows[0][0]);
        if (nn == null || nn == "")
        {
            return false;//不存在
        }
        else
        {
            return true;//存在
        }
    }
}
