<%@ Page Title="" Language="C#" MasterPageFile="~/Viewer/MasterPage.master" %>

<script runat="server">
    Dbacess d1 = new Dbacess();
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string uname = Session["username"].ToString();
            string sql3 = "update tbl_reg set name='" + TextBox1.Text + "',address='" + TextBox7.Text + "',place='" + TextBox2.Text + "',district='" + TextBox3.Text + "',phone_no=" + TextBox4.Text + ",email='" + TextBox5.Text + "' where (username='" + uname + "');";
           // Label2.Text = sql3;
            int b = d1.Updatedata(sql3);

            if (b > 0)
            {

                Label2.Text = "Updated...";
            }

            else
                Label2.Text = "Updation Failed";
        }
        catch (Exception ex) {
            Label1.Text = ex.ToString();
        
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            if(Session["username"].Equals(""))
                 Response.Redirect("logn.aspx");
            
            if (!IsPostBack)
            {
                string uname = Session["username"].ToString();
                string sql5 = "Select * from tbl_reg where username='" + uname + "'";
                System.Data.DataTable dt, dt1;
                dt = d1.GetData(sql5);
                //  Label2.Text = dt.ToString();=
                TextBox1.Text = (dt.Rows[0][1]).ToString();
                TextBox2.Text = (dt.Rows[0][3]).ToString();
                TextBox3.Text = (dt.Rows[0][4]).ToString();
                TextBox4.Text = (dt.Rows[0][5]).ToString();
                TextBox5.Text = (dt.Rows[0][6]).ToString();
                TextBox7.Text = (dt.Rows[0][2]).ToString();
            }
        }
        catch (Exception Ex) {

            Response.Redirect("logn.aspx");
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" class="centertable">
        <tr>
            <td class="style25" colspan="2" style="height: 64px">
                <asp:Label ID="Label1" runat="server" EnableTheming="True" 
                    style=" font-size: xx-large" 
                    Text="Edit profile" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 309px; height: 44px">
                <strong>Name</strong></td>
            <td style="height: 44px; margin-left: 80px">
                <asp:TextBox CssClass="inputtext" ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 309px; font-weight: 700; height: 48px">
                Address</td>
            <td class="style25">
                <asp:TextBox CssClass="inputtext"  ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 309px; font-weight: 700; height: 41px">
                Place</td>
            <td style="height: 41px">
                <asp:TextBox CssClass="inputtext" ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 309px; font-weight: 700; height: 41px">
                District</td>
            <td style="height: 41px">
                <asp:TextBox CssClass="inputtext" ID="TextBox3" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td style="width: 309px; font-weight: 700; height: 48px">
                Phone</td>
            <td class="style25">
                <asp:TextBox CssClass="inputtext" ID="TextBox4" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 309px; font-weight: 700; height: 48px">
                Email</td>
            <td class="style25">
                <asp:TextBox CssClass="inputtext" ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          
            </td>
        </tr>
        <tr>
            <td style="width: 309px; font-weight: 700; height: 44px">
                </td>
            <td style="height: 44px">
               
            </td>
        </tr>
        <tr>
            <td style="width: 309px; font-weight: 700; height: 45px">
                </td>
            <td style="height: 45px">
               
            </td>
        </tr>
        <tr>
            <td style="width: 309px; height: 45px">
            </td>
            <td style="height: 45px">
                <asp:Button CssClass="btn" ID="Button1" runat="server"  Text="Save" 
                     onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 309px; height: 45px">
            </td>
            <td style="height: 45px">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

