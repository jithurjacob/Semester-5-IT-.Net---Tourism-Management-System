using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Viewer_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Session["username"] = "";
            Session.Abandon();
            Response.Redirect("../Viewer/Home.aspx");
        }
        catch (Exception ex)
        {
            Response.Redirect("../Viewer/Home.aspx");
        }

       

    }
}