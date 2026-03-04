using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LavalifeProject
{
    public partial class ecrireMessage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalifeDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
               

                con.Open();


                string sql = "SELECT Numero, Nom, Prenom FROM Membres ";


                SqlCommand mycmd = new SqlCommand(sql, con);

                //creation un datareader en executant la commande
                SqlDataReader myRder = mycmd.ExecuteReader();
                //remplir liste des receveurs avec les noms et numeros des membres
                while (myRder.Read())
                {

                    ListItem elm = new ListItem();

                    elm.Text = myRder["Prenom"]+" "+ myRder["Nom"].ToString() + " (" +
                        myRder["Numero"].ToString() + ")";
                    elm.Value = myRder["Numero"].ToString();
                    cboDestinataires.Items.Add(elm);

                }
                myRder.Close();
                con.Close();

            }
        }

        

        protected void brnAnnuler_Click(object sender, EventArgs e)
        {
            Response.Redirect("accueil.aspx");
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            string titre = txtTitre.Text;
            string msg = txtMessage.Text;
            string envoy = Session["MembreID"].ToString();
            string recev = cboDestinataires.SelectedItem.Value;

            con.Open();


            string sql = "INSERT INTO Messages(Titre,Message,Date,Envoyeur,Receveur,Nouveau) ";
            sql += "VALUES( '" + titre + "','" + msg + "','" + DateTime.Now.ToString();
            sql += "','" + envoy + "','" + recev + "','true')";
            SqlCommand mycmd = new SqlCommand(sql, con);
            mycmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("accueil.aspx");
        }
    }
}