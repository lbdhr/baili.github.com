using System;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
///CreatGraphicValidateNo 提供图片验证码的接口
/// </summary>
public class CreatGraphicValidateNo
{
    private static string code;
    public CreatGraphicValidateNo()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public static String Create(Page p)
    {
        ValidateNumber VldNo = new ValidateNumber();
        code = VldNo.CreateValidateNumber(4);
        VldNo.CreateValidateGraphic(p, code);
        return code;
    }
    public static String Code
    {
        get
        {
            return code;
        }
    }

}