<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="search_place.aspx.cs" Inherits="Viewer_search_place" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="inner-wrap">
<div id="top_search" >
   <center><asp:TextBox CssClass="inputtext" ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Search" /></center> 


</div>

    <div id="search_results" class="margin20">
        <div id="search_name" class="margin20"><center>
        
            <asp:Label ID="name_txt" runat="server"></asp:Label>
        
         </center></div>

         <div id="search_container"  class="margintop20">
                <div id="details_container">
                        <div id="routemap" >
                            <asp:Image class="routemap_img"   runat="server" />
                        </div>
                        <div id="desc margintop20">
                        
                        desc
                        </div>
                
                </div>
         
           <div id="other_results">
                        <div id="hotels">
                        hotels
                        </div>
                        <div id="pic">
                        pic
                        
                        </div>
                
                </div>
         
         </div>
    </div>
</div>
</asp:Content>

