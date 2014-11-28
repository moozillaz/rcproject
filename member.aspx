<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="member.aspx.cs" Inherits="rcproject.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .auto-style1 {
        height: 21px;
    }
    .auto-style2 {}
    .auto-style3 {
        height: 21px;
        width: 128px;
    }
    .auto-style4 {
        width: 128px;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Login Form</h2>
      <br />
<table style="width: 24%;">
    <tr>
        <td class="auto-style3">Username </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Password </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        </td>
    </tr>
</table>
      <br />

</asp:Content>
