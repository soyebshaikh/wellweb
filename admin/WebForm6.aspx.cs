using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using wellweb.Models;

namespace wellweb.admin
{
    public partial class WebForm6 : System.Web.UI.Page
    {
       
        //private DatabaseConnection db = new DatabaseConnection();

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        BindData();
        //    }
        //}

        //protected void BindData()
        //{
        //    GridView1.DataSource = db.GetData();
        //    GridView1.DataBind();
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
           
        //}
        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //    BindData();
        //}

        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
        //    string name = e.NewValues["name"].ToString();
        //    string email = e.NewValues["email"].ToString();
        //    string pno = e.NewValues["pno"].ToString();
        //    string address = e.NewValues["address"].ToString();

        //    db.UpdateData(id, name, email,pno,address);

        //    GridView1.EditIndex = -1;
        //    BindData();
        //}

        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
        //    db.DeleteData(id);

        //    BindData();
        //}
    }
}