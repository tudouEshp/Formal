﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using 土豆购物;

namespace EShop
{
    /// <summary>
    /// CheckOut 的摘要说明
    /// </summary>
    public class CheckOut : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";

            string html = CommandHelper.RenderHtml("Front/CheckOut.html", null);
            context.Response.Write(html);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}