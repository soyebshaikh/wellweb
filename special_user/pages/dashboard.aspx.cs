using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static wellweb.Models.CommonFn;

namespace wellweb.special_user.pages
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


            DataTable dt = fn.Fetch("select donatmed.id, user.name,user.pno,user.email,donatmed.medname,donatmed.catogary,donatmed.expdate,ngo.ngoname,ngo.nemail,ngo.ppno,ngo.des from donatmed,user,ngo where user.id=donatmed.user_iid AND ngo.id=donatmed.ngo_id AND user_iid='"+c+"'");
            GridView1.DataSource = dt;
            GridView1.DataBind();

            DataTable dt1 = fn.Fetch("select sellmed.id, user.name,user.pno,user.email,sellmed.medname,sellmed.catogary,sellmed.expdate,shop.shopname,shop.semail,shop.phon,shop.address from sellmed,user,shop where user.id=sellmed.user_id AND shop.id=sellmed.shop_id AND user_id='" + c + "'");
            GridView2.DataSource = dt1;
            GridView2.DataBind();
        }
    }
}