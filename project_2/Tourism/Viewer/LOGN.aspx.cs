using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Viewer_LOGN : System.Web.UI.Page
{

    Dbacess d1 = new Dbacess();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtuser.Text == "admin")
        {

            string sql = "select * from tbl_adminlogin where password='" + txtpass.Text + "'";

            DataTable dt;
            dt = d1.GetData(sql);


            if (dt.Rows.Count > 0)
            {
                Session["username"] = txtuser.Text;
                Response.Redirect("../Admin/HM.aspx");
                Label1.Text = "Sucessfully Login ";
            }
            else
            {
                Label1.Text = "invalid Login";
            }

        }
        else
        {

            string sql2 = "select * from tbl_reg where Username='" + txtuser.Text + "' and password='" + txtpass.Text + "'   and valid='rejected'";
            DataTable dt2 = d1.GetData(sql2);
            if (dt2.Rows.Count > 0)
            {
                Label1.Text = "Your account request has been revoked by administrator...";
                return;
            }


            string sql1 = "select * from tbl_reg where Username='" + txtuser.Text + "' and password='" + txtpass.Text + "'   and valid='pending'";
            DataTable dt1 = d1.GetData(sql1);
            if (dt1.Rows.Count>0) {
                Label1.Text = "Verification is pending...";// +sql1;
                return;
            }



            string sql = "select * from tbl_reg where Username='" + txtuser.Text + "' and password='" + txtpass.Text + "' and valid='accepted'";

            DataTable dt;
            dt = d1.GetData(sql);


            if (dt.Rows.Count > 0)
            {
                Session["username"] = txtuser.Text;
                Response.Redirect("Default.aspx");
                Label1.Text = "Sucessfully Login ";
            }
            else
            {
                Label1.Text = "invalid Login";
            }
        }
    }
}   
        
        
    
    

