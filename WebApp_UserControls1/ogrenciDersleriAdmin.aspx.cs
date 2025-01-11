using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_UserControls1
{
    public partial class ogrenciDersleriAdmin : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand komut = new SqlCommand("select ogrenciAdiSoyadi,dersAdi,not1,not2,odev,sozlu from OgrenciKimlik,dersler,ogrenciDersleri where ogrTCKimlikNo=TCKimlikNo and dersId=OgrenciDersId order by ogrenciAdiSoyadi", conn);
            SqlDataReader dr;
            dr = komut.ExecuteReader();


            GridOgrenciIsleri.DataSource = dr;
            GridOgrenciIsleri.DataBind();
            conn.Close();
            dr.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlDataAdapter adtr = new SqlDataAdapter("select ogrenciAdiSoyadi,dersAdi,not1,not2,odev,sozlu from OgrenciKimlik,dersler,ogrenciDersleri where ogrTCKimlikNo=TCKimlikNo and dersId=OgrenciDersId order by ogrenciAdiSoyadi", conn);

            DataTable dt = new DataTable();
            dt.TableName = "deneme";
            adtr.Fill(dt);
            dt.WriteXml(MapPath("XML_Data/ogrenciNot.xml"));

            Response.Write("<script type='text/javascript'>alert('XML dosyası oluşturuldu..!');</script>");
            conn.Close();
            dt.Dispose();
        }
    }
}