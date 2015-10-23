using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Viewer_REG : System.Web.UI.Page
{
    Dbacess d1=new Dbacess();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql5 = "Select max(reg_id)+1 as count from tbl_reg";
        DataTable dt,dt1;
        dt = d1.GetData(sql5);
      //  Label2.Text = dt.ToString();
        string  id = (dt.Rows[0][0]).ToString();
        if (id == "")
            id = "1";
        string sql2 = "select username from tbl_reg where username='"+TextBox6.Text +"'; ";
        dt1 = d1.GetData(sql2);
        if (dt1.Rows.Count == 0)
        {
            string sql3 = "insert into tbl_reg values('" + id + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox8.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "',0);";
            Label1.Text = sql3;
            int b = d1.InsertData(sql3);

            if (b > 0)
            {

                Label1.Text = "Registered";
            }

            else
                Label1.Text = " Registration Failed";
        }
        else {
            Label1.Text = " Registration Failed username already taken";
        }
    }
   
}