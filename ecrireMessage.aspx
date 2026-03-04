<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ecrireMessage.aspx.cs" Inherits="LavalifeProject.ecrireMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type ="text/css">
        table{
            margin:auto;
            width:650px;
          
            font-weight: bold;
            background-color:lightpink;
            border-radius:8px;


        
        }
        h1{
            text-align:center;
            color:red;
        }
    </style>
</head>
<body style="background-image: url(Images/lavalife_bg_spring_2015.jpg)">
    <form id="form1" runat="server">
        <image class="signImage" src="Images/ll_logo_registration.png"></image>
    <div>
        <h1 >LavaLife Zone d'ecriture de Message <br />  
               </h1>

            <table>
                <tr>
                   <td>
                       Receveur du message

                    </td>
                    <td>
                        <asp:DropDownList ID="cboDestinataires" runat="server" foreColor="Blue" Width="400px"></asp:DropDownList>
                    </td>
                </tr>
                  
                <tr>
                   <td>
                       Titre du message 
                    </td>
                    <td>
                         <asp:TextBox ID="txtTitre" runat="server" Font-Bold="True" ForeColor="Blue" Width="400px"></asp:TextBox>
                     </td>
                </tr>
  
                <tr>
                   <td colspan="2">
                       contenu du message
                     </td>
                            
                 </tr>
                                    
                <tr>
                   <td colspan="2">
                       <asp:TextBox ID="txtMessage" runat="server" Font-Bold="True" ForeColor="Blue" TextMode="MultiLine" Width="580px" Height="300px"></asp:TextBox>
                        </td>
                         
                                         </tr>
                <tr>
                   <td>
                       <asp:Button ID="btnEnvoyer" runat="server" Text="Envoyer" Width="150" Font-Bold="True" OnClick="btnEnvoyer_Click"/>

                        </td>
                             <td>
                                  <asp:Button ID="brnAnnuler" runat="server" Text="Annuler" Width="150" Font-Bold="True" OnClick="brnAnnuler_Click" />
                                   </td>
                                         </tr>
                  


            </table>


     
    </div>
</form>
</body>
</html>
