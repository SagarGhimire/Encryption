<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Report</h2>
    <html>
        
       <head>
            

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title> Report Page</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
      $("#startdatepicker").datepicker();
      $("#enddatepicker").datepicker();
  } );
  </script>
</head>
<body>
 
<p>Start date: <input type="text" id="startdatepicker"></p>
<p>End date: <input type="text" id="enddatepicker"></p> 
 
    <input type=submit runat=server>
       </body>
        </html>
   
</asp:Content>

