<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="LOGN.aspx.cs" Inherits="Viewer_LOGN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    
    <table class="centertable">
        <tr>
            <td rowspan="4" class="style2">
                <div style="text-align: center">
                  <!--  <asp:Image ID="Image3" runat="server" Height="277px" 
                        ImageUrl="~/images/painting- child with duck.jpg" Width="328px" />-->
                    <span style="font-size: x-large; color: #800000"><strong style="color: #FFFFFF">LOGIN</strong></span></div>
                <table class="style17">
        <tr>
        <td class="style5">
            <strong>Username</strong></td>
        <td class="style4">
            <asp:TextBox CssClass="inputtext" ID="txtuser" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtuser" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <strong>Password</strong></td>
        <td class="style4">
            <asp:TextBox  CssClass="inputtext" ID="txtpass" runat="server" TextMode="Password" Height="22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtpass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            <asp:Button  ID="Button1" CssClass="btn"  runat="server" style="font-weight: 700; " Text="Login" 
                onclick="Button1_Click" />
        </td>
    </tr>

        <tr>
            <td>
                &nbsp;</td>
            <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
    
    </table>
    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style2
        {
            width: 672px;
        }
        .style4
        {
            width: 773px;
        }
        .style5
        {
            width: 272px;
        }
    </style>
</asp:Content>


