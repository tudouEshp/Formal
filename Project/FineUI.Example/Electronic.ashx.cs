using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace 土豆购物
{
    /// <summary>
    /// Electronic 的摘要说明
    /// </summary>
    public class Electronic : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";

            string html = CommandHelper.RenderHtml("Front/Electronic.html", null);
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