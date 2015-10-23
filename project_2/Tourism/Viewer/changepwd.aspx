<%@ Page Title="" Language="C#" MasterPageFile="~/Viewer/MasterPage.master" AutoEventWireup="true" CodeFile="changepwd.aspx.cs" Inherits="Viewer_changepwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  class="centertable">
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 252px">
            &nbsp;</td>
        <td style="width: 318px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 69px">
        </td>
        <td style="height: 69px; width: 252px">
            Password</td>
        <td style="height: 69px; width: 318px">
            <asp:TextBox ID="TextBox1" CssClass="inputtext" runat="server" Width="242px" 
                TextMode="Password"></asp:TextBox>
        </td>
        <td style="height: 69px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 66px">
        </td>
        <td style="height: 66px; width: 252px">
            New Password</td>
        <td style="height: 66px; width: 318px">
            <asp:TextBox ID="TextBox2" CssClass="inputtext" runat="server" Width="240px" 
                TextMode="Password"></asp:TextBox>
        </td>
        <td style="height: 66px">
        </td>
    </tr>
    <tr>
        <td class="style25" style="height: 79px">
        </td>
        <td class="style25" style="height: 79px; width: 252px">
            Retype Password</td>
        <td class="style25" style="height: 79px; width: 318px">
            <asp:TextBox ID="TextBox3" CssClass="inputtext" runat="server" Width="243px" 
                TextMode="Password"></asp:TextBox>
        </td>
        <td class="style25" style="height: 79px">
        </td>
    </tr>
    <tr>
        <td class="style25" style="height: 44px">
        </td>
        <td class="style25" style="height: 44px; width: 252px">
        </td>
        <td class="style25" style="height: 44px; width: 318px">
            <asp:Button ID="Button1" CssClass="btn" runat="server" onclick="Button1_Click" Text="Confirm" 
                Width="150px" />
        </td>
        <td class="style25" style="height: 44px">
        </td>
    </tr>
    <tr>
        <td style="height: 59px">
        </td>
        <td style="height: 59px; width: 252px">
        </td>
        <td style="height: 59px; width: 318px">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td style="height: 59px">
        </td>
    </tr>
</table>
</asp:Content>

