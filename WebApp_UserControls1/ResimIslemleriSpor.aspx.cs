using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_UserControls1
{
    public partial class ResimIslemleriSpor : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand komut = new SqlCommand("select * from resimTable where resimKategori=3", conn);
                SqlDataReader dr;
                dr = komut.ExecuteReader();
                dr.Read();  //Bu satır SqlDataReader nesnesi boş gelirse yazılacaktır. DataReader nesnesi gelen kayıtların tümünü tek satırda hafızaya alır. Hücresel olarak böölmez. Bu nedenle nesnenin Read methodu ile kayıtları hücrelere bölüyoruz.
                txtAciklama.Text = dr["resimAciklama"].ToString();
                Image1.ImageUrl = dr["resimYeri"].ToString();
                conn.Close();
                dr.Close();
            }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand komut = new SqlCommand("select * from resimTable ", conn);
            SqlDataReader dr;
            dr = komut.ExecuteReader();


            GridSporResim.DataSource = dr;
            GridSporResim.DataBind();
            conn.Close();
            dr.Close();
        }

        protected void GridSporResim_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtAciklama.Text = GridSporResim.SelectedRow.Cells[1].Text;

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand komut = new SqlCommand("select * from resimTable where ID='" + GridSporResim.SelectedRow.Cells[0].Text + "'", conn);
            SqlDataReader dr;
            dr = komut.ExecuteReader();
            dr.Read();
            Image1.ImageUrl = dr["resimYeri"].ToString();
            //Eğer GridView e resim yolu field alınmışsa aşağıdaki gibi gridView in ilgili hücresindeki resim yolunu da gösterebilirsiniz.

            //Image1.ImageUrl = "~/" + GridView1.SelectedRow.Cells[3].Text;

        }
    }
}