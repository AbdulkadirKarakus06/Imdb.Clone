<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogrenciDersleri.aspx.cs" Inherits="WebApp_UserControls1.ogrenciDersleri" %>

<%@ Register Src="~/OrtakUc.ascx" TagPrefix="uc1" TagName="OrtakUc" %>
<%@ Register Src="~/NavBarUc.ascx" TagPrefix="uc1" TagName="NavBarUc" %>
<%@ Register Src="~/SideBarUser.ascx" TagPrefix="uc1" TagName="SideBarUser" %>




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
    </style>
</head>
<body>
    <uc1:NavBarUc runat="server" ID="NavBarUc" />
    <form id="form1" runat="server">
        <uc1:SideBarUser runat="server" ID="SideBarUser" />
        <div align="center">


            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:GridView ID="gwOgrenciDersleri" runat="server">
                        </asp:GridView>
                        <br />
                        <asp:Button ID="btnListeAL" runat="server" OnClick="Button1_Click" Text="Listeyi excel e al" />
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
