using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static wellweb.Models.CommonFn;

namespace wellweb.Donation
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string Email = logemail.Value.Trim();
            string Password = logpass.Value.Trim();
            string Cpassword = logpass1.Value.Trim();
            string Pno = pno.Value.Trim();
            string Des = logdes.Value.Trim();
            string name = logname.Value.Trim();


            if (Password == Cpassword)
            {
                String query = "insert into ngo (ngoname,nemail,ppno,des,pass) values('" + name + "','" + Email + "','" + Pno + "','" + Des + "','" + Password + "')";
                fn.Query(query);
               
                Response.Redirect("Login.aspx");
                
            }
            else
            {
                lblMsg1.Text = "Registration Failed";
                lblMsg1.ForeColor = System.Drawing.Color.Red;
            }



        }
    }
}