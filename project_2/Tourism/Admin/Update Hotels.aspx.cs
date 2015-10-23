using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Hotels : System.Web.UI.Page
{
    Dbacess d1 = new Dbacess();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string uname = Session["username"].ToString();
            if (uname.Equals(""))
                Response.Redirect("../viewer/logn.aspx");
        }
        catch (Exception ex)
        {

            Response.Redirect("../viewer/logn.aspx");
        }

        if (!IsPostBack)
        {
            
         
            //   ddl1.Items.Insert(0, "_select_");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((TextBox1.Text.Equals(" ") || TextBox2.Text.Equals(" ") || TextBox4.Text.Equals(" ") || TextBox5.Text.Equals(" ") || TextBox6.Text.Equals(" ") || TextBox7.Text.Equals(" ")))
        {
            string sql = "update tbl_Hotels set hotelname='" + TextBox1.Text + "'," + " address='" + TextBox2.Text + "',place='" + TextBox7.Text + "',phone='" + TextBox4.Text + "',mail='" + TextBox5.Text + "',website='" + TextBox6.Text + "' where Hotel_id=" + DropDownList1.SelectedValue.ToString() + ")";
            int a = d1.InsertData(sql);
            if (a > 0)
            {
                Label1.Text = "Sucessfully Updated...";
            }
            else
            {
                Label1.Text = "Failed";
            }
        }
        else
        {
            Response.Write("<script>alert('FILL THE BLANK FIELDS');</script>");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            d1.con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Hotels where Hotel_id=" + DropDownList1.SelectedValue.ToString() + ";", d1.con);

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = reader.GetString(1);
              //  Response.Write(reader.GetValue (3).ToString());
              TextBox7.Text  = reader.GetString(3); 
                TextBox2.Text = reader.GetString(2);
                TextBox4.Text = reader.GetString(4);
                TextBox5.Text = reader.GetString(5);
                TextBox6.Text = reader.GetString(6);


            }

            d1.con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox7.Text = ddl1.SelectedItem.ToString();
    }
}