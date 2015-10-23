<%@ Page Title="" Language="C#" MasterPageFile="~/Viewer/MasterPage.master" AutoEventWireup="true" CodeFile="HOTELBOOK.aspx.cs" Inherits="Viewer_HOTELBOOK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17">
        <tr>
            <td class="style19">
                </td>
            <td class="style17" colspan="2" style="text-align: center">
                <strong style="font-size: large; text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                    style="color: #800000"> </span></strong><span style="color: #800000">
                <span style="font-size: x-large">
                <strong style="text-align: center">Hotel Booking</strong></span></span></td>
            <td class="style16">
                </td>
        </tr>
        <tr>
            <td class="style12" style="height: 16px; width: 194px;">
                </td>
            <td class="style16" style="height: 16px; font-weight: bold">
                Hotel</td>
            <td style="height: 16px">
                
                <asp:DropDownList ID="dd1" runat="server" AutoPostBack="True">
                </asp:DropDownList>
                
            </td>
            <td style="height: 16px">
                </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style6" style="font-weight: bold">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="color: #800000; font-weight: 700" Text="View" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td style="font-size: medium; background-color: #FFFFFF">
                <b>Category</b></td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td style="font-size: medium; background-color: #FFFFFF">
                <b>Address</b></td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td style="font-size: medium; background-color: #FFFFFF">
                <b>Place</b></td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td style="font-size: medium; background-color: #FFFFFF">
                <b>Phone</b></td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td style="font-size: medium; background-color: #FFFFFF">
                <b>Email</b></td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td style="font-size: medium; background-color: #FFFFFF">
                <b>website</b></td>
            <td>
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td>
                
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    style="color: #800000; font-weight: 700" Text="BOOK" Width="82px" />
                
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table class="style17" style="width: 337%">
                        <tr>
                            <td class="style16" style="width: 142px; font-weight: bold">
                                &nbsp;</td>
                            <td style="font-size: x-large; color: #800000">
                                Enter Your Details</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" style="width: 142px; font-weight: bold">
                                No.Of Rooms</td>
                            <td>
                                
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" style="width: 142px; font-weight: bold">
                                No.of Persons</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" style="width: 142px; font-weight: bold">
                                Total Amount</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" style="width: 142px; font-weight: bold">
                                Booking Amount</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" style="width: 142px; font-weight: bold">
                                Credit Card No</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" style="width: 142px; font-weight: bold">
                                Credit Card Name</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" style="width: 142px; font-weight: bold">
                                Card Exp Date</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16" style="width: 142px; font-weight: bold">
                                Bank</td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27" style="width: 142px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    style="color: #FFFFFF; font-weight: 700; background-color: #800000" 
                                    Text="SUBMIT" />
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #003300"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr> 
    </table>
</asp:Content>

