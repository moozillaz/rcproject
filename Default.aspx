<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="rcproject._Default" %>

<asp:Content ID="HeadContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style5
        {
            width: 220px;
        }
        .style9
        {
            text-align: right;
            width: 259px;
        }
        .style10
        {
            width: 259px;
        }
        </style>
</asp:Content>
<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Register From
    </h2>
   
        <asp:Panel ID="Panel1" runat="server">

            <table border="0" style="width: 363px">
                <tr>
                    <td class="style9">

                        <b>ชื่อจริง :</b></td>
                    <td class="style5">

                        <asp:TextBox ID="txtName" runat="server" Width="219px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="style9">

                        <strong style="text-align: right">นามสกุล :</strong></td>
                    <td class="style5">

                        <asp:TextBox ID="txtSurname" runat="server" Width="219px"></asp:TextBox>

                    </td>
                </tr>

                <tr>
                    <td class="style9">

                        <strong>Email :</strong></td>
                    <td class="style5">

                        <asp:TextBox ID="txtMail" runat="server" Width="219px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="style10"></td>
                    <td class="style5">เช่น myname@example.com</td>
                </tr>

                <tr>
                    <td class="style9">

                        <strong>Username :</strong></td>
                    <td class="style5">

                        <asp:TextBox ID="txtUsername" runat="server" Width="219px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="style9">

                        <strong>Password :</strong></td>
                    <td class="style5">



                        <asp:TextBox ID="txtPassword" runat="server" Width="219px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="style10">&nbsp;</td>
                    <td class="style5">กรุณากรอกรหัสผ่านที่เป็นตัวอักษร a-z และตัวเลข 0 - 9</td>
                </tr>
                <tr>
                    <td class="style9">

                        <strong>เบอร์โทรศัพท์ :</strong></td>
                    <td class="style5">

                        <asp:TextBox ID="txtTel" runat="server" Width="219px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style9">&nbsp;</td>
                    <td class="style5">

                        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click1" Text="Register" />
                    </td>
                </tr>

            </table>

            <asp:Label ID="lblStatus" runat="server"></asp:Label>
            <br />

        </asp:Panel>

        </asp:Content>
