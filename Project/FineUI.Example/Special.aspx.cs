using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FineUI.Examples;
using EShop.BLL;
using 土豆购物;

namespace EShop
{
    public partial class Special : PageBase
    {
        public long type
        {
            get
            {
                return Convert.ToInt64(Request.QueryString["tid"]);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Bind();
        }
        protected void Bind()
        {
            
            BLL.T_Products probll = new T_Products ();
            string condition = "CTID in (select CTID from T_CType where TID= "+type+" )";
            int totalcount = Convert.ToInt32(SqlHelper.ExecuteScalar("select count(1) from t_products where "+condition));
            int size = 12;
            int pageIndex = 1;
            int PageCount =(int) Math.Ceiling(totalcount / Convert.ToDouble(size));
            if(!string.IsNullOrEmpty(Request.QueryString["p"]))
            {
                pageIndex = Convert.ToInt32(Request.QueryString["p"]);
            }
            SetPage(pageIndex, PageCount);
            rptProducts.DataSource = probll.GetListByPage(condition, "", (pageIndex - 1) * size + 1, pageIndex * size);
            rptType.DataSource = SqlHelper.ExecuteDataTable("select * from t_ctype where tid = "+type );
            rptProducts.DataBind();
            rptType.DataBind();
        }

        #region 分页
        private void SetPage(int PageIndex, int pagecount)
        {

            ltlPage.Text = "<ul>";
            if (PageIndex != 1)
            {
                ltlPage.Text += "<li class='prev'><a href='special.aspx?tid=" + type + "&p=" + (PageIndex - 1) + "'><span>&#8592;</span></a></li>";
            }
            for (int i = 1; i < pagecount + 1; i++)
            {
                if (i == PageIndex)
                {
                    ltlPage.Text += "<li class='curent'><a href='special.aspx?tid=" + type + "&p=" + i + "'>" + i.ToString() + "</a></li>";
                }
                else
                {
                    ltlPage.Text += "<li><a href='special.aspx?tid=" + type + "&p=" + i + "'>" + i.ToString() + "</a></li>";
                }
            }
            if (PageIndex != pagecount)
            {
                ltlPage.Text += "<li class='next'><a href='special.aspx?tid="+type+"&p=" + (PageIndex + 1) + "'>&#8594;</a></li>";
            }
            ltlPage.Text += "</ul>";

        }
        #endregion

    }
}