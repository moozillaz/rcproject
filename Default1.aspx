<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="rcproject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 103px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <h2>Profile</h2>
   
        <table style="width:265px">
            <tr>
                <td class="auto-style3">Name :</td>
                <td>
        <asp:Label ID="lblUsername" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password :</td>
                <td>
        <asp:Label ID="lblPassword" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Name :</td>
                <td>
        <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Surname :</td>
                <td>
        <asp:Label ID="lblSurname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email :</td>
                <td>
        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Tel :</td>
                <td>
        <asp:Label ID="lblTel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    

    <br />
    <asp:LinkButton ID="lnkLogout" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
    
    

    <br />
    
    

</asp:Content>
