using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using static wellweb.Models.CommonFn;

namespace wellweb.Donation
{
    public partial class WebForm6 : System.Web.UI.Page
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

            DataTable dt = fn.Fetch("select user.name,user.pno,user.email,donatmed.medname,donatmed.catogary,donatmed.expdate from donatmed,user,ngo where user.id=donatmed.user_iid AND ngo.id=donatmed.ngo_id AND ngo.id='"+c+"'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
       
    
    }

}