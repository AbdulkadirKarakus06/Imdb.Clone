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
    public partial class ResimSanat : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from resimTable where resimKategori=1",con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader = cmd.ExecuteReader();

            GridSanat.DataSource = reader;
            GridSanat.DataBind();
            con.Close();
            reader.Close();

        }

        protected void GridSanat_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image1.Visible = true;
            TxtAciklama.Visible = true;
            TxtAciklama.Text = GridSanat.SelectedRow.Cells[1].Text;

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from resimTable where ID='" + GridSanat.SelectedRow.Cells[0].Text + "'", con);
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            reader.Read();
            Image1.ImageUrl = reader["resimYeri"].ToString();
        }
    }
}