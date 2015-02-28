using EShop.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using 土豆购物;

namespace EShop
{
    /// <summary>
    /// ShoppintCart 的摘要说明
    /// </summary>
    public class ShoppintCart : IHttpHandler,IRequiresSessionState
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            int size = 5;
            int PageNum = 1;
            int totalcount;
            if (context.Request.QueryString["p"] != null)
            {
                PageNum = Convert.ToInt32(context.Request.QueryString["p"]);
            }
            int quantity = Convert.ToInt32(context.Request["quantity"]);
            
            //if (context.Session["LoginUser"] != null)
            //{
                //string loginID = context.Session["LoginUser"].ToString();
            string loginID = "1";
                totalcount = (int)SqlHelper.ExecuteScalar("select COUNT(*) from T_Cart where UserID=@userid ",new SqlParameter("@userid",loginID));
                int pagecount = (int)Math.Ceiling(totalcount /Convert.ToDouble(size));
                object[] pageData = new object[pagecount];
                for( int i = 0 ; i<pagecount ; i++)
                {
                    pageData[i] = new { Href = "ShoppingCart.ashx?p=" + (i + 1), Title = i + 1 };
                }
                DataTable products = SqlHelper.ExecuteDataTable(@"select * from (	
                                                                select c.Userid as UserID, Quantity,ProName,Price,Img ,ROW_NUMBER() over (order by p.ProID asc) as num
                                                                from t_Cart c left join T_Products p on c.ProID=p.ProID )as s  
                                                                where  UserID= @UserId and s.num between @Start and @End"
                                                            , new SqlParameter("@UserId", loginID)
                                                            , new SqlParameter("@Start",(PageNum - 1) * size + 1)
                                                            , new SqlParameter("@End",PageNum*size));
                var data = new { Products = products.Rows,PageData = pageData,PageNum = PageNum,PageCount = pagecount };
                string html = CommandHelper.RenderHtml("Front/ShoppingCart.html", data);
                context.Response.Write(html);

            //}
            //else
            //{
            //    context.Response.Write("请先登陆");
            //}
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