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
    public partial class LoginPage1 : System.Web.UI.Page
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
                        sectionContainer.Attributes["class"] = "section section-loginpage";
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
            SqlCommand komut = new SqlCommand("SELECT * FROM tblKullanici WHERE UserName = @UserName AND Sifre = @Sifre", baglanti);
            komut.Parameters.AddWithValue("@UserName", TextUserName.Text.ToString());
            komut.Parameters.AddWithValue("@Sifre", TextSifre.Text.ToString());
            SqlDataReader oku = komut.ExecuteReader();

            if (oku.Read())
            {
                string durum = oku["Durum"].ToString();

                if (durum == "Admin")
                {
                    Session["Kullanici"] = oku["Durum"].ToString();
                    Response.Redirect("~/Admin/Default.aspx");
                }
                else if (durum == "Uye")
                {
                    Session["Kullanici"] = oku["UserName"].ToString();
                    Response.Redirect("~/Profile.aspx");
                }
                else
                {
                    Label1.Text = "Geçersiz kullanıcı durumu!";
                    Label1.Visible = true;
                }
            }
            else
            {
                Label1.Text = "Kullanıcı adı ve/veya şifre hatalı!";
                Label1.Visible = true;
            }

            oku.Close();
            baglanti.Close();
            baglanti.Dispose();


        }
    }
}