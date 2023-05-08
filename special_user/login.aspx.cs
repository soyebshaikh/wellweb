using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static wellweb.Models.CommonFn;

namespace wellweb.special_user
{
    public partial class login : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Email = email.Value.Trim();
            string Pass = pass.Value.Trim();
            StringBuilder sb=  new StringBuilder();
            StringBuilder sb1 = new StringBuilder();
            DataTable dt = fn.Fetch("select * from user where email='" + Email + "' and pass='" + Pass + "'");
            if (dt.Rows.Count > 0)
            {
                /*String id = RowNotInTableException[]*/
                foreach (DataRow row in dt.Rows)
                {
                    sb.Append(row["id"].ToString());
                    sb1.Append(row["name"].ToString());
                }
                string result = sb.ToString();
                string name = sb1.ToString();
                Session["id"] = result;
                Session["name"] = name;
                Response.Redirect("./pages/index.aspx");

            }
            else
            {
                Label1.Text = "Login Failed";
                Label1.ForeColor = System.Drawing.Color.Red;


            }

        }
    }
}