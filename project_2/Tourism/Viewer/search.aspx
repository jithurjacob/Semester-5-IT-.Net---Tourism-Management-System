<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="Viewer_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17" 
    style="color: #000000; font-weight: 700; background-color: #66CCFF">
        <tr>
            <td class="style19" style="width: 193px">
                <strong>SEARCH</strong></td>
            <td style="width: 608px">
                <strong>
                <asp:TextBox ID="TextBox1" runat="server" Width="386px" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                <strong>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="67px" 
                    ImageUrl="~/images/images.jpg" onclick="ImageButton1_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style19" style="width: 193px">
                <strong></strong></td>
            <td style="width: 608px">
                <strong></strong></td>
            <td>
                <strong></strong></td>
        </tr>
        <tr>
            <td class="style19" style="width: 193px">
                <strong></strong></td>
            <td style="width: 608px">
                <strong></strong></td>
            <td>
                <strong></strong></td>
        </tr>
        <tr>
            <td class="style19" style="width: 193px">
                &nbsp;</td>
            <td style="width: 608px">
                <strong>
                
                </strong>
            </td>
            <td style="color: #000000">
                <strong></strong></td>
        </tr>
        </table>
        <asp:Label id="noresults" runat="server" Text="No results found...." Visible="false">
        </asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="place_id" ForeColor="#333333" 
                    GridLines="None" Height="29px" Width="100%" 
                     style="font-size: medium">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pname" HeaderText="Place" />
                         <asp:BoundField DataField="discription" HeaderText="Discription" />
                       
                       
                        <asp:TemplateField HeaderText="Photo">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("img") %>' 
                                    Height="100px" Width="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Wiki Link">
                            
                            <ItemTemplate>
                                <asp:HyperLink runat="server" NavigateUrl='<%# Eval("link") %>' Text= '<%# Eval("link") %>'
                                     />
                            </ItemTemplate>
                        </asp:TemplateField>

                       
                        <asp:CommandField ShowDeleteButton="false" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                
</asp:Content>

