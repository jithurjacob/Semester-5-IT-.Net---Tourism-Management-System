using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Viewer_changepwd : System.Web.UI.Page
{
    Dbacess d1 = new Dbacess();
    protected void Page_Load(object sender, EventArgs e)
    {
        try { 
            string uname = Session["username"].ToString(); 
        if(uname.Equals(""))
            Response.Redirect("logn.aspx");
        }
        catch (Exception ex) {

            Response.Redirect("logn.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try {

            if(TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("")){
            Label1.Text="Fill all fields...";
                return;
            }

            string uname = Session["username"].ToString();
            string sql5 = "Select password from tbl_reg where username='" + uname + "'";
            System.Data.DataTable dt, dt1;
            dt = d1.GetData(sql5);
            //  Label2.Text = dt.ToString();=
          if(  TextBox1.Text.Equals( (dt.Rows[0][0]).ToString()).Equals(false)){
          Label1.Text="Incorrect Password....";
              return;
          
          }
            if(TextBox2.Text.Equals(TextBox3.Text).Equals(false)){
           Label1.Text="New Password and Retype password's donot match...";
                return;
            }
        string sql1="update tbl_reg set password='"+TextBox3.Text +"' where username='"+uname +"'";
            d1.Updatedata(sql1);
            Label1.Text="Password changed successfully...";
            TextBox1.Text="";
                TextBox2.Text="";
            TextBox3.Text="";
        }
        catch (Exception ex) {
            Response.Redirect("logn.aspx");
           // Label1.Text = ex.ToString();

        }
    }
}