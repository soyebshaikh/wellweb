using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace wellweb.Models
{
    public class DatabaseConnection
    {
        //MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString);
        //private MySqlConnection GetCon()
        //{
        //    return conn;
        //}
        //public DataTable GetData()
        //{
        //    DataTable dt = new DataTable();

        //    conn.Open();

        //    SqlCommand cmd = new SqlCommand("SELECT * FROM user", GetCon());
        //    SqlDataReader reader = cmd.ExecuteReader();

        //    dt.Load(reader);

        //    conn.Close();

        //    return dt;
        //}

        //public void InsertData(string name, string email,String pno,String address)
        //{
        //    conn.Open();

        //    SqlCommand cmd = new SqlCommand("INSERT INTO user (name, email,pno,address) VALUES (@Name, @Email,@pno,@address)", conn);
        //    cmd.Parameters.AddWithValue("@Name", name);
        //    cmd.Parameters.AddWithValue("@Email", email);
        //    cmd.Parameters.AddWithValue("@pno", pno);
        //    cmd.Parameters.AddWithValue("@address", address);
        //    cmd.ExecuteNonQuery();

        //    conn.Close();
        //}

        //public void UpdateData(int id, string name, string email,String pno,string address)
        //{
        //    conn.Open();

        //    SqlCommand cmd = new SqlCommand("UPDATE user SET name = @Name, email = @Email, pno=@pno,address=@address WHERE Id = @Id");
        //    cmd.Connection = conn;
        //    cmd.Parameters.AddWithValue("@Name", name);
        //    cmd.Parameters.AddWithValue("@Email", email);
        //    cmd.Parameters.AddWithValue("@pno", pno);
        //    cmd.Parameters.AddWithValue("@address", address);
        //    cmd.Parameters.AddWithValue("@Id", id);
        //    cmd.ExecuteNonQuery();

        //    conn.Close();
        //}

        //public void DeleteData(int id)
        //{
        //    conn.Open();

        //    SqlCommand cmd = new SqlCommand("DELETE FROM user WHERE Id = @Id", conn);
        //    cmd.Parameters.AddWithValue("@Id", id);
        //    cmd.ExecuteNonQuery();

        //    conn.Close();
        //}
    }
}