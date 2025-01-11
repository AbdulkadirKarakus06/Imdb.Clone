using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_UserControls1
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                try
                {
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("gencyazilimcilar2024@gmail.com");
                    mail.To.Add(TxtMail.Text);
                    mail.Subject = TxtSubject.Text;
                    mail.Body = TxtMassage.Text;
                    SmtpClient message = new SmtpClient();
                    message.Credentials = new NetworkCredential("gencyazilimcilar2024@gmail.com", "ufiycrexnceszkat");
                    message.Port = 587;
                    //  message.Port = 465;
                    message.Host = "smtp.gmail.com";//Smtp:Simple Mail Transfer Protocol (Basit Posta Aktarım Protokolü) 
                    message.EnableSsl = true;
                    message.Send(mail);
                    LblSonuc.Text = "Mail gönderildi";
                }
                catch (Exception ex)
                {
                    LblSonuc.Text = ex.Message;
                }
            }
    }
}