using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
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
        
            if((TextBox1.Text.Equals(" ") || TextBox2.Text.Equals(" ") || TextBox4.Text.Equals(" ") || TextBox5.Text.Equals(" ") || TextBox6.Text.Equals(" ")))
            {

        string sql = "insert into tbl_Hotels values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + ddl1.SelectedItem.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        int a = d1.InsertData(sql);
        if (a > 0)
        {
            Label1.Text = "Sucessfully Added";
        }
        
        else
        {
            Label1.Text = "Failed";
        }
            }
            else{
                Response.Write("<script>alert('FILL THE BLANK FIELDS');</script>");
            }
        
            
    }
}