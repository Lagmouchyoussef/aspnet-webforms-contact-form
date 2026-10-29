<%@ Page Title="Contact Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TPWebForms.WebForm1" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        body { font-family: Arial, sans-serif; background: #f3f6fa; margin: 0; }
        .card { max-width: 620px; margin: 30px auto; padding: 24px; background: white; border-radius: 10px; box-shadow: 0 2px 12px #00000018; }
        .field { margin-bottom: 15px; }
        .field label { display: block; margin-bottom: 6px; font-weight: bold; }
        .input { box-sizing: border-box; width: 100%; padding: 9px; }
        .error { color: #d00020; display: block; }
        .success { color: #1f5f99; display: block; }
        .button { padding: 10px 18px; border: 0; border-radius: 5px; background: #1f5f99; color: white; cursor: pointer; }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input" MaxLength="80" />
            <asp:RequiredFieldValidator ID="valEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address is required." CssClass="error" Display="Dynamic" />
        </div>

        <div class="field">
            <asp:Label ID="lblProgram" runat="server" AssociatedControlID="ddlProgram" Text="Program:" />
            <asp:DropDownList ID="ddlProgram" runat="server" CssClass="input">
                <asp:ListItem Text="-- Choose a program --" Value="" />
                <asp:ListItem Text="Computer Engineering" Value="ComputerEngineering" />
                <asp:ListItem Text="Networks and Systems" Value="NetworksAndSystems" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="valProgram" runat="server" ControlToValidate="ddlProgram" InitialValue="" ErrorMessage="Choose a program." CssClass="error" Display="Dynamic" />
        </div>

        <div class="field">
            <asp:Label ID="lblComment" runat="server" AssociatedControlID="txtComment" Text="Comment:" />
            <asp:TextBox ID="txtComment" runat="server" CssClass="input" TextMode="MultiLine" Rows="4" MaxLength="500" />
        </div>

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" OnClick="btnSubmit_Click" />
        <br /><br />
        <asp:Label ID="lblResult" runat="server" CssClass="success" EnableViewState="false" />
    </main>
</asp:Content>