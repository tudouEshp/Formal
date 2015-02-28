using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace 土豆购物
{
    /// <summary>
    /// Detials 的摘要说明
    /// </summary>
    public class Detials : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            string proid = context.Request.QueryString["ProID"];
           
            DataTable dt = SqlHelper.ExecuteDataTable("select * from t_Products where ProID = @ProID"
                                                        , new SqlParameter("@ProID", proid));
            if (dt.Rows.Count != 0)
            {
                var data = new { Product = dt.Rows[0] };
                string hmtl = CommandHelper.RenderHtml("Front/Detials.html", data);
                context.Response.Write(hmtl);
            }
            else
            {
                context.Response.Redirect("templates/Front/404.html");
            }
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