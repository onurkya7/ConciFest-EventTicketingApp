using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ConciFes
{
    public partial class Profile1 : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["ConciFestConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Kullanici"] != null)
                {
                    var masterPage = this.Master as GuestPage;
                    if (masterPage != null)
                    {
                        var sectionContainer = masterPage.FindControl("sectionContainer") as HtmlGenericControl;
                        if (sectionContainer != null)
                        {
                            sectionContainer.Attributes["class"] = "section section-profilpage";
                        }
                    }
                    string kullaniciAdi = Session["Kullanici"].ToString();

                    SqlConnection baglanti2 = new SqlConnection(conf_baglanti);
                    baglanti2.Open();

                    SqlCommand resimBulKomut = new SqlCommand("SELECT Resim FROM tblKullanici WHERE UserName = @UserName", baglanti2);
                    resimBulKomut.Parameters.AddWithValue("@UserName", kullaniciAdi);

                    string resimPath = string.Empty;
                    using (SqlDataReader resimBulReader = resimBulKomut.ExecuteReader())
                    {
                        if (resimBulReader.Read())
                        {
                            string resimAdi = resimBulReader["Resim"].ToString();
                            resimPath = "~/images/profiles/" + resimAdi;

                            imgResim.ImageUrl = ResolveUrl(resimPath);
                        }
                        resimBulReader.Close();
                    }
                }
                else
                {
                    Response.Redirect("LoginPage.aspx"); // Kullanıcı oturumu yoksa giriş sayfasına yönlendir
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/profiles/" + ResimAd));
                    lblResim.Text = ResimAd.ToString();
                }
                else
                {
                    lblResim.Text = "Lütfen doğru uzantıda resim yükleyin..";
                }
            }
            else
            {
                lblResim.Text = "Lütfen bir resim seçin..";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();

            string kullanici = Session["Kullanici"].ToString();

            // Kullanıcıyı bulmak için SELECT sorgusu yapılıyor
            SqlCommand kullaniciBulKomut = new SqlCommand("SELECT UserId FROM tblKullanici WHERE UserName = @UserName", baglanti);
            kullaniciBulKomut.Parameters.AddWithValue("@UserName", kullanici);
            int userId = (int)kullaniciBulKomut.ExecuteScalar();

            SqlCommand komut = new SqlCommand("UPDATE tblKullanici SET", baglanti);

            if (!string.IsNullOrEmpty(TextSifre.Text) && !string.IsNullOrEmpty(TextSifreTekrar.Text))
            {
                if (SifreKontrol.SifreEslesiyorMu(TextSifre.Text, TextSifreTekrar.Text))
                {

                    komut.CommandText += " Sifre = @Sifre,";
                    komut.Parameters.AddWithValue("@Sifre", TextSifre.Text);
                }
                else
                {
                    lblMesaj.Text = "Şifreler eşleşmiyor veya şifre en az 6 karakter olmalıdır.";
                    lblMesaj.Visible = true;
                    return; 
                }
            }

            if (!string.IsNullOrEmpty(TextEmail.Text))
            {
                komut.CommandText += " Mail = @Mail,";
                komut.Parameters.AddWithValue("@Mail", TextEmail.Text);
            }

            if (!string.IsNullOrEmpty(TextAd.Text))
            {
                komut.CommandText += " Ad = @Ad,";
                komut.Parameters.AddWithValue("@Ad", TextAd.Text);
            }

            if (!string.IsNullOrEmpty(TextSoyad.Text))
            {
                komut.CommandText += " Soyad = @Soyad,";
                komut.Parameters.AddWithValue("@Soyad", TextSoyad.Text);
            }

            if (!string.IsNullOrEmpty(lblResim.Text))
            {
                komut.CommandText += " Resim = @Resim,";
                komut.Parameters.AddWithValue("@Resim", lblResim.Text);
            }

            komut.CommandText = komut.CommandText.TrimEnd(','); // Son virgülü kaldır
            komut.CommandText += " WHERE UserId = @UserId";
            komut.Parameters.AddWithValue("@UserId", userId);

            komut.ExecuteNonQuery();

            lblMesaj.Text = "Bilgiler Güncellendi..";
            lblMesaj.Visible = true;

        }

    }
}