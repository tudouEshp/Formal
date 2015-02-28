using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace 土豆购物
{
    /// <summary>
    /// Luxury 的摘要说明
    /// </summary>
    public class Luxury : IHttpHandler
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