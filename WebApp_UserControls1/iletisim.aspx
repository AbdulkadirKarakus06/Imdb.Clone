<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="WebApp_UserControls1.iletisim" %>

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
     
                <div class="container-fluid bg-grey">
  <h2 class="text-center">İLETİŞİM</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>En kısa zamanda tarafınızıda mail üzerinden dönüş yapılacaktır.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Ankara-TÜRKİYE</p>
      <p><span class="glyphicon glyphicon-phone"></span> +90 5554567890</p>
      <p><span class="glyphicon glyphicon-envelope"></span> bilgi@bilisimegitim.com</p>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          
             <asp:TextBox ID="TxtName" class="form-control"  placeholder="Adınız" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtName" ErrorMessage="Lütfen adınızı giriniz." ForeColor="Red" ValidationGroup="vdg">*</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="REV1" runat="server" ControlToValidate="TxtName" ErrorMessage="Geçersiz karakter girildi." ForeColor="Red" ValidationExpression="^[^'-]*$
" ValidationGroup="vdg">*</asp:RegularExpressionValidator>
        </div>
        <div class="col-sm-6 form-group">
       
         <asp:TextBox ID="txtEmail" class="form-control"  placeholder="mail adresiniz" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail yanlış,tekrar giriş yapınız." ForeColor="Red" ValidationGroup="vdg">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Geçersiz karakter kullanımı." ForeColor="Red" ValidationExpression="^[^'-]*$
" ValidationGroup="vdg">*</asp:RegularExpressionValidator>
        </div>
      </div>
    
        <asp:TextBox ID="TxtAciklama" runat="server" placeholder="Açıklama" TextMode="MultiLine" Rows="5" class="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtAciklama" ErrorMessage="Açıklama satırı boş geçilemez." ForeColor="Red" ValidationGroup="vdg">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="REV3" runat="server" ControlToValidate="TxtAciklama" ErrorMessage="Geçersiz karakter kullanımı." ForeColor="Red" ValidationExpression="^[^'-]*$
" ValidationGroup="vdg">*</asp:RegularExpressionValidator>
      <div class="row">
        <div class="col-sm-12 form-group">
         
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtName" ErrorMessage="Lütfen boş bırakılan alanları doldurunuz." ForeColor="Red" ValidationGroup="vdg">*</asp:RequiredFieldValidator>
         
            <asp:Button ID="BtnGonder" runat="server" Text="Gönder" class="btn btn-default pull-right" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="vdg" Width="1171px" />
        </div>
      </div>
    </div>
  </div>
</div>

    </form>
</body>
</html>
