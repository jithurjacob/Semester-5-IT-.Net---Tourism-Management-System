﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Viewer/MasterPage.master" AutoEventWireup="true" CodeFile="update vehicle.aspx.cs" Inherits="Admin_update_vehicle" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style=" height: 286px" class=centertable>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                UPDATE VEHICLE
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                &nbsp;</td>
            <td style="width: 234px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                Name</td>
            <td style="width: 234px">
                <asp:DropDownList ID="DropDownList4" runat="server" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                Number of seat</td>
            <td style="width: 234px">
                <asp:TextBox CssClass="inputtext" ID="TextBox2" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                Rate</td>
            <td style="width: 234px">
                <asp:TextBox CssClass="inputtext" ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                Category</td>
            <td style="width: 234px">
                <asp:DropDownList CssClass="inputtext" ID="DropDownList1" Height="50px" runat="server">
                    <asp:ListItem>AC</asp:ListItem>
                    <asp:ListItem>Non-AC</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                Place</td>
            <td style="width: 234px">
                <asp:DropDownList CssClass="inputtext" ID="DropDownList3" Height="50px" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="pname" DataValueField="place_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:induConnectionString %>" 
                    SelectCommand="SELECT * FROM [tbl_vehicle] WHERE ([vehicle] = @vehicle)">
                    <SelectParameters>
                        <asp:SessionParameter Name="vehicle" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                Availability</td>
            <td style="width: 234px">
                <asp:DropDownList CssClass="inputtext" ID="DropDownList2" Height="50px" runat="server">
                    <asp:ListItem>True</asp:ListItem>
                    <asp:ListItem>False</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                &nbsp;</td>
            <td style="width: 234px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                &nbsp;</td>
            <td style="width: 234px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                &nbsp;</td>
            <td style="width: 234px">
                <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
                    Text="Update" Width="91px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                &nbsp;</td>
            <td style="width: 234px">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                &nbsp;</td>
            
            
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 208px">
                &nbsp;</td>
            <td style="width: 234px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

