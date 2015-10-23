using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Viewer_search : System.Web.UI.Page
{
   
    Dbacess d1 = new Dbacess();
    protected void Page_Load(object sender, EventArgs e)
    {
        //string sql1 = "Select * from tbl_place ";
        //DataTable dt = d1.GetData(sql1);
        //GridView1.DataSource = dt;
        //GridView1.DataBind();
        //  Panel1.Visible = false;
        try
        {
            if (Session["username"].Equals(""))
            {
                Response.Redirect("logn.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("logn.aspx");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
     //   Panel1.Visible = true;
        string sql2 = "select * from tbl_place WHERE PNAME LIKE '%" + TextBox1.Text + "%'";
        DataTable dt = d1.GetData(sql2);
        if (dt.Rows.Count == 0)
        
            noresults.Visible = true;
        else
            noresults.Visible = false;
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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}