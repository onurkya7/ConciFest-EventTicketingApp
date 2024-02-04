using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ConciFes
{
    public partial class Uye : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["ConciFestConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] != null)
            {
                // Kullanıcı oturumu yoksa default sayfasında kal
                var masterPage = this.Master as GuestPage;
                if (masterPage != null)
                {
                    var sectionContainer = masterPage.FindControl("sectionContainer") as HtmlGenericControl;
                    if (sectionContainer != null)
                    {
                        sectionContainer.Attributes["class"] = "section section-uyepage";
                    }
                }
            }
            else
            {
                // Kullanıcı oturumu varsa üye sayfasına yönlendir
                Response.Redirect("~/LoginPage.aspx");
            }
        }

        protected void buttonSend_Click(object sender, EventArgs e)
        {
            // Formdaki bilgileri al
            string name = txtName.Text.ToString();
            string email = txtEmail.Text.ToString();
            string company = txtCompany.Text.ToString();
            string message = TextMsg.Text.ToString();

            try
            {
                // Outlook SMTP ayarları
                SmtpClient client = new SmtpClient("smtp-mail.outlook.com", 587);
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("ahmet3434try@outlook.com", "34343434!");

                // E-posta oluştur
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("ahmet3434try@outlook.com");
                mail.To.Add("onur2323den@outlook.com");
                mail.Subject = "ConciFest İletişim";
                mail.Body = $"İsim: {name}\nEmail: {email}\nKurum İsmi: {company}\nMesaj: {message}";

                // E-postayı gönder
                client.Send(mail);

                // İletişim formunu temizle
                txtName.Text = "";
                txtEmail.Text = "";
                txtCompany.Text = "";
                TextMsg.Text = "";

                // Başarılı bir şekilde gönderildiğini göster
                lblMesaj.Text = "Mesajınız başarıyla iletildi..";
                lblMesaj.Visible = true;
            }
            catch (Exception ex)
            {
                // Hata durumunda hatayı göster
                lblMesaj.Text = "<script>alert('Mesaj gönderilirken bir hata oluştu. Lütfen daha sonra tekrar deneyin.');</script>";
                lblMesaj.Visible = true;
            }
        }
    }
}