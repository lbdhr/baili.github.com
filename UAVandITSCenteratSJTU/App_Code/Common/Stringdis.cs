using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;


/// <summary>
/// Stringdis 的摘要说明
/// </summary>

public class Stringdis
{
    public string chkstr;

    public Stringdis()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 过滤标记
    /// </summary>
    /// <param name="NoHTML">包括HTML，脚本，数据库关键字，特殊字符的源码 </param>
    /// <returns>已经去除标记后的文字</returns>
    public static string NoHTML(string Htmlstring)
    {
        if (Htmlstring == null)
        {
            return "";
        }
        else
        {
            //删除脚本
            Htmlstring = Regex.Replace(Htmlstring, @"<script[^>]*?>.*?</script>", "", RegexOptions.IgnoreCase);
            //删除HTML
            //Htmlstring = Regex.Replace(Htmlstring, @"<(.[^>]*)>", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"([\r\n])[\s]+", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"-->", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"<!--.*", "", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(quot|#34);", "\"", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(amp|#38);", "&", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(lt|#60);", "<", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(gt|#62);", ">", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(nbsp|#160);", " ", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(iexcl|#161);", "\xa1", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(cent|#162);", "\xa2", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(pound|#163);", "\xa3", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(copy|#169);", "\xa9", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&#(\d+);", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, "xp_cmdshell", "", RegexOptions.IgnoreCase);

            //删除与数据库相关的词 
            //Htmlstring = Regex.Replace(Htmlstring, "select", "", RegexOptions.IgnoreCase);
            //Htmlstring = Regex.Replace(Htmlstring, "insert", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, "delete from", "", RegexOptions.IgnoreCase);
            //Htmlstring = Regex.Replace(Htmlstring, "count''", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, "drop table", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, "truncate", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, "asc", "", RegexOptions.IgnoreCase);
            //Htmlstring = Regex.Replace(Htmlstring, "mid", "", RegexOptions.IgnoreCase);
            //Htmlstring = Regex.Replace(Htmlstring, "char", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, "xp_cmdshell", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, "exec master", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, "net localgroup administrators", "", RegexOptions.IgnoreCase);
            //Htmlstring = Regex.Replace(Htmlstring, "and", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, "net user", "", RegexOptions.IgnoreCase);
            //Htmlstring = Regex.Replace(Htmlstring, "or", "", RegexOptions.IgnoreCase);
            //Htmlstring = Regex.Replace(Htmlstring, "net", "", RegexOptions.IgnoreCase);
            //Htmlstring =  Regex.Replace(Htmlstring,"*", "", RegexOptions.IgnoreCase);
            //Htmlstring =  Regex.Replace(Htmlstring,"-", "", RegexOptions.IgnoreCase);
            //Htmlstring = Regex.Replace(Htmlstring, "delete", "", RegexOptions.IgnoreCase);
            //Htmlstring = Regex.Replace(Htmlstring, "drop", "", RegexOptions.IgnoreCase);
            //Htmlstring = Regex.Replace(Htmlstring, "script", "", RegexOptions.IgnoreCase);

            //特殊的字符
            //Htmlstring = Htmlstring.Replace("<", "");
            //Htmlstring = Htmlstring.Replace(">", "");
            Htmlstring = Htmlstring.Replace("*", "");
            //Htmlstring = Htmlstring.Replace("-", "");
            //Htmlstring = Htmlstring.Replace("?", "");
            //Htmlstring = Htmlstring.Replace(",", "");
            //Htmlstring = Htmlstring.Replace("/", "");
            Htmlstring = Htmlstring.Replace(";", "");
            Htmlstring = Htmlstring.Replace("*/", "");
            Htmlstring = Htmlstring.Replace("\r\n", "");
            Htmlstring = HttpContext.Current.Server.HtmlEncode(Htmlstring).Trim();

            return Htmlstring;
        }
    }
    /// <summary>
    /// 字符串处理
    /// </summary>
    /// <returns></returns>
    public static string newstr(string str)
    {

        //过滤or,and ',&,+,,,'',
        String nstr = str.Replace("'", "").Replace("&", "").Replace("'", "").Replace("/", "").Replace("\\", "");
        return nstr;
    }
    /// <summary>
    /// 链接字符串处理
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public static string newstrLJ(string str)
    {

        //过滤or,and ',&,+,,,'',
        String nstr = str.Replace("'", "").Replace("&", "").Replace("'", "").Replace("\\", "");
        return nstr;
    }
    /// <summary>
    /// 截取字符串
    /// </summary>
    /// <param name="str"></param>
    /// <param name="num"></param>
    /// <returns></returns>
    public static string newstr(string str, int num)
    {
        string str1 = "";
        if (str.Length < num)
        {
            str1 = str;
        }
        else
        {
            str1 = str.Substring(0, num);
        }
        return str1;
    }

    public class Global
    {
        public static int globalVariable = 1;
    }

    /// <summary>
    /// 返回的数组
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public static string[] ret_Power(string str)
    {
        string[] Dic = str.Split('|');

        return Dic;
    }

    /// <summary>
    /// 检查是否登陆；
    /// </summary>

    public static bool Exec_check()
    {


        if (System.Web.HttpContext.Current.Session["YX_Admin"] == null)
        {
            // System.Web.HttpContext.Current
            return true;
        }
        else
        {

            return false;
        }


    }
    /// <summary>
    /// 设置，检查是否登陆
    /// </summary>
    public string check_string
    {

        get
        {
            return chkstr;

        }
        set
        {

            chkstr = value;
        }

    }


    /// <summary>
    /// 清除session的值
    /// </summary>
    public void DropSession()
    {

        HttpContext.Current.Session["YX_Admin"] = null;
        HttpContext.Current.Session["YX_Diction"] = null;


    }
    /// <summary>
    /// 处理时间函数
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public static string strtime(DateTime str)
    {
        string strtime;
        strtime = str.Year + "-" + str.Month + "-" + str.Day;
        return strtime;

    }


    /// <summary>
    /// 检查是否是数字
    /// true表示是数字，false表示否
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>

    public static bool RteNum(string str)
    {
        if (str == "" || str == null)
        {

            return false;

        }
        else
        {

            System.Text.RegularExpressions.Regex reg1 = new System.Text.RegularExpressions.Regex(@"^[-]?\d+[.]?\d*$");

            return reg1.IsMatch(str);
        }


    }
    /// <summary>
    /// 检查数字．没有返回值
    /// </summary>
    /// <param name="id"></param>
    public static void Check_num(string id)
    {
        if (!RteNum(id))
        {

            HttpContext.Current.Response.Write("<script>alert(\"请不要输入非法字符！\");history.back()</script>");
            HttpContext.Current.Response.End();
        }


    }
    /// <summary>
    ///检查字符串，看有没有非发字符不允许输入已|分割
    /// 
    /// 
    ///
    /// </summary>
    public static void check_str(string str)
    {
        string Illegal_Str = ",|&|+|'|\"|or|";
        string[] newstr = Illegal_Str.Split('|');
        for (int i = 0; i < (newstr.Length - 1); i++)
        {
            if (str.IndexOf(newstr[i]) != -1)
            {

                System.Web.HttpContext.Current.Response.Write("<script>alert('含有非法字符！');history.back()</script>");

            }
        }
    }
    /// <summary>
    /// 过滤内容中的'，"，+为全角
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public static string Nostr(string str)
    {
        String nstr = str.Replace("'", "＇").Replace("+", "＋").Replace("\"", "＂");
        return nstr;
    }
    /// <summary>
    /// 提示错误信息！操作回滚！
    /// </summary>
    /// <param name="msg"></param>
    /// <param name="code"></param>
    public static void Show_Msg(string msg)
    {

        HttpContext.Current.Response.Write("<script>alert(\"" + msg + "\");history.back();</script>");
        HttpContext.Current.Response.End();

    }
    public static void Show_Str(string msg)
    {

        HttpContext.Current.Response.Write("<script>alert(\"" + msg + "\");</script>");
        HttpContext.Current.Response.End();

    }
    /// <summary>
    /// 提示成功信息！转向！
    /// </summary>
    /// <param name="msg"></param>
    /// <param name="url"></param>
    public static void Show_Msg(string msg, string url)
    {


        HttpContext.Current.Response.Write("<script>alert(\"" + msg + "\");location.href='" + url + "';</script>");

    }


}
