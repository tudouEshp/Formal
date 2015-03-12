using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using EShop.Model;
using EShop.BLL;
using EShop;

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
            DataTable Eps = SqlHelper.ExecuteDataTable("select top 3 * from T_Products where CTID =7 order by ShelveDate");
            DataTable logos = SqlHelper.ExecuteDataTable("select top 16 * from T_Products t left join T_Brand b  on t.BraID = b.BraID where CTID in (7,8,9)");

            var data = new { Eps = Eps.Rows, Logos = logos.Rows };
            string html = CommandHelper.RenderHtml("Front/Electronic.html", data);
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