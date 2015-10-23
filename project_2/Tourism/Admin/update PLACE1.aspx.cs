using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_PLACE1 : System.Web.UI.Page
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

        string sql1 = "Select * from tbl_place ";
        DataTable dt = d1.GetData(sql1);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    public void fill()
    {

        string sql1 = "Select * from tbl_place ";
        DataTable dt = d1.GetData(sql1);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if ((TextBox1.Text.Equals(" ") || Textdisp.Text.Equals(" ") || txtplace.Text.Equals(" ")))
        {//FileUpload1.PostedFile.SaveAs(Server.MapPath("../images/" + FileUpload1.FileName));
            string sql = "update tbl_place set pname='" + txtplace.Text + "',discription='" + Textdisp.Text + "',link='" + TextBox1.Text + "' where place_id=" + DropDownList1.SelectedValue.ToString() + "";
            int a = d1.Updatedata(sql);
            if (a > 0)
            {
                txtplace.Text = "";
                Textdisp.Text = "";
                Label1.Text = "successfully updated...";
                fill();
            }
            else
            {
                Label1.Text = "failed";
            }
        }
        else
        {
            Response.Write("<script>alert('FILL THE BLANK FIELDS');</script>");
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

        string sql2 = "Delete from tbl_place where place_id=" + id + "";
        int p = d1.Deletedata(sql2);
        if (p > 0)
        {
            fill();


        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        d1.con.Open();
        SqlCommand cmd = new SqlCommand( "select * from tbl_place where place_id=" + DropDownList1.SelectedValue.ToString() + ";",d1.con);

        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read()) {
            txtplace.Text = reader.GetString(1);
            Textdisp.Text = reader.GetString(2 );
            TextBox1.Text = reader.GetString(4);
            
        
        }

        d1.con.Close();
    }
}