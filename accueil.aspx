<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accueil.aspx.cs" Inherits="LavalifeProject.accueil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    table{
        margin:auto;
        width:800px;
         border-radius:10px;
         padding:2px;
         border-spacing:4px;
         background-color:antiquewhite;
         font-weight:bold;
         color:beige;
    }
     .auto-style1 {
      width: 100%;
      border-style: solid;
      border-width: 1px;
}
    .btnREt{
        width:150px;
        height:75px;
        font-size:18px;
        background-color:beige;
        border-radius:10px;
        color:red;
        margin-left:900px;
    }
</style>
</head>
<body style="background-image: url(Images/lavalife_bg_spring_2015.jpg)">
    <form id="form1" runat="server">
        
        <image class="signImage" src="Images/ll_logo_registration.png"></image>
        <asp:Button CssClass="btnREt" OnClick="Button1_Click" ID="Button1" runat="server" Text="Deconnecter" />
        <div>
           
            <hr/>
            <asp:Label ID="lblInfo" runat="server" font-Bold ="true" ForeColor ="Red" Font-Size="40px"></asp:Label>
            <br />
            <h2 style="text-align:center; color:red">Boite de recption de messages</h2>
            <br />
            <asp:Table ID="tabMessages" ForeColor="DarkBlue" runat="server" Font-Bold="True" GridLines="Both" Width="600px">
                <asp:TableRow BackColor="#66ccff" BorderColor="Navy">


                    <asp:TableCell Text="Titres Messages"></asp:TableCell>
                    <asp:TableCell Text="Envoyeurs"></asp:TableCell>
                    <asp:TableCell Text="Actions"></asp:TableCell>



                </asp:TableRow>
            </asp:Table>
            <p style="text-align:center; color:red">
                <asp:Button ID="btnEcrireMessage" runat="server" Text="Composer Nouveau Message" Font-Bold="True" BackColor="#ff0000" Width="200px" OnClick="btnEcrireMessage_Click1" />
            </p>
            <br />
            <h2 style="text-align:center;color:red ">Recherche de partenaires</h2>
            <br />
                        <table>
                            <tr>
                                <td>
                                                        Choisir un sexe<br />
                                <asp:ListBox ID="lstSexes" runat="server" AutoPostBack="True" Font-Bold="True" ForeColor="Blue" Height="100" Width="200" OnSelectedIndexChanged="lstSexes_SelectedIndexChanged"></asp:ListBox>
                                </td>
                                <td>
                                                        Choisir une ethnicité <br />
                                <asp:ListBox ID="lstEthni" runat="server" AutoPostBack="True" Font-Bold="True" ForeColor="Blue" Height="100" Width="200" OnSelectedIndexChanged="lstEthni_SelectedIndexChanged"></asp:ListBox>
                                </td>
                                <td>
                                                        Choisir un groupe d'age<br />
                                <asp:ListBox ID="lstAges" runat="server" AutoPostBack="True" Font-Bold="True" ForeColor="Blue" Height="100" Width="200" OnSelectedIndexChanged="lstAges_SelectedIndexChanged"></asp:ListBox>
                                </td>
                                <td>
                                                        Choisir un motif <br />
                                <asp:ListBox ID="lstRaison" runat="server" AutoPostBack="True" Font-Bold="True" ForeColor="Blue" Height="100" Width="200" OnSelectedIndexChanged="lstRaison_SelectedIndexChanged"></asp:ListBox>
                                </td>                                
                           </tr>
                                <tr>
                                <td colspan="4">
                                <asp:GridView ID="gridMembres" runat="server" BackColor="#F0FFFF"  BorderStyle="Solid" BorderWidth="2" Font-Bold="True" ForeColor="#0000FF" Width="100%" OnSelectedIndexChanged="gridMembres_SelectedIndexChanged" ></asp:GridView>
                                </td>
                                </tr>
 
                     </table>

        </div>
    </form>
</body>
</html>
