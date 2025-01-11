<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResimLab.aspx.cs" Inherits="WebApp_UserControls1.ResimLab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridLab" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" OnSelectedIndexChanged="GridSanat_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="resimAciklama" HeaderText="Açıklama" />
                    <asp:ImageField DataImageUrlField="resimYeri" HeaderText="Resim">
                        <ControlStyle Height="100%" Width="100%" />
                        <ItemStyle Height="100px" Width="150px" />
                    </asp:ImageField>
                    <asp:ButtonField CommandName="select" HeaderText="Seç" Text="Seç" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
