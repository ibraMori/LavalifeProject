using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LavalifeProject
{
    public partial class accueil : System.Web.UI.Page
    {
        DataSet mySet;

        SqlDataAdapter adpMbre;
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalifeDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblInfo.Text = "Bienvenue " + Session["MembrePrenom"] + " " + Session["MembreNom"];
                RemplirAges();
                RemplirEthnicites();
                RemplirRaisons();
                RemplirSexes();

                mySet = new DataSet();
                this.con.Open();

                // Remplir dataSet avec la table membres
                SqlCommand myCmd = new SqlCommand("SELECT * FROM Membres", this.con);
                // utiliser un dataAdapter pour remplir le dataSet avec la table membres
                adpMbre = new SqlDataAdapter(myCmd);
                // dataadapter va inserer une copie de la table membres
                adpMbre.Fill(mySet, "Membres");


                gridMembres.DataSource = mySet.Tables["Membres"];
                gridMembres.DataBind();
                gridMembres.Enabled = true;


                string numMbre = Session["MembreID"].ToString();

                
                // remplissage de la table de messages du membre
                SqlCommand mycmd = new SqlCommand();
                string sql = "SELECT Messages.messageId, Messages.Titre, Messages.Envoyeur, Membres.Nom FROM Messages, Membres WHERE Messages.Envoyeur = Membres.Numero AND Receveur ='" + numMbre + "'";
                mycmd.CommandText = sql;
                mycmd.Connection = con;

                //creation d'un datareader en executant la commande
                SqlDataReader myRder = mycmd.ExecuteReader();
                while (myRder.Read() == true)
                {
                    TableRow maligne = new TableRow();
                    TableCell macell = new TableCell();
                    macell.Text = "<br /> " + myRder["Titre"].ToString();
                    maligne.Cells.Add(macell);
                    tabMessages.Rows.Add(maligne);

                    // cellule du nom de l'envoyeur des messages
                    macell = new TableCell();
                    macell.Text = "<br /> " + myRder["Nom"].ToString();
                    maligne.Cells.Add(macell);
                    tabMessages.Rows.Add(maligne);

                    // cellule du nom des actions lire et effacer 
                    macell = new TableCell();
                    LinkButton inkLire = new LinkButton();
                    inkLire.Text = "Lire Message";
                    Int32 refMessage = Convert.ToInt32(myRder["messageId"]);
                    // associez une variable dans un lien
                    inkLire.PostBackUrl = "liremessage.aspx?refMsg=" + refMessage;
                    macell.Controls.Add(inkLire);



                    LinkButton lnkEfface = new LinkButton();
                    lnkEfface.Text = "</br>Effacer Message";

                    lnkEfface.PostBackUrl = "effaceMessage.aspx?refMsg=" + refMessage;
                    macell.Controls.Add(lnkEfface);
                    maligne.Cells.Add(macell);

                    tabMessages.Rows.Add(maligne);
                }
            }
            con.Close();
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
                if (FirstTime) {
                    ListItem list = new ListItem();
                    list.Text = "all";
                    lstSexes.Items.Add(list);
                    FirstTime = false;
                    lstSexes.SelectedIndex= 0;
                }

                ListItem list1 = new ListItem();
                list1.Text = reader["sexe"].ToString();


                lstSexes.Items.Add(list1);
                
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
                if (FirstTime)
                {
                    ListItem list = new ListItem();
                    list.Text = "all";
                    lstEthni.Items.Add(list);
                    FirstTime = false;
                    lstEthni.SelectedIndex = 0;
                }
                ListItem list1 = new ListItem();
                list1.Text = reader["ethnicité"].ToString();


                lstEthni.Items.Add(list1);
                
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
                if (FirstTime)
                {
                    ListItem list = new ListItem();
                    list.Text = "all";
                    lstRaison.Items.Add(list);
                    FirstTime = false;
                    lstRaison.SelectedIndex = 0;
                }
                ListItem list1 = new ListItem();
                list1.Text = reader["raison"].ToString();


                lstRaison.Items.Add(list1);
                
            }
            con.Close();
        }
        private void RemplirAges() {
            con.Open();
            string sql = "SELECT MIN(naissance) as naissance from Membres ";
            int ages = 0;
            SqlCommand mycmd = new SqlCommand(sql, con);

            SqlDataReader reader = mycmd.ExecuteReader();

            bool FirstTime = true;
            while (reader.Read())
            {
                if (FirstTime)
                {
                    ListItem list = new ListItem();
                    list.Text = "all";
                    lstAges.Items.Add(list);
                    FirstTime = false;
                    lstAges.SelectedIndex = 0;
                }
                DateTime tod = DateTime.Now;
                DateTime nais= DateTime.Parse(reader["naissance"].ToString());
                ages= tod.Year- nais.Year;
                if (nais.Month > tod.Month) {
                    ages--;
                }
                else if(tod.Month == nais.Month) {
                    if (nais.Day > tod.Day) {
                        ages--;
                    }
                }
                
                for(int i = 18; i <= ages; i += 10)
                {
                    int endAge = i + 9;
                    if (i == 18) {
                        endAge +=2;
                    }
                    string rangeAge = i + "-" + endAge;
                    ListItem list1 = new ListItem();
                    list1.Text = rangeAge;
                    lstAges.Items.Add(list1);
                    if (FirstTime)
                    {


                        FirstTime = false;
                       
                        i += 2;

                    }

                }
                


                
                
            }
            con.Close();

        }

        protected void btnEcrireMessage_Click(object sender, EventArgs e)
        {

        }
        private void rechercehPartenaire() {
            string raison, ethni, sexes, ages;
            DateTime birthday1=DateTime.Now , birthday2=DateTime.Now;
            string sql = "SELECT * FROM Membres ";
            bool addAnd = false;
            if(lstRaison.SelectedItem.Text != "all" || lstEthni.SelectedItem.Text != "all" || lstSexes.SelectedItem.Text != "all" || lstAges.SelectedItem.Text != "all")
            {
                sql += " WHERE ";
            }
            if(lstRaison.SelectedItem != null && lstRaison.SelectedItem.Text!="all")
            {
                if(addAnd) { 
                    sql += " AND ";
                }
                addAnd = true;
                raison = lstRaison.SelectedItem.Text;
                sql += "raison ='" + raison + "'";
            }
            if (lstEthni.SelectedItem != null && lstEthni.SelectedItem.Text != "all") {
                if (addAnd)
                {
                    sql += " AND ";
                }
                addAnd = true;
                ethni = lstEthni.SelectedItem.Text;
                sql += "ethnicité ='" + ethni + "'";
            }
            if(lstSexes.SelectedItem != null && lstSexes.SelectedItem.Text != "all")
            {
                if (addAnd)
                {
                    sql += " AND ";
                }
                addAnd = true;
                sexes = lstSexes.SelectedItem.Text;
                sql += "sexe ='" + sexes + "'";
            }
            if( lstAges.SelectedItem != null && lstAges.SelectedItem.Text != "all")
            {
                if (addAnd)
                {
                    sql += " AND ";
                }
                addAnd = true;
                ages = lstAges.SelectedItem.Text;
                int[] tabages = Array.ConvertAll(ages.Split('-'), int.Parse);
                
                birthday1= birthday1.AddYears(-tabages[0]);
                birthday2= birthday2.AddYears(-tabages[1]);
                sql += "naissance BETWEEN @DATE2 AND @DATE1";
                

            }
            mySet = new DataSet();
            con.Open();

            // Remplir dataSet avec la table membres
            SqlCommand myCmd = new SqlCommand(sql, con);
            if(lstAges.SelectedItem != null)
            {
                myCmd.Parameters.AddWithValue("@DATE1", birthday1);
                myCmd.Parameters.AddWithValue("@DATE2", birthday2);
                
            }
            // utiliser un dataAdapter pour remplir le dataSet avec la table membres
            adpMbre = new SqlDataAdapter(myCmd);
            adpMbre.Fill(mySet, "Membres");


            gridMembres.DataSource = mySet.Tables["Membres"];
            gridMembres.DataBind();
        }

        protected void lstSexes_SelectedIndexChanged(object sender, EventArgs e)
        {
            rechercehPartenaire();
        }

        protected void lstRaison_SelectedIndexChanged(object sender, EventArgs e)
        {
            rechercehPartenaire();
        }

        protected void lstEthni_SelectedIndexChanged(object sender, EventArgs e)
        {
            rechercehPartenaire();
        }

        protected void lstAges_SelectedIndexChanged(object sender, EventArgs e)
        {
            rechercehPartenaire();
        }

        protected void gridMembres_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mbrID = gridMembres.SelectedRow.Cells[0].Text;
            Session["receveurID"]= mbrID;
            Response.Redirect("ecrireMessage.aspx");
        }

        protected void btnEcrireMessage_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ecrireMessage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}