using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LavalifeProject
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            // recuperation numero et mot de passe du membre
            string num = txtNumMember.Text.Trim();
            string motpass = txtMotPasse.Text.Trim();

            //Etape 1: se connecter a la Bd par une connection 
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalifeDB;Integrated Security=True";
            mycon.Open();
            //creation une commande pour la requete SQL
            SqlCommand mycmd = new SqlCommand();
            string sql = "SELECT numero, prenom, nom FROM Membres ";
            sql = sql + "WHERE Numero ='" + num + "' AND ";
            sql += "motDePasse = '" + motpass + "'";
            mycmd.CommandText = sql;
            mycmd.Connection = mycon;


            SqlDataReader myReader = mycmd.ExecuteReader();

            // Tester le contenu de myRder pour verifier si le membre existe
            if (myReader.Read() == false) // si mreder est vide
            {
                mycon.Close();
                lblErreur.Text = "Numero ou mot de passe invalide";

            }
            else// membre existe 
            {
                // sauvegarder numero , prenom, nom du membre dans des variables globales
                Session["MembreID"] = myReader["numero"];
                Session["MembreNom"] = myReader["nom"];
                Session["MembrePrenom"] = myReader["prenom"];

                mycon.Close();
                Response.Redirect("accueil.aspx");
            }
        }

        protected void btnInscrire_Click(object sender, EventArgs e)
        {
            Response.Redirect("inscrire.aspx");
        }
    }
}