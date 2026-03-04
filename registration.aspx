<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="LavalifeProject.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('Images/lavalife_bg_spring_2015.jpg');">
    <form id="form1" runat="server">
        <div>
            <section class="container" style="min-width:300px ">
	
	<div class="register-holder">
   		
   		<div class="col-md-8" style="position: relative; height: 100%; padding: 0px;">

   			<div class="backgrounds"><img class="selected" src="Images/ll_step1_img.jpg"></div>	    				    			
   		</div>
   		
   		<div class="col-md-4 col-sm-12" id="register">
   			
			<div class="lil-logo">
				<img  src="Images/ll_logo_registration_circle_sml.png">
			</div>
   			
   			<div class="step-1">
   				
   				<h2>Create Your Profile <br><span class="profSpan">AND RECEIVE A 7-DAY FREE TRIAL.</span></h2>
   				
   				<div class="step-content">
   					
   					<table>
                        <tr>
		                    <td colspan="2">
						                    <h4>nom d'utilisateur</h4>
						                    <asp:TextBox CssClass="box" ID="txtNumero" runat="server"></asp:TextBox>
		                    </td>
                        </tr>
						<tr>
							<td>
								<h4>Prenom</h4>
								<asp:TextBox CssClass="box" ID="txtPrenom" runat="server"></asp:TextBox>
							</td> 
							<td>
								<h4>Nom</h4>
								<asp:TextBox CssClass="box" ID="txtNom" runat="server"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<h4>je suis</h4>
								<asp:DropDownList CssClass="box"  ID="cboSexes" AutoPostBack="true" runat="server"></asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<h4>date de naissance</h4>
								<asp:TextBox TextMode="Date" CssClass="box" ID="txtAnnDate" runat="server" ></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<h4>addresse email</h4>
								<asp:TextBox  ID="txtEmail" CssClass="box" runat="server"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td >
								<h4>ethnicité</h4>
								<asp:DropDownList ID="cboEthnicités" CssClass="box" runat="server" AutoPostBack="true"></asp:DropDownList>										
							</td>
							<td >
								<h4>motif</h4>
								<asp:DropDownList ID="cboRaisons" CssClass="box" runat="server" AutoPostBack="true"></asp:DropDownList>
							</td>
						</tr>
						

						<tr>
							<td colspan="2">
								<h4>mot de passe</h4>
								<asp:TextBox TextMode="Password" CssClass="box"  ID="txtMotPasse" runat="server"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>
								<asp:Button CssClass="joinButton"  ID="btnInscrire" runat="server" Text="JOIN NOW" OnClick="btnInscrire_Click" />
                                
							</td>
						</tr>
   					</table>
                    
				    <div >
						<h4>Already a member? <a href="index.aspx">Log in.</a></h4>
                        <asp:Label ID="lblErreur" runat="server"> </asp:Label>
					</div>
				</div>
				
   			</div>
		</div>
	
	</div>

</section>
        </div>
    </form>
</body>
</html>
