<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.aspx.cs" Inherits="TPWebForms.ContactForm" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Contact Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f3f6fa;
            margin: 0;
            padding: 30px;
        }

        .card {
            max-width: 620px;
            margin: 0 auto;
            padding: 24px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 12px #00000018;
        }

        .field {
            margin-bottom: 15px;
        }

        .field label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        .input {
            box-sizing: border-box;
            width: 100%;
            padding: 9px;
        }

        .button {
            padding: 10px 18px;
            border: 0;
            border-radius: 5px;
            background: #1f5f99;
            color: white;
            cursor: pointer;
        }

        .error {
            color: #b00020;
        }

        .success {
            display: block;
            margin-top: 16px;
            color: #176b36;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <main class="card">
            <h1>Contact Form</h1>
            <p>ASP.NET Web Forms introductory lab</p>

            <div class="field">
                <asp:Label ID="lblFullName" runat="server" AssociatedControlID="txtFullName" Text="Full name:" />
                <asp:TextBox ID="txtFullName" runat="server" CssClass="input" MaxLength="80" />
                <asp:RequiredFieldValidator ID="valFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full name is required." CssClass="error" Display="Dynamic" />
            </div>

            <div class="field">
                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email address:" />
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input" TextMode="Email" MaxLength="120" />
                <asp:RequiredFieldValidator ID="valEmailRequired" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address is required." CssClass="error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="valEmailFormat" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Enter a valid email address." CssClass="error" Display="Dynamic" />
            </div>

            <div class="field">
                <asp:Label ID="lblProgram" runat="server" AssociatedControlID="ddlProgram" Text="Program:" />
                <asp:DropDownList ID="ddlProgram" runat="server" CssClass="input">
                    <asp:ListItem Text="-- Choose a program --" Value="" />
                    <asp:ListItem Text="Computer Engineering" Value="ComputerEngineering" />
                    <asp:ListItem Text="Industrial Engineering" Value="IndustrialEngineering" />
                    <asp:ListItem Text="Networks and Systems" Value="NetworksAndSystems" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="valProgram" runat="server" ControlToValidate="ddlProgram" InitialValue="" ErrorMessage="Choose a program." CssClass="error" Display="Dynamic" />
            </div>

            <div class="field">
                <asp:Label ID="lblComment" runat="server" AssociatedControlID="txtComment" Text="Comment:" />
                <asp:TextBox ID="txtComment" runat="server" CssClass="input" TextMode="MultiLine" Rows="4" MaxLength="500" />
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblResult" runat="server" CssClass="success" EnableViewState="false" />
        </main>
    </form>
</body>
</html>
