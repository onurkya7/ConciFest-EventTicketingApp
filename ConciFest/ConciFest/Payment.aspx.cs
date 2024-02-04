using Stripe;
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
    public partial class Payment : System.Web.UI.Page
    {
        public string clientSecret = "";
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
                        sectionContainer.Attributes["class"] = "section section-buyticketpage";
                    }
                }

                string kullaniciAdi = Session["Kullanici"].ToString();

                SqlConnection baglanti = new SqlConnection(conf_baglanti);
                baglanti.Open();

                SqlCommand kullaniciBilgiKomut = new SqlCommand("SELECT UserName, Ad, Soyad, Mail FROM tblKullanici WHERE UserName = @UserName", baglanti);
                kullaniciBilgiKomut.Parameters.AddWithValue("@UserName", kullaniciAdi);

                using (SqlDataReader kullaniciBilgiReader = kullaniciBilgiKomut.ExecuteReader())
                {
                    if (kullaniciBilgiReader.Read())
                    {
                        string email = kullaniciBilgiReader["Mail"].ToString();
                        string ad = kullaniciBilgiReader["Ad"].ToString();
                        string soyad = kullaniciBilgiReader["Soyad"].ToString();

                        TextUserName.Text = kullaniciAdi;
                        TextEmail.Text = email;
                        TextAd.Text = ad;
                        TextSoyad.Text = soyad;

                    }
                    kullaniciBilgiReader.Close();
                }


                baglanti.Close();

                // Create a payment intent, expose it's client secret publicly.
                var options = new PaymentIntentCreateOptions
                {
                    Amount = 60,
                    Currency = "usd",
                    PaymentMethodTypes = new List<string>
                    {
                        "card",
                    },
                };
                var service = new PaymentIntentService();
                var paymentIntent = service.Create(options);
                clientSecret = paymentIntent.ClientSecret;


            }

            else
            {
                // Kullanıcı oturumu varsa üye sayfasına yönlendir
                Response.Redirect("~/LoginPage.aspx");
            }

        }
    }
}

