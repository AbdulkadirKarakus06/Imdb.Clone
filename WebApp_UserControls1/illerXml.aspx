<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="illerXml.aspx.cs" Inherits="WebApp_UserControls1.illerXml" %>

<%@ Register Src="~/NavBarUc.ascx" TagPrefix="uc1" TagName="NavBarUc" %>
<%@ Register Src="~/SideBarAdmin.ascx" TagPrefix="uc1" TagName="SideBarAdmin" %>
<%@ Register Src="~/OrtakUc.ascx" TagPrefix="uc1" TagName="OrtakUc" %>




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
        <uc1:SideBarAdmin runat="server" ID="SideBarAdmin" />
        <div align="center">

            <table class="auto-style1">
                <tr>
                    <td  valign="top">
                        <asp:GridView ID="Gridiller" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                    </td>
                     <td  valign="top">
                        <asp:Button ID="Button1" runat="server" Text="Listeyi XML dosyasına al" OnClick="Button1_Click" />
                         <br />
                         <asp:Button ID="Button2" runat="server" Text="XML dosyasını Gride aktar" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
