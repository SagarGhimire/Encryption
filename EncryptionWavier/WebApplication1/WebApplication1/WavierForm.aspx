<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WavierForm.aspx.cs" Inherits="WavierForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color: lightgray;
            padding:10px 7px 2px 10px;
        }
        #form1, #TextBox1, #DropDownList1 {
            
            font-family: sans-serif;
        }
    </style>
</head>
<body>

    <br />
    <br />
    <p> ACCIDENT WAVIER AND RELEASE OF LIABILITY FOR ENCRYPTION ENTERTAINMENT LLC

    </p>

    <form id="form1" runat="server">
        Room:
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true">
            <asp:ListItem Text="--Select Room--" Value="" />
            <asp:ListItem Text="Fool's Gold" Value="1" />
            <asp:ListItem Text="Zoombie outbreak" Value="2" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
        <br />
        <br />

        Select Date:
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        &nbsp;<br />
        Date and Time:
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>


        <br />
        <br />
        Team Name:
            <asp:TextBox ID="teamName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server"
            ControlToValidate="teamName"
            ErrorMessage="Team name is a required.">
        </asp:RequiredFieldValidator>
        <br />
        <br />
        <div>

            <p>
                I realize that by booking this fun event. I agree to assume allot the risks of participating in any/all activities associated with this escape room event, including by way of example and not limitation. Any risk that may arise from, other meeting attendees ("participants") like tripping or falling over things they or myself scatter about the room, bumping and/or crashing hit them, or by negligence or carelessness on the part of the persons or entities being released from dangerous or defective equipment or property owned, maintained, or controlled by them, or because of that possible liability without fault.
            </p>
            <br />
            <p>
                I CERTIFY THAT I HAVE READ THIS DOCUMENT AND  FULLY UNDERSTAND ITS CONTENT. I AM AWARE THAT THIS IS A RELEASE OF LIABILITY AND A CONTRACT AND I SIGN IT OF MY OWN FREE WILL.

            </p>
            <br />
            Enter your information:<br />
            <br />

            First Name:
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regName" runat="server"
                ControlToValidate="txtFirstName"
                ValidationExpression="^[a-zA-Z'.\s]{1,20}"
                Text="Enter a valid first name" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server"
                ControlToValidate="txtFirstName"
                ErrorMessage="First name is a required.">
            </asp:RequiredFieldValidator>
            <br />
            <br />
            Last Name:
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server"
                ControlToValidate="txtLastName"
                ValidationExpression="^[a-zA-Z'.\s]{1,20}"
                Text="Enter a valid last name" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2LastName" runat="server"
                ControlToValidate="txtLastName"
                ErrorMessage="Last name is a required.">
            </asp:RequiredFieldValidator>
            <br />
            <br />
            Phone Number:
            <asp:TextBox runat="server" ID="txtphone" />

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid Phone number" ControlToValidate="txtphone" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhoneNumber" runat="server"
                ControlToValidate="txtphone"
                ErrorMessage="Phone number is a required.">
            </asp:RequiredFieldValidator>

            <br />
            <br />
            
  

            
            <br />
        Email: &nbsp &nbsp
            <asp:TextBox ID="userEmail" runat="server" Width="180px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="emailValidation" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="userEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
            <br />
            <br />


        </div>

        <asp:Label ID="txtMessage" runat="server" ></asp:Label>

        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <p>
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>