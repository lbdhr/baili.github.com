using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Index_Left : System.Web.UI.Page
{
    protected string javascript;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["AdminName"] == null || Session["AdminName"].ToString() == "")
            {
                Response.Write("<script>parent.location.href='../../Login.aspx';</script>");
                javascript = "";
            }
            else
            {
                javascript = "";
                string javascriptstart = string.Format("<script type='{0}' language='{1}'>   var tree = null; var root = new TreeNode('系统菜单');", "text/javascript", "javascript");
                string javascriptstop = "  tree = new Tree(root); tree.show('menuTree') </script>";
                string shetuan = " var fun111 = new TreeNode('社团信息管理'); var fun112 = new TreeNode('组织Logo', '../OrgLogo.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun112); var fun112 = new TreeNode('组织简介', '../ServiceYong.aspx?type=OrgIntro', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun112); var fun113 = new TreeNode('组织结构', '../ServiceYong.aspx?type=OrgOrg', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun113); var fun114 = new TreeNode('部门职能', '../ServiceYong.aspx?type=OrgFuction', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun114); var fun112 = new TreeNode('委员名单', '../ServiceYong.aspx?type=OrgNumbers', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun112);  var fun115 = new TreeNode('公告信息'); fun111.add(fun115); var fun1151 = new TreeNode('公告信息发布', '../NewsRelease.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun115.add(fun1151); var fun1152 = new TreeNode('公告信息管理', '../NewsReleaseManage.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun115.add(fun1152); root.add(fun111);";
                string zhuanghuguanli = "  var fun211 = new TreeNode('账户管理'); var fun221 = new TreeNode('修改密码', '../UpdatePwd.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun211.add(fun221); var fun231 = new TreeNode('退出系统', '../LogOut.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun211.add(fun231); root.add(fun211);";

                //管理员
                string shetuanadmin = " var fun111 = new TreeNode('研究所概况'); var fun112 = new TreeNode('研究所简介', '../ServiceYong.aspx?navid=1', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun112); var fun113 = new TreeNode('研究领域', '../ServiceYong.aspx?navid=2', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun113);   var fun115 = new TreeNode('科研队伍'); fun111.add(fun115); var fun1151 = new TreeNode('添加科研队伍', '../TeachersInfo.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun115.add(fun1151); var fun1152 = new TreeNode('管理科研队伍', '../TeachersInfoManage.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun115.add(fun1152);  var fun115 = new TreeNode('科研梯队'); fun111.add(fun115); var fun1151 = new TreeNode('添加科研梯队', '../StudentsInfo.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun115.add(fun1151); var fun1152 = new TreeNode('管理科研梯队', '../StudentsInfoManage.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun115.add(fun1152); root.add(fun111);";
                string flashadmin = "  var fun13 = new TreeNode('首页管理'); var fun14 = new TreeNode('Flash管理', '../FlashManage.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun13.add(fun14); var fun14 = new TreeNode('研究所简介', '../ServiceYong.aspx?navid=20', 'tree_node.gif', null, 'tree_node.gif', null); fun13.add(fun14); var fun14 = new TreeNode('招生信息', '../ServiceYong.aspx?navid=21', 'tree_node.gif', null, 'tree_node.gif', null); fun13.add(fun14); var fun14 = new TreeNode('科研项目', '../ServiceYong.aspx?navid=22', 'tree_node.gif', null, 'tree_node.gif', null); fun13.add(fun14); root.add(fun13);";
                string xitongguanliadmin = "   var fun621 = new TreeNode('系统管理'); var fun622 = new TreeNode('添加管理员', '../AdminInsert.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun621.add(fun622); var fun623 = new TreeNode('管理管理员', '../AdminManage.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun621.add(fun623); root.add(fun621);";
                string shetuanguanliadmin = "   var fun621 = new TreeNode('新闻公告'); var fun622 = new TreeNode('添加新闻公告', '../NewsReleaseAdmin.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun621.add(fun622); var fun623 = new TreeNode('管理新闻公告', '../NewsReleaseManageAdmin.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun621.add(fun623); root.add(fun621);";
                string yunyunadmin = "   var fun621 = new TreeNode('科研活动'); var fun622 = new TreeNode('科研项目', '../ServiceYong.aspx?navid=9', 'tree_node.gif', null, 'tree_node.gif', null); fun621.add(fun622); var fun623 = new TreeNode('学术活动', '../ServiceYong.aspx?navid=10', 'tree_node.gif', null, 'tree_node.gif', null); fun621.add(fun623); root.add(fun621);";
                string xueshenggongzuozuadmin = " var fun111 = new TreeNode('科研成果');  var fun112 = new TreeNode('学术论文', '../ServiceYong.aspx?navid=11', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun112);  var fun112 = new TreeNode('学位论文', '../ServiceYong.aspx?navid=12', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun112); var fun113 = new TreeNode('专著教材', '../ServiceYong.aspx?navid=13', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun113);   var fun113 = new TreeNode('精品课程', '../ServiceYong.aspx?navid=14', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun113);    root.add(fun111);";
                string zhaoshengxinxi = " var fun111 = new TreeNode('招生信息');  var fun113 = new TreeNode('报考指南', '../ServiceYong.aspx?navid=15', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun113); root.add(fun111);";
                string zhuanghuguanliadmin = "  var fun211 = new TreeNode('账户管理'); var fun221 = new TreeNode('修改密码', '../UpdatePwd.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun211.add(fun221); var fun231 = new TreeNode('退出系统', '../LogOut.aspx', 'tree_node.gif', null, 'tree_node.gif', null); fun211.add(fun231); root.add(fun211);";
                string guanyuwomen = " var fun111 = new TreeNode('关于我们');  var fun112 = new TreeNode('联系我们', '../ServiceYong.aspx?navid=16', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun112); var fun113 = new TreeNode('友情链接', '../ServiceYong.aspx?navid=17', 'tree_node.gif', null, 'tree_node.gif', null); fun111.add(fun113);     root.add(fun111);";
                string type = Session["AdminType"].ToString();

                string CommonAdmin = javascriptstart + shetuan + zhuanghuguanli + javascriptstop;
                string SuperAdmin = javascriptstart + flashadmin + shetuanadmin + shetuanguanliadmin + yunyunadmin + xueshenggongzuozuadmin + zhaoshengxinxi + guanyuwomen + xitongguanliadmin + zhuanghuguanliadmin + javascriptstop;

                if (type == "1")
                {
                    javascript = SuperAdmin;
                }
                if (type == "2")
                {
                    javascript = CommonAdmin;
                }
            }
        }
    }
}