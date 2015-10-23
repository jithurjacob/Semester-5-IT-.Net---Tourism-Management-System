<%@ Page Title="" Language="C#" MasterPageFile="~/Viewer/MasterPage.master" AutoEventWireup="true" CodeFile="VEC.aspx.cs" Inherits="Admin_VEC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  class=centertable>
        <tr>
        <td colspan="3" style="height: 21px; text-align: center; font-size: x-large">
            <strong>VECHILES AVILABLE</strong></td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <b>Vechile</b></td>
        <td>
            <asp:TextBox CssClass="inputtext" ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <b>No Of Seats</b></td>
        <td>
            <asp:TextBox CssClass="inputtext" ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <b>Rate Per Day</b></td>
        <td>
            <asp:TextBox CssClass="inputtext" ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
              CssClass="btn"  Text="Submit" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    </table>
</asp:Content>

