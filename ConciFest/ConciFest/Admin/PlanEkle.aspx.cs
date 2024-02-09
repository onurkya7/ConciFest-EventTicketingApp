using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConciFes.Admin
{
    public partial class PlanEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["ConciFestConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/plan/" + ResimAd));
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
            SqlCommand komut = new SqlCommand("insert into tblPlan(Etkinlik,Isim,Soyisim,Tur,Sehir,Konum,Tarih_gun,Tarih_ay,Tarih_yil,Saat,Resim) values (@Etkinlik,@Isim,@Soyisim,@Tur,@Sehir,@Konum,@Tarih_gun,@Tarih_ay,@Tarih_yil,@Saat,@Resim)", baglanti);
            komut.Parameters.AddWithValue("@Etkinlik", TextEtkinlik.Text.ToString());
            komut.Parameters.AddWithValue("@Isim", TextIsim.Text.ToString());
            komut.Parameters.AddWithValue("@Soyisim", TextSoyisim.Text.ToString());
            komut.Parameters.AddWithValue("@Tur", TextTur.Text.ToString());
            komut.Parameters.AddWithValue("@Sehir", TextSehir.Text.ToString());
            komut.Parameters.AddWithValue("@Konum", TextKonum.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih_gun", TextGun.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih_ay", TextAy.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih_yil", TextYıl.Text.ToString());
            komut.Parameters.AddWithValue("@Saat", TextSaat.Text.ToString());
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("PlanEkle.aspx");
        }
    }
}