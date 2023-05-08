using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wellweb.admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        private string res;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                res = Session["admin"].ToString();

                if (!string.IsNullOrEmpty(res))
                {
                   
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }

        }
    }
}