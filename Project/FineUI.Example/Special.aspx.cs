using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FineUI.Examples;
using EShop.BLL;

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
            rptProducts.DataSource = probll.GetListByPage(condition, "", 1, 12);
            rptProducts.DataBind();
        }
    }
}