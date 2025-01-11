<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResimUpload.aspx.cs" Inherits="WebApp_UserControls1.ResimUpload" %>

<%@ Register Src="~/OrtakUc.ascx" TagPrefix="uc1" TagName="OrtakUc" %>
<%@ Register Src="~/NavBarUc.ascx" TagPrefix="uc1" TagName="NavBarUc" %>
<%@ Register Src="~/SideBarAdmin.ascx" TagPrefix="uc1" TagName="SideBarAdmin" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <uc1:OrtakUc runat="server" ID="OrtakUc" />
    <link href="SideBar.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 500px;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style2 {
            width: 190px
        }
        .auto-style3 {
            width: 190px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <uc1:NavBarUc runat="server" ID="NavBarUc" />
    <form id="form1" runat="server">
        <uc1:SideBarAdmin runat="server" ID="SideBarAdmin" />
        <div align="center">
            <table class="auto-style1">
                <tr>
                    <td align="left" class="auto-style2">Resim Seçiniz</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td align="left" class="auto-style2">Kategori Seçiniz</td>
                    <td align="left">
                        <asp:DropDownList ID="DdlSiniflar" runat="server">
                            <asp:ListItem Value="0">--kategori seçiniz--</asp:ListItem>
                            <asp:ListItem Value="1">Sanat Sınıfı</asp:ListItem>
                            <asp:ListItem Value="2">Laboraruvar</asp:ListItem>
                            <asp:ListItem Value="3">Spor Salonu</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="auto-style2">Açıklama</td>
                    <td align="left">
                        <asp:TextBox ID="TxtAciklama" runat="server" Rows="5" TextMode="MultiLine" Width="292px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet" OnClick="BtnKaydet_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
