﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Configuration;

/// <summary>
///Common 的摘要说明
/// </summary>
public class Common
{

    public Common()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public string GetConnectionStr()
    {
        return ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    }

}