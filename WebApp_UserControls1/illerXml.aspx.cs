using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;


namespace WebApp_UserControls1
{
    public partial class illerXml : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand komut = new SqlCommand("select bolgeAdi,ilKodu,ilAdi from iller,bolgeler where ilBolgesi=bolgesi order by bolgeAdi,ilAdi", conn);
            SqlDataReader dr;
            dr = komut.ExecuteReader();


            Gridiller.DataSource = dr;
            Gridiller.DataBind();
            conn.Close();
            dr.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlDataAdapter adtr = new SqlDataAdapter("select bolgeAdi,ilKodu,ilAdi from iller,bolgeler where bolgeId=bolgesi and bolgeId=1 order by ilAdi", conn);

            DataTable dt = new DataTable();
            dt.TableName = "deneme";
            adtr.Fill(dt);
            dt.WriteXml(MapPath("XML_Data/iller.xml"));
        
            Response.Write("<script type='text/javascript'>alert('XML dosyası oluşturuldu..!');</script>");
            conn.Close();
            dt.Dispose();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string xmlDosya = "XML_Data/iller.xml";

            DataSet xmlVeri = XmlVerileriGetir(xmlDosya);

           Gridiller.DataSource = xmlVeri;
          Gridiller.DataBind();

        }
        private DataSet XmlVerileriGetir(string xmlDosya)
        {
            DataSet ds = new DataSet();
            if (File.Exists(MapPath(xmlDosya)))
            {
                ds.ReadXml(MapPath(xmlDosya));
            }
            return ds;
        }

    }
}