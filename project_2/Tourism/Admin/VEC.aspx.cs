using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_VEC : System.Web.UI.Page
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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "insert into tbl_vechil values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        int a = d1.InsertData(sql);
        if (a > 0)
        {
            Label1.Text = "suceesfully added";
        }
        else
        {
            Label1.Text = "failed";
        }
    }
}