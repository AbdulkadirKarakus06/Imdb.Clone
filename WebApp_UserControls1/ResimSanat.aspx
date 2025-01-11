<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResimSanat.aspx.cs" Inherits="WebApp_UserControls1.ResimSanat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridSanat" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridSanat_SelectedIndexChanged">
            </asp:GridView>
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <asp:TextBox ID="TxtAciklama" runat="server"></asp:TextBox>
        </di>
    </form>
</body>
</html>
