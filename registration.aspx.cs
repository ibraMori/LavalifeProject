using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LavalifeProject
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalifeDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                RemplirRaisons();
                RemplirEthnicites();
                RemplirSexes();
            }
        }
        private void RemplirSexes()
        {

            con.Open();
            string sql = "SELECT sexe from SexeTypes ";
            SqlCommand mycmd = new SqlCommand(sql, con);

            SqlDataReader reader = mycmd.ExecuteReader();

            bool FirstTime = true;
            while (reader.Read())
            {

                ListItem list1 = new ListItem();
                list1.Text = reader["sexe"].ToString();


                cboSexes.Items.Add(list1);
                if (FirstTime)
                {


                    FirstTime = false;
                    cboSexes.SelectedIndex = 0;

                }
            }
            con.Close();
        }
        private void RemplirEthnicites()
        {

            con.Open();
            string sql = "SELECT ethnicité from Ethnicites ";
            SqlCommand mycmd = new SqlCommand(sql, con);

            SqlDataReader reader = mycmd.ExecuteReader();

            bool FirstTime = true;
            while (reader.Read())
            {

                ListItem list1 = new ListItem();
                list1.Text = reader["ethnicité"].ToString();


                cboEthnicités.Items.Add(list1);
                if (FirstTime)
                {


                    FirstTime = false;
                    cboEthnicités.SelectedIndex = 0;

                }
            }
            con.Close();
        }
        private void RemplirRaisons()
        {

            con.Open();
            string sql = "SELECT raison from Raisons ";
            SqlCommand mycmd = new SqlCommand(sql, con);

            SqlDataReader reader = mycmd.ExecuteReader();

            bool FirstTime = true;
            while (reader.Read())
            {

                ListItem list1 = new ListItem();
                list1.Text = reader["raison"].ToString();


                cboRaisons.Items.Add(list1);
                if (FirstTime)
                {


                    FirstTime = false;
                    cboRaisons.SelectedIndex = 0;

                }
            }
            con.Close();
        }

        protected void btnInscrire_Click(object sender, EventArgs e)
        {
            // recuperation numero et mot de passe du membre
            string num = txtNumero.Text.Trim();
            string eml = txtEmail.Text.Trim().ToLower();
            DateTime birthDay = DateTime.Parse(txtAnnDate.Text);
            
            string mopass = txtMotPasse.Text.Trim();
            string prenom = txtPrenom.Text.Trim();
            string nom = txtNom.Text.Trim();
            string ethni = cboEthnicités.SelectedItem.Text.Trim();
            string raison = cboRaisons.SelectedItem.Text.Trim();
            string sexes = cboSexes.SelectedItem.Text.Trim();




            //Etape 1: se connecter a la Bd par une connection 


            con.Open();
            //select* from Membres where numero = 'et001' AND MotdePasse = 'rizriz'
            //Etape 2 creer une commande pour la requete SQL
            SqlCommand mycmd = new SqlCommand();
            string sql = "SELECT Numero, Nom FROM Membres ";
            sql = sql + "WHERE Numero ='" + num + "'";



            mycmd.CommandText = sql;
            mycmd.Connection = con;

            //Etape 3: creer un datareader en executant la commande
            SqlDataReader myReader = mycmd.ExecuteReader();

            // Tester le contenu de myRder pour verifier si le user est un etudiant
            if (myReader.Read() == true) // si myRder est vide c-a-dire il n'est pas etudiant
            {


                myReader.Close();

                con.Close();

                lblErreur.Text = "vous etes deja membre";

            }
            else// user n'est pas pas membre, donc il faut l'inscrire 
            {
                myReader.Close();
                sql = "INSERT INTO Membres(Numero, prenom, nom, sexe, naissance, ethnicité, raison, motDePasse, email) ";
                sql += "Values('" + num + "', '" + prenom + "', '" + nom + "', '" + sexes + "', @Date , '" + ethni + "', '" + raison + "', '" + mopass + "', '" + eml + "' )";

                SqlCommand mycmd3 = new SqlCommand();

                mycmd3.CommandText = sql;
                mycmd3.Parameters.AddWithValue("@Date", birthDay);
                mycmd3.Connection = con;

                mycmd3.ExecuteNonQuery();

                con.Close();
                Response.Redirect("index.aspx");
            }

        }
    }
}