using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Viewer_search_hotels : System.Web.UI.Page
{
    Dbacess d1 = new Dbacess();
    protected void Page_Load(object sender, EventArgs e)
    {
        d1.con.Open();
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tbl_hotels where hotelname='" + DropDownList2.SelectedValue.ToString() + "';",d1.con);

        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            Label1.Text = "HOTEL_ID   :" +reader.GetValue(0).ToString();
            Label2.Text = "HOTEL NAME :" +reader.GetString(1);
            Label3.Text = "ADDRESS    :" +reader.GetString(2);
            Label4.Text = "PLACE      :" +reader.GetString(3);
            Label5.Text = "PHONE      :" +reader.GetValue(4).ToString();
            Label6.Text = "MAIL       :" +reader.GetString(5);
            Label7.Text = "WEBSITE    :" +reader.GetString(6);

        }
        d1.con.Close();
    }
}