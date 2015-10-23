using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Configuration;
public class Dbacess
{


   // public SqlConnection con = new SqlConnection(WebConfigurationManager.AppSettings["connect"]);
    public SqlConnection con = new SqlConnection("Data Source='SoorajDev\\SQLEXPRESS';AttachDbFilename=E:\\indu.MDF;Integrated Security=True;");
    public int InsertData(string sql)
    {
        SqlCommand com = new SqlCommand(sql, con);
        con.Open();
        int i = com.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public DataTable GetData(string sql)
    {
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        return dt;

    }
    public int Updatedata(string sql)
    {
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        int b = cmd.ExecuteNonQuery();
        con.Close();
        return b;
    }

    public int Deletedata(string sql)
    {
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        int c = cmd.ExecuteNonQuery();
        con.Close();
        return c;
    }
}
