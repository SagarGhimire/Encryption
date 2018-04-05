<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br>
  
  
    <asp:Label ID="Label1" runat="server" Text="Fool's Gold"></asp:Label>
    <br>
     <asp:Button runat="server" Text="Details" OnClientClick="foolsDetails" ID="foolsbtn" OnClick="Fools_Click"></asp:Button>
   
     <br>
         <br>
    <br>
    <asp:Label class="Label2" runat="server" Text="Zoombie outbreak"></asp:Label>
    <br>
    <asp:Button runat="server" Text="Details" OnClientClick="foolsDetails" ID="zoombiebtn" OnClick="Zoombie_Click"></asp:Button>
    
    <br />
</asp:Content>
