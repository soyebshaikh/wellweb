using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using static wellweb.Models.CommonFn;

namespace wellweb.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {
            Getdr();
        }

        protected void Getdr()
        {


            DataTable dt = fn.Fetch("select count(*) from donatmed");
            StringBuilder sb = new StringBuilder();

            foreach (DataRow row in dt.Rows)
            {
                sb.Append(row["count(*)"].ToString()); // Replace "ColumnName" with the name of the column you want to retrieve
            }

            string result = sb.ToString();
            Label1.Text = result;
            Label1.ForeColor = System.Drawing.Color.Black;
 
            DataTable dt1 = fn.Fetch("select count(*) from user");
            StringBuilder sb1 = new StringBuilder();

            foreach (DataRow row in dt1.Rows)
            {
                sb1.Append(row["count(*)"].ToString()); // Replace "ColumnName" with the name of the column you want to retrieve
            }

            string result1= sb1.ToString();
            Label2.Text = result1;
            Label2.ForeColor = System.Drawing.Color.Black;



        }


    }
}