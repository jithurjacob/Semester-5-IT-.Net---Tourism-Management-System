﻿using System;
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
            Session["username"] = ("");
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("hOME.aspx");
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
}