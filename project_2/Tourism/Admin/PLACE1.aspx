<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMasterPage.master" AutoEventWireup="true" CodeFile="PLACE1.aspx.cs" Inherits="Admin_PLACE1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  class="centertable">
        <tr>
            <td class="style10" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18" colspan="3">
                Place Details</td>
        </tr>
        <tr>
            <td class="style12" rowspan="8" style="width: 168px">
                &nbsp;</td>
            <td class="style15">
                <asp:Label ID="Label2" runat="server" Text="Place" Font-Size="15pt"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="inputtext" ID="txtplace" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style69">
                <asp:Label ID="Label3" runat="server" Text="Description" Font-Size="15pt"></asp:Label>
            </td>
            <td class="style69">
                <asp:TextBox CssClass="inputtext" ID="Textdisp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="Label5" runat="server" Text="Wikipedia Link" Font-Size="15pt"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="inputtext" ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                 <asp:Label ID="Label4" runat="server" Text="Upload picture" Font-Size="15pt"></asp:Label></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" style="color: #FF0066" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Required Field" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                 <asp:Label ID="Label6" runat="server" Text="Upload routemap" Font-Size="15pt"></asp:Label></td>
            <td>
                <asp:FileUpload ID="FileUpload3" runat="server" style="color: #FF0066" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="FileUpload3" ErrorMessage="Required field" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                </td>
            <td class="style11">
                <asp:Button CssClass="btn" ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Submit"  />
                </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td>
                
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style12">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="place_id" ForeColor="#333333" 
                    GridLines="None" Height="29px" Width="100%" 
                    onrowdeleting="GridView1_RowDeleting" style="font-size: medium" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
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
                        <asp:BoundField DataField="link" HeaderText="Wiki Link" />
                         <asp:TemplateField HeaderText="RouteMap">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload3" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("map") %>' 
                                    Height="100px" Width="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="False" />
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

