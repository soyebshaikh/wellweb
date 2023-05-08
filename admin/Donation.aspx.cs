using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static wellweb.Models.CommonFn;

namespace wellweb.admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDR();

            }

        }
        private void GetDR()
        {

            DataTable dt = fn.Fetch("select donatmed.id, user.name,user.pno,user.email,donatmed.medname,donatmed.catogary,donatmed.expdate,ngo.ngoname,ngo.nemail,ngo.ppno,ngo.des from donatmed,user,ngo where user.id=donatmed.user_iid AND ngo.id=donatmed.ngo_id ");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void NewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewCustomer.aspx");
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetDR();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetDR();
        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {


            string query = "UPDATE sellmed SET name=@name, address=@Address, email=@email, pno=@pno WHERE id=@id;";
            using (MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", value: e.NewValues["name"]);
                cmd.Parameters.AddWithValue("@Address", e.NewValues["address"]);
                cmd.Parameters.AddWithValue("@email", e.NewValues["email"]);
                cmd.Parameters.AddWithValue("@pno", e.NewValues["pno"]);

                cmd.Parameters.AddWithValue("@id", e.Keys["id"]);
                cmd.ExecuteNonQuery();

            }
            GridView1.EditIndex = -1;
            GetDR();
        }

        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    // Get the updated values for each field from the GridView row
        //    string name = e.NewValues["name"].ToString();
        //    string address = e.NewValues["address"].ToString();
        //    string email = e.NewValues["email"].ToString();
        //    string pno = e.NewValues["pno"].ToString();

        //    // Get the id of the row being updated
        //    int id = Convert.ToInt32(e.Keys["id"]);
        //    int id1 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["id"]);


        //    // Define the parameterized SQL query
        //    string query = "UPDATE user SET name=@name, address=@address, email=@email, pno=@pno WHERE id=@id;";

        //    // Create a SqlConnection object to connect to the database
        //    string connectionString = ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString;
        //    SqlConnection connection = new SqlConnection(connectionString);

        //    // Create a SqlCommand object to execute the SQL query
        //    SqlCommand command = new SqlCommand(query, connection);

        //    // Add parameters to the SqlCommand object
        //    command.Parameters.AddWithValue("@name", name);
        //    command.Parameters.AddWithValue("@address", address);
        //    command.Parameters.AddWithValue("@email", email);
        //    command.Parameters.AddWithValue("@pno", pno);
        //    command.Parameters.AddWithValue("@id", id);

        //    // Open the database connection
        //    connection.Open();

        //    // Execute the SQL query
        //    command.ExecuteNonQuery();

        //    // Close the database connection
        //    connection.Close();

        //    // Refresh the GridView to show the updated data
        //    GridView1.DataBind();
        //}




        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            /*  string connectionString = "Data Source=myServerAddress;Initial Catalog=myDataBase;User ID=root;Password=Soyeb@2001;";
              string query = "DELETE FROM Customers WHERE id=@id;";
              using (SqlConnection connection = new SqlConnection(connectionString))
              {
                  SqlCommand command = new SqlCommand(query, connection);
                  command.Parameters.AddWithValue("@id", e.Keys["id"]);
                  connection.Open();
                  command.ExecuteNonQuery();
              }
              GetDR();*/

            string query = "DELETE FROM donatmed WHERE id=@id;";
            using (MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);


                cmd.Parameters.AddWithValue("@id", e.Keys["id"]);
                cmd.ExecuteNonQuery();

            }

            GetDR();
        }

    }
}