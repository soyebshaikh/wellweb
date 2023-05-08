using Google.Protobuf.WellKnownTypes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static wellweb.Models.CommonFn;

namespace wellweb.special_user.pages
{
    public partial class donator : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        private string myValue;
        private string res;

        protected void Page_Load(object sender, EventArgs e)
        {
            myValue = Request.QueryString["id"];
            res = Session["id"].ToString();

            if (!string.IsNullOrEmpty(myValue))
            {
                
            }

        }


        protected void Button_Click(object sender, EventArgs e)
        {

          
            string medName = medname.Value.Trim();
            string expdates = expdate.Value.Trim();
            string categorys = cname.Value.Trim();
           
            int p = int.Parse(myValue);
            int c = int.Parse(res);

            string query = "INSERT INTO donatmed (medname,catogary,expdate,user_iid,ngo_id)VALUES( '"+ medName + "','" + categorys + "','" +  expdates + "','"+ c+"','"+p+"')";

            DataTable dt = fn.Fetch(query);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Donation Success..');window.location = 'donator.aspx';</script>");


            }
            else
            {
                Response.Write("<script>alert('Donation Success.');window.location = 'index.aspx';</script>");


            }

        }
    }
}