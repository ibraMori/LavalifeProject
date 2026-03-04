using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LavalifeProject
{
    public partial class liremessage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalifeDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            // recuperez le refMessage envoye a partir de la page acceuil
            Int32 refMessage = Convert.ToInt32(Request.QueryString["refMsg"]);
            litMessageInfo.Text = refMessage.ToString();

            

            con.Open();


            string sql = "SELECT * FROM Messages ";
            sql = sql + "WHERE messageId = " + refMessage;

            SqlCommand mycmd = new SqlCommand(sql, con);

            //creation un datareader en executant la commande
            SqlDataReader myRder = mycmd.ExecuteReader();
            if (myRder.Read() == true)
            {
                string msg = "<p style='font-weight:bold; font-size:25px; background-color:beige; color:red'>Titre :</u><br/>";
                msg = msg + myRder["Titre"] + "</p>";

                msg = "<p style='font-weight:bold; font-size:25px; background-color:beige; color:red'>Date :</u><br/>";
                msg = msg + myRder["Date"] + "</p>";

                msg = "<p style='font-weight:bold; font-size:20px; background-color:beige; color:red'>Contenu :</u><br/>";
                msg = msg + myRder["Message"] + "</p>";


                litMessageInfo.Text = msg;
            }
            con.Close();
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("accueil.aspx");
        }
    }
}