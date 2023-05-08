using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static wellweb.Models.CommonFn;

namespace wellweb.admin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Email = email.Value.Trim();
            string Password = password.Value.Trim();
            
            if (Email=="Admin@gmail.com" && Password=="admin")
            {
                Session["admin"] = Email;
                Response.Redirect("Dashboard.aspx");

            }
            else
            {
                lblMsg.Text = "Login Failed";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }



        }
    }
}