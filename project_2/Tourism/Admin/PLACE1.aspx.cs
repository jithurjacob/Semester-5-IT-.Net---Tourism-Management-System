using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
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
        FileUpload1.PostedFile.SaveAs(Server.MapPath("../images/" + FileUpload1.FileName));
        FileUpload3.PostedFile.SaveAs(Server.MapPath("../images/" + FileUpload3.FileName));
        string sql = "insert into tbl_place values('" + txtplace.Text + "','"+ Textdisp.Text +"','" + "../images/" + FileUpload1.FileName + "','"+TextBox1.Text +"','" + "../images/" + FileUpload3.FileName+"')";
        int a = d1.InsertData(sql);
        if (a > 0)
        {
            txtplace.Text = "";
            Textdisp.Text = "";
            Label1.Text = "successfully added";
            fill();
        }
        else
        {
            Label1.Text = "failed";
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
}