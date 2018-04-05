<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    
<html>
<body>
<h2>Advertisement here</h2>
    <asp:TextBox ID="birthdayText" value="Happy birthday from Encryption family. If you visit encrition this week you will be gifted 50% off. Have a great day" runat="server" Height="70px" MaxLength="200" Width="756px"></asp:TextBox>


    <br>
<br>
<button onclick="myFunction()">Send Message</button>

<p id="birthday"></p>

<script>
function myFunction() {
    var x = document.getElementById("birthdayText").value;
    document.getElementById("birthday").innerHTML = x;
}
</script>

     <asp:TextBox ID="advertisementId" value="Encryption is offering offer for our new room" runat="server" Height="70px" MaxLength="200" Width="756px"></asp:TextBox>


    <br>
<br>
<button onclick="myFunction()">Send Message</button>

<p id="advertisement"></p>

<script>
    function myFunction() {
        var x = document.getElementById("advertisementId").value;
        document.getElementById("advertisement").innerHTML = x;
    }
</script>

</body>
</html>

</asp:Content>




