using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_HM : System.Web.UI.Page
{
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
}