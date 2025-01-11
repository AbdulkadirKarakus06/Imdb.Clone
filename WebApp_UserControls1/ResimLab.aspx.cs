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
    
    public partial class ResimLab : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Veritabani"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from resimTable where resimKategori=2", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader = cmd.ExecuteReader();

            GridLab.DataSource = reader;
            GridLab.DataBind();
            con.Close();
            reader.Close();
        }

        protected void GridSanat_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}