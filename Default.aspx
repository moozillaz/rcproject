<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
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
            <td class="style10">
               
            </td>
            <td class="style5">
             
                เช่น myname@example.com</td>
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
             
                <asp:TextBox ID="txtPassword" runat="server" Width="219px"></asp:TextBox>
             
            </td>
        </tr>

         <tr>
            <td class="style10">
               
                &nbsp;</td>
            <td class="style5">
               
                ความยาวอย่างน้อย 8 ตัวอักษร</td>
        </tr>
        <tr>
            <td class="style9">
               
                <strong>Comfirm Password :</strong></td>
            <td class="style5">
             
                <asp:TextBox ID="txtConPassword" runat="server" Width="219px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
               
                <strong>เพศ :</strong></td>
            <td class="style5">
             
                <asp:RadioButton ID="Male" runat="server" Text=" ชาย" />
                &nbsp;&nbsp;
                <asp:RadioButton ID="Female" runat="server" Text=" หญิง" />
             
            </td>
        </tr>
        <tr>
            <td class="style9">
               
                <strong>วันเกิด :</strong></td>
            <td class="style5">
             
                <asp:DropDownList ID="bDay" runat="server">
                    <asp:ListItem>วัน</asp:ListItem>
                </asp:DropDownList>
             
                &nbsp;<asp:DropDownList ID="bMouth" runat="server">
                    <asp:ListItem>เดือน</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="bYear" runat="server">
                    <asp:ListItem>ปี</asp:ListItem>
                </asp:DropDownList>
             
            </td>

        </tr>
         <tr>
            <td class="style9">
               
                <strong>เบอร์โทรศัพท์ :</strong></td>
            <td class="style5">
             
                <asp:TextBox ID="txtTel" runat="server" Width="219px"></asp:TextBox>
             
            </td>

        </tr>

        <tr>
            <td class="style9">
               
                &nbsp;</td>
            <td class="style5">
             
              <asp:Button ID="btnSave" runat="server" Text="Register" />
                &nbsp;<asp:Button ID="btnSave0" runat="server" Text="Cancle" />
           
            </td>
            </tr>

    </table>

     </asp:Panel>
    <p>
     
        &nbsp;</p>
    <p>
        
    </p>
</asp:Content>
