<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Duyurular.aspx.cs" Inherits="WebApp_UserControls1.Duyurular" %>

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
    duyurular
     <br />
     ----------------
 </div>
    </form>
</body>
</html>
