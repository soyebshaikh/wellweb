using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static wellweb.Models.CommonFn;

namespace wellweb.seller
{
    public partial class shopregistration : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string name = unameid.Value.Trim();
            string email = uemailid.Value.Trim();
            string add = uaddressid.Value.Trim();
            string pass = upasswordid.Value.Trim();
            string contact = ucontactid.Value.Trim();

            DataTable dt = fn.Fetch("INSERT INTO shop(shopname,semail,phon,address,pass)VALUES('" + name + "', '" + email + "', '" + contact + "', '" + add + "', '" + pass + "')");
            if (dt.Rows.Count > 0)
            {


                Response.Write("<script>alert('Faild..');window.location = 'userregistration.aspx';</script>");

            }
            else
            {

                Response.Write("<script>alert('Account Created..');window.location = './pages/index.aspx';</script>");

            }

        }
    }
}