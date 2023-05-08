using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static wellweb.Models.CommonFn;
using System.Data;
using System.Text;

namespace wellweb.Donation
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender,EventArgs e)
        {
            string Email = email.Value.Trim();
            string Password = password.Value.Trim();
            StringBuilder sb = new StringBuilder();
            StringBuilder sb1 = new StringBuilder();
            DataTable dt = fn.Fetch("select * from ngo where nemail='" + Email + "'and pass='" + Password + "'");
            if(dt.Rows.Count>0)
            {
                Session["user"] = Email;

                /*String id = RowNotInTableException[]*/
                foreach (DataRow row in dt.Rows)
                {
                    sb.Append(row["id"].ToString());
                    sb1.Append(row["ngoname"].ToString());
                }
                string result = sb.ToString();
                string name=sb1.ToString();
                Session["id"] = result;
                Session["name"] = name; 
                Response.Redirect("home.aspx");
                

            }
            else
            {
                lblMsg.Text = "Login Failed";
                lblMsg.ForeColor=System.Drawing.Color.Red;
            }


        }
       

    }
}