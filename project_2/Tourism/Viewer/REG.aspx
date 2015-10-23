<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="REG.aspx.cs" Inherits="Viewer_REG" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="centertable">
       <tr>
            <td class="style16" colspan="2" style="height: 23px; text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style19">&nbsp;</span><strong><span 
                    class="style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style21">Registration&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></td>
        </tr>
        <tr>
            <td class="style36" style="width: 19px">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35" style="width: 19px; font-weight: bold">
                Name</td>
            <td class="style1">
                <asp:TextBox CssClass="inputtext" ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Only string is allowed" 
                    
                    style="z-index: 1; left: 316px; top: 375px; position: relative; width: 157px" 
                    ValidationExpression="\w{1,40}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style35" style="width: 19px; font-weight: bold">
                Address</td>
            <td class="style1">
                <asp:TextBox CssClass="inputtext" ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style35" style="width: 19px; font-weight: bold">
                Place</td>
            <td class="style1">
                <asp:TextBox CssClass="inputtext" ID="TextBox3" runat="server" Width="174px" 
                    ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style35" style="width: 19px; font-weight: bold">
                District</td>
            <td class="style1">
                <asp:TextBox CssClass="inputtext" ID="TextBox8" runat="server" Width="164px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style35" style="width: 19px; font-weight: bold">
                Phone</td>
            <td class="style1">
                <asp:TextBox CssClass="inputtext" ID="TextBox4" runat="server" Width="174px" 
                 ></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td class="style34" style="width: 19px; font-weight: bold">
                Email</td>
            <td class="style1">
                <asp:TextBox CssClass="inputtext" ID="TextBox5" runat="server" Width="176px" 
                   ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style35" style="width: 19px; font-weight: bold">
                Username</td>
            <td class="style1">
                <asp:TextBox CssClass="inputtext" ID="TextBox6" runat="server" Width="173px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style35" style="width: 19px; font-weight: bold">
                Password</td>
            <td class="style1">
                <asp:TextBox CssClass="inputtext" ID="TextBox7" runat="server" Width="166px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style36" style="width: 19px">
                &nbsp;</td>
            <td class="style1">
                <asp:Button CssClass="btn" ID="Button1" runat="server" 
                    
                    Text="Submit" onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" style="color: #006600; font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style36" style="width: 19px">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr> 
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 419px;
        }
    </style>
</asp:Content>


