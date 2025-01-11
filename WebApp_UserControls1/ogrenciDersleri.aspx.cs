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
    public partial class ogrenciDersleri : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand komut = new SqlCommand("select TCKimlikNo,ogrenciAdiSoyadi,dersAdi,not1 as Not_1,not2 as Not_2,odev as odev, sozlu as Sozlu " +
                    "from ogrenciDersleri,ogrenciKimlik,dersler " +
                    "where ogrTcKimlikNo=TCKimlikNo and dersKodu=dersId", conn);
                SqlDataReader dr;
                dr = komut.ExecuteReader();


                gwOgrenciDersleri.DataSource = dr;
                gwOgrenciDersleri.DataBind();
                conn.Close();
                dr.Close();

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string csv = string.Empty;

            // Add header
            for (int i = 1; i < gwOgrenciDersleri.HeaderRow.Cells.Count; i++)
            {
                csv += HttpUtility.HtmlDecode(gwOgrenciDersleri.HeaderRow.Cells[i].Text) + ';';
                //',' '\t'
            }
            csv += "\r\n";

            //Add rows
            foreach (GridViewRow row in gwOgrenciDersleri.Rows)
            {
                for (int i = 1; i < row.Cells.Count; i++)
                {
                    csv += HttpUtility.HtmlDecode(row.Cells[i].Text) + ';';
                }
                csv += "\r\n";
            }

            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.csv");
            Response.ContentType = "text/csv";

            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());

            Response.Output.Write(csv);
            // Response.Flush();
            Response.End();
        }
    }
}