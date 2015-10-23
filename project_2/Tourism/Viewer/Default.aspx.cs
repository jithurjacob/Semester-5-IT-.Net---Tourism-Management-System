using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Viewer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (IsPostBack)
                Response.Write("1");
            if (IsCallback)
                Response.Write("2");
            if (IsCrossPagePostBack)
                Response.Write("3");
            
            
            if (Session["username"].Equals(""))
            {
                Response.Redirect("logn.aspx");
            }
           // else Response.Write(Session["username"].ToString());
        }
        catch (Exception ex)
        {
            Response.Redirect("logn.aspx");
        }  
    }
}