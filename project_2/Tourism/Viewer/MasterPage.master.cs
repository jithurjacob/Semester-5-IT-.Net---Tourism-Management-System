using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Viewer_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

            if (Session.Count > 0)
            {
                this.FindControl("HyperLink6").Visible = true;
               // this.FindControl("HyperLink4").Visible = false;
                this.FindControl("HyperLink3").Visible = true;
               // this.FindControl("HyperLink2").Visible = false;
                this.FindControl("HyperLink7").Visible = true;
                this.FindControl("HyperLink1").Visible = true;
                this.FindControl("HyperLink3").Visible = true;
            }
            else
            {
                //this.FindControl("HyperLink4").Visible = true;
                this.FindControl("HyperLink6").Visible = false;
                this.FindControl("HyperLink3").Visible = true;
              //  this.FindControl("HyperLink2").Visible = true;
                this.FindControl("HyperLink9").Visible = false;
                this.FindControl("HyperLink8").Visible = false;
                this.FindControl("HyperLink7").Visible = false;
                this.FindControl("HyperLink1").Visible = false;
                this.FindControl("HyperLink3").Visible = false ;
            }
            

    }
}
