<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="WebApp_UserControls1.Hakkimizda" %>

<%@ Register Src="~/OrtakUc.ascx" TagPrefix="uc1" TagName="OrtakUc" %>
<%@ Register Src="~/NavBarUc.ascx" TagPrefix="uc1" TagName="NavBarUc" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <uc1:OrtakUc runat="server" ID="OrtakUc" />
</head>
<body>
    <uc1:NavBarUc runat="server" ID="NavBarUc" />
    <form id="form1" runat="server">
        <div class="container">
            HAKKIMIZDA
            <br />
            ----------------
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Visible="False" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
