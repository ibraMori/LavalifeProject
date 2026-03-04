using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LavalifeProject
{
    public partial class effaceMessage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalifeDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //recuperer le message et connecter a la Bd
            Int32 refMessage = Convert.ToInt32(Request.QueryString["refMsg"]);

            // Se connecter à la bd pour recuperer les messages du receveur
            

            con.Open();


            // Creation d'une commande pour la requete sql
            string sql = "DELETE  FROM Messages WHERE messageId=" + refMessage;
            SqlCommand mycmd = new SqlCommand(sql, con);

            // Creation d'un DataReader en executant la commande
            mycmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("accueil.aspx");
        }
    }
}