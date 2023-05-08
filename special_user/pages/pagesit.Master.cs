using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wellweb.special_user.pages
{
    public partial class pagesit : System.Web.UI.MasterPage
    {
        private string res;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                res = Session["name"].ToString();

                if (!string.IsNullOrEmpty(res))
                {
                    Label1.Text = "Wlcome: " + res;
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}