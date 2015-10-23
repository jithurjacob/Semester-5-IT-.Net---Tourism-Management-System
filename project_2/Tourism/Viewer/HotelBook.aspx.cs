using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Viewer_HOTELBOOK : System.Web.UI.Page
{
    Dbacess d= new Dbacess();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        if (!IsPostBack)
        {

            string sql1 = "select * from tbl_Hotels";
            DataTable dt = d.GetData(sql1);
            dd1.DataTextField = "hotelname";
            dd1.DataValueField = "Hotel_id";
            dd1.DataSource = dt;
            dd1.DataBind();
            dd1.Items.Insert(0, "select");

        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {

        string sql = "select * from tbl_Hotels where Hotel_id='" + dd1.SelectedValue + "'";
         DataTable dt = d.GetData(sql);
        int n = dt.Rows.Count;
        
        Label3.Text=dt.Rows[0][2].ToString();
        Label4.Text=dt.Rows[0][3].ToString();
        Label5.Text=dt.Rows[0][4].ToString();
        Label6.Text=dt.Rows[0][5].ToString();
        Label7.Text=dt.Rows[0][6].ToString();
        Label8.Text=dt.Rows[0][7].ToString();
    }



    protected void Button3_Click(object sender, EventArgs e)
    {

        Panel1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string sql = "insert into tbl_htbook values('" + TextBox9.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
        int a = d.InsertData(sql);
        if (a > 0)
        {
            Label1.Text = "Sucessfully Booking";
        }
        else
        {
            Label1.Text = "Failed";
        }
    }
}