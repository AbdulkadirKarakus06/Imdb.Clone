<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="WebApp_UserControls1.AnaSayfa" %>

<%@ Register Src="~/NavBarUc.ascx" TagPrefix="uc1" TagName="NavBarUc" %>
<%@ Register Src="~/OrtakUc.ascx" TagPrefix="uc1" TagName="OrtakUc" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <uc1:OrtakUc runat="server" id="OrtakUc" />

</head>
<body>
    <uc1:navbaruc runat="server" id="NavBarUc" />

    <form id="form1" runat="server">
        <div class="container">
             <h3>Ana Sayfa</h3>
  <p>Bu Proje Bir User Controls (Kullanıcı Kontrol) Projesidir.</p>
             <p>&nbsp;</p>
             <p>
                 <asp:TextBox ID="TxtMail" runat="server"></asp:TextBox>
             </p>
             <p>
                 <asp:TextBox ID="TxtSubject" runat="server"></asp:TextBox>
             </p>
             <p>
                 <asp:TextBox ID="TxtMassage" runat="server"></asp:TextBox>
             </p>
             <p>
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="LblSonuc" runat="server"></asp:Label>
             </p>
        </div>
    </form>
</body>
</html>
