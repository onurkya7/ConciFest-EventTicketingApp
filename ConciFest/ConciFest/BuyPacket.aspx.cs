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
    public partial class BuyPacket : System.Web.UI.Page
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
                        sectionContainer.Attributes["class"] = "section section-buypacketpage";
                    }
                }

                string kullaniciAdi = Session["Kullanici"].ToString();

                SqlConnection baglanti = new SqlConnection(conf_baglanti);
                baglanti.Open();

                SqlCommand kullaniciBilgiKomut = new SqlCommand("SELECT UserName, Mail FROM tblKullanici WHERE UserName = @UserName", baglanti);
                kullaniciBilgiKomut.Parameters.AddWithValue("@UserName", kullaniciAdi);

                using (SqlDataReader kullaniciBilgiReader = kullaniciBilgiKomut.ExecuteReader())
                {
                    if (kullaniciBilgiReader.Read())
                    {
                        string email = kullaniciBilgiReader["Mail"].ToString();

                        TextUserName.Text = kullaniciAdi;
                        TextEmail.Text = email;
                    }
                    kullaniciBilgiReader.Close();
                }

                SqlCommand planBilgiKomut = new SqlCommand("SELECT Isim, Fiyat FROM tblPaket", baglanti);

                using (SqlDataReader planBilgiReader = planBilgiKomut.ExecuteReader())
                {
                    while (planBilgiReader.Read())
                    {
                        string isim = planBilgiReader["Isim"].ToString();
                        string fiyat = planBilgiReader["Fiyat"].ToString();

                        ListItem listItem = new ListItem(isim + " - " + fiyat + " TL");
                        DropDownListOptions.Items.Add(listItem);
                    }
                    planBilgiReader.Close();
                }

                baglanti.Close();
            }

            else
            {
                // Kullanıcı oturumu varsa üye sayfasına yönlendir
                Response.Redirect("~/LoginPage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Payment.aspx");
        }


    }
}