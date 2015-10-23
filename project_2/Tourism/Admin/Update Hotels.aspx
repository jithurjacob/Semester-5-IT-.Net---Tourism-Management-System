<%@ Page Title="" Language="C#" MasterPageFile="~/Viewer/MasterPage.master" AutoEventWireup="true" CodeFile="Update Hotels.aspx.cs" Inherits="Admin_Hotels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="centertable">
        <tr>
            <td class="style19" style="width: 183px">
                &nbsp;</td>
            <td colspan="2" 
                style="font-size: x-large; text-align: center;">
                <strong>HOTELS</strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="width: 183px">
                &nbsp;</td>
            <td style="width: 245px; font-size: medium;">
                <b>Hotel Name</b></td>
            <td style="width: 264px;">
               
                <asp:DropDownList CssClass="inputtext" Height="50px"  ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="hotelname" 
                    DataValueField="Hotel_id" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:induConnectionString %>" 
                    SelectCommand="SELECT * FROM [tbl_Hotels]"></asp:SqlDataSource>
               
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
          <tr>
            <td class="style19" style="width: 183px">
                &nbsp;</td>
            <td style="width: 245px; font-size: medium;">
                <b>Name</b></td>
            <td style="width: 264px;">
                <asp:TextBox CssClass="inputtext" ID="TextBox1" runat="server"  TextMode="SingleLine" 
                    Width="198px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="width: 183px">
                &nbsp;</td>
            <td style="width: 245px; font-size: medium;">
                <b>Place</b></td>
            <td style="width: 264px;">
                <asp:TextBox CssClass="inputtext" ID="TextBox7"  runat="server"></asp:TextBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:induConnectionString %>" 
                    SelectCommand="SELECT * FROM [tbl_place]"></asp:SqlDataSource>
                <asp:DropDownList Height="50px"  CssClass="inputtext margin20 " ID="ddl1" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="pname" DataValueField="place_id" AutoPostBack="True" 
                    onselectedindexchanged="ddl1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="width: 183px">
                &nbsp;</td>
            <td style="width: 245px; font-size: medium;">
                <b>Address</b></td>
            <td style="width: 264px;">
                <asp:TextBox CssClass="inputtext" ID="TextBox2" runat="server" Height="56px" TextMode="MultiLine" 
                    Width="198px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style19" style="width: 183px">
                &nbsp;</td>
            <td style="width: 245px; font-size: medium;">
                <b>Phone</b></td>
            <td style="width: 264px;">
                <asp:TextBox CssClass="inputtext" ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="INVALID FORMAT" 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="width: 183px">
                &nbsp;</td>
            <td style="width: 245px; font-size: medium;">
                <b>Email</b></td>
            <td style="width: 264px;">
                <asp:TextBox CssClass="inputtext" ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="INVALID FORMAT" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="width: 183px">
                &nbsp;</td>
            <td style="width: 245px; font-size: medium;">
                <b>website</b></td>
            <td style="width: 264px;">
                <asp:TextBox CssClass="inputtext" ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="INVALID FORMAT" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="width: 183px">
                &nbsp;</td>
            <td style="width: 245px; font-size: medium;">
                <b></b>
            </td>
            <td style="width: 264px;">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                   CssClass="btn" Text="Submit" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="width: 183px">
                &nbsp;</td>
            <td style="width: 245px;">
                &nbsp;</td>
            <td style="width: 264px;">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" colspan="4" style="width: 183px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Hotel_id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Hotel_id" HeaderText="Hotel_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Hotel_id" />
                        <asp:BoundField DataField="hotelname" HeaderText="hotelname" 
                            SortExpression="hotelname" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                        <asp:BoundField DataField="website" HeaderText="website" 
                            SortExpression="website" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:induConnectionString %>" 
                    SelectCommand="SELECT * FROM [tbl_Hotels]"></asp:SqlDataSource>
            </td>
           
           
        </tr>
    </table>
</asp:Content>

