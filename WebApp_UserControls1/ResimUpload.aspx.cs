using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_UserControls1
{
    public partial class ResimUpload : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
          
            Random rnd = new Random();// random nesnesi oluşturuldu
            try
            {
                if (FileUpload1.HasFile)//nesne dosyalıysa
                {
                     string dosya = rnd.Next(1000, 9999) + "_" + FileUpload1.FileName;

                    FileUpload1.SaveAs(Server.MapPath(@"~\upload\" + dosya));
                
                    SqlCommand komut = new SqlCommand("insert into  (resimYeri,resimKategori,resimAciklama) values (@ry,@rk,@ra)", conn);

                    komut.Parameters.Add("@ry", SqlDbType.NVarChar, 100).Value = "upload/" + dosya;
                    komut.Parameters.Add("@rk", SqlDbType.SmallInt).Value = DdlSiniflar.SelectedValue;
                    komut.Parameters.Add("@ra", SqlDbType.NVarChar, 100).Value = TxtAciklama.Text;
                    komut.ExecuteNonQuery();
                    Response.Write("<script type='text/javascript'>alert('Resim Kaydedildi..!');</script>");
                    conn.Close();


                }
                else
                {
                    Label1.Text = "Dosya seçilmedi";
                    return;

                }


            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                return;

            }

        }
    }
}