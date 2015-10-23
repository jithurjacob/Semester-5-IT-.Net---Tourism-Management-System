using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_vehicle : System.Web.UI.Page
{
    Dbacess d1 = new Dbacess();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals(""))
            {

                Response.Write("<script>alert('Fill all fields...');</script>");
            }
            else
            {

                string sql1 = "select * from tbl_vehicle where vehicle='" + TextBox1.Text + "';";
                DataTable dt8 = d1.GetData(sql1);
                if (dt8.Rows.Count > 0)
                {
                    Response.Write("<script>alert('USERNAME ALREADY EXIST');</script>");
                    return;
                }
                

                string sql = "insert into tbl_vehicle values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Session["username"].ToString() + "','" + DropDownList2.SelectedIndex.ToString() + "','" + DropDownList1.SelectedValue.ToString() + "','" + DropDownList3.SelectedValue.ToString() + "');";
                int b = d1.InsertData(sql);
                if (b > 0)
                    Response.Write("<script>alert('VEHICLE ADDED SUCCESSFULLY.....');</script>");
                else
                    Label1.Text = "Failed....";
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = "";

            }
        }
        catch (Exception ex) {

            Label1.Text = ex.ToString();
        }
    }
}