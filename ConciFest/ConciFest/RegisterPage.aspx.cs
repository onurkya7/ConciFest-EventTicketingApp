using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ConciFes
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["ConciFestConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                // Kullanıcı oturumu yoksa default sayfasında kal
                var masterPage = this.Master as GuestPage;
                if (masterPage != null)
                {
                    var sectionContainer = masterPage.FindControl("sectionContainer") as HtmlGenericControl;
                    if (sectionContainer != null)
                    {
                        sectionContainer.Attributes["class"] = "section section-registerpage";
                    }
                }
            }
            else
            {
                // Kullanıcı oturumu varsa üye sayfasına yönlendir
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();

            string kullaniciAdi = TextUserName.Text.Trim();
            string sifre = TextSifre.Text.Trim();
            string ad = TextAd.Text.Trim();
            string soyad = TextSoyad.Text.Trim();
            string mail = TextEmail.Text.Trim();

            if (kullaniciAdi == "" || sifre == "" || ad == "" || soyad == "" || mail == "")
            {
                Label1.Text = "Tüm alanları doldurunuz.";
                Label1.Visible = true;
            }
            else
            {
                // Kullanıcı adının veritabanında olup olmadığını kontrol et
                SqlCommand kontrolKomut = new SqlCommand("SELECT COUNT(*) FROM tblKullanici WHERE UserName = @UserName", baglanti);
                kontrolKomut.Parameters.AddWithValue("@UserName", kullaniciAdi);
                int kullaniciAdiSayisi = (int)kontrolKomut.ExecuteScalar();

                if (kullaniciAdiSayisi > 0)
                {
                    Label1.Text = "Kullanıcı adı alınamaz ve şifre 6-20 karakter arasında olmalı";
                    Label1.Visible = true;
                }
                else if (sifre.Length < 6 || sifre.Length > 20)
                {
                    Label1.Text = "Şifre 6-20 karakter arasında olmalı";
                    Label1.Visible = true;
                }
                else
                {
                    // Kullanıcı adı ve şifre uygun, yeni kullanıcıyı ekle
                    SqlCommand komut = new SqlCommand("INSERT INTO tblKullanici(UserName, Sifre, Ad, Soyad, Mail, Durum) VALUES (@UserName, @Sifre, @Ad, @Soyad, @Mail, @Durum)", baglanti);
                    komut.Parameters.AddWithValue("@UserName", kullaniciAdi);
                    komut.Parameters.AddWithValue("@Sifre", sifre);
                    komut.Parameters.AddWithValue("@Ad", ad);
                    komut.Parameters.AddWithValue("@Soyad", soyad);
                    komut.Parameters.AddWithValue("@Mail", mail);
                    komut.Parameters.AddWithValue("@Durum", "Uye");
                    komut.ExecuteNonQuery();
                    baglanti.Close();
                    Response.Redirect("Profile.aspx");
                }
            }
        }

    }
}
