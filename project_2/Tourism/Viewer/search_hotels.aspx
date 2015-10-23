<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="search_hotels.aspx.cs" Inherits="Viewer_search_hotels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 80%;
        }
        .style2
        {
            text-align: center;
    }
    .style3
    {
        font-size: x-large;
    }
    .style4
    {
        text-align: center;
    }
    .style5
    {
        width: 226px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="inner-wrap">
<div class="inner-wrap">

 
    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
                <br />
                <strong><span class="style3">SEARCH HOTEL</span></strong><br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style5">
                Place</td>
            <td>
                <asp:DropDownList CssClass="inputtext" Height="50px" ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="pname" DataValueField="pname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:induConnectionString %>" 
                    SelectCommand="SELECT [place_id], [pname] FROM [tbl_place]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Hotel</td>
            <td>
                <asp:DropDownList CssClass="inputtext" Height="50px" ID="DropDownList2" 
                    runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="hotelname" 
                    DataValueField="Hotel_id" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:induConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [tbl_Hotels] WHERE ([hotelname] = @hotelname)" 
                    onselecting="SqlDataSource2_Selecting">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="hotelname" 
                            PropertyName="SelectedValue" Type="String" DefaultValue="taj" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:HyperLink ID="HyperLink17" runat="server" 
                    NavigateUrl="~/Viewer/search_hotels.aspx">SEARCH AGAIN</asp:HyperLink>
            </td>
        </tr>
    </table>

 
    </div>
 
    </div>

</asp:Content>

