using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con = new SqlConnection();
    public Class1()
    {
        con.ConnectionString = "Data Source=DESKTOP-E9G9T49;Initial Catalog=Ecommerce;Integrated Security=True";
    }
    public int insert(string str)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        int res = cmd.ExecuteNonQuery();
        con.Close();
        return res;

    }
    public DataTable select(string str)
    {
        con.Open();
        SqlDataAdapter sdn = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        sdn.Fill(dt);
        con.Close();
        return dt;
    }
}