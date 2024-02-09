using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace ConciFes.Admin
{
    public partial class PaketEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["ConciFestConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblPaket(Isim,Fiyat,Paket1,Paket2,Paket3,Paket4) values (@Isim,@Fiyat,@Paket1,@Paket2,@Paket3,@Paket4)", baglanti);
            komut.Parameters.AddWithValue("@Isim", TextIsim.Text.ToString());
            komut.Parameters.AddWithValue("@Fiyat", TextFiyat.Text.ToString());
            komut.Parameters.AddWithValue("@Paket1", TextOz1.Text.ToString());
            komut.Parameters.AddWithValue("@Paket2", TextOz2.Text.ToString());
            komut.Parameters.AddWithValue("@Paket3", TextOz3.Text.ToString());
            komut.Parameters.AddWithValue("@Paket4", TextOz4.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("PaketEkle.aspx");
        }
    }
}