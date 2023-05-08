using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static wellweb.Models.CommonFn;

namespace wellweb.seller.pages
{
    public partial class dashboard : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        private string res;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDR();

            }

        }
        private void GetDR()
        {
            res = Session["id"].ToString();
            int c = int.Parse(res);


            DataTable dt = fn.Fetch("select sellmed.id, user.name,user.pno,user.email,sellmed.medname,sellmed.catogary,sellmed.expdate from sellmed,user,shop where user.id=sellmed.user_id AND shop.id=sellmed.shop_id AND user_id='" + c + "'");
            GridView1.DataSource = dt;
            GridView1.DataBind();

                
        }
    }
}