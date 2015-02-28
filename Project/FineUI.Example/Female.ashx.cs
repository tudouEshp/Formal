using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace 土豆购物
{
    /// <summary>
    /// Female 的摘要说明
    /// </summary>
    public class Female : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
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