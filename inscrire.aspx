<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscrire.aspx.cs" Inherits="LavalifeProject.inscrire" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.container{
			    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    display: block;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    width: 1170px;
    min-width: 300px !important;
		}
		.register-holder {
			    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    margin-right: -15px;
    margin-left: -15px;
    height: 768px;
    border: 1px solid #fff !important;
    position: relative;
    border-radius: 5px;
		}
		.col-md-8 {
			    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    min-height: 1px;
    float: left;
    width: 66.66666667%;
    position: relative;
    height: 100%;
    padding: 0px;
		}
		.selected{
			    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    vertical-align: middle;
    border: none;
    position: absolute;
		}
		.col-md-4{
			    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    position: relative;
    min-height: 1px;
    float: left;
    width: 33.33333333%;
    height: 100%;

    padding: 0px;
		}
		h2 {
			    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    box-sizing: border-box;
    font-size: 30px;
    font-family: "Open Sans", sans-serif;
    text-align: left;
    line-height: 25px;
    margin: 10px 0;
    color: #ff0000;
    font-weight: 300;
    padding-left: 50px;

    background-repeat: repeat-y;
		}
	.step-content{
		    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    padding: 0px 50px;
	}
		.box {
			    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    box-sizing: border-box;
    margin: 0;
    font: inherit;
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
    border: 1px solid #bdbdbd !important;
    height: 35px;
    width: 100%;
    text-indent: 10px;
    font-weight: 500;
    color: #212121;
    border-color: #e5e5e5 !important;
    text-transform: capitalize;
		}
		.dropBox{
			-webkit-text-size-adjust: 100%;
			-webkit-tap-highlight-color: rgba(0,0,0,0);
			--rem: 16;
			box-sizing: border-box;
			margin: 0;
			font: inherit;
			font-family: inherit;
			font-size: inherit;
			line-height: inherit;
			border: 1px solid #bdbdbd !important;
			height: 35px;
			width: 100%;
			text-indent: 10px;
			font-weight: 500;
			color: #212121;
			border-color: #e5e5e5 !important;
			text-transform: capitalize;
		}
		td{
			width:50%
		}
		h2{
			    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    box-sizing: border-box;
    font-size: 30px;
    font-family: "Open Sans", sans-serif;
    text-align: left;
    line-height: 25px;
    margin: 10px 0;
    color: #ff0000;
    font-weight: 300;
    padding-left: 50px;

    background-repeat: repeat-y;
		}
		h4{
			    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    line-height: 1.42857143;
    box-sizing: border-box;
    max-width: 100%;
    display: block;
    margin-top: 10px;
    margin-bottom: 2px;
    font-family: "Open Sans", sans-serif;
    font-weight: 500;
    width: 100%;
    color: #757575;
    font-size: 13px;
		}
	.profSpan{
		    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-family: "Open Sans", sans-serif;
    text-align: left;
    box-sizing: border-box;
    font-size: 12px;
    color: #000000;
    font-weight: 700;
    text-transform: uppercase;
    line-height: 14px;
	}
	.signImage{
		    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    background: 0 0;
    text-decoration: none;
    color: #000;
    display: block!important;
    width: 200px;
    height: 54px;
    background-image: url("../images/icons/ll_logo_registration.png");
    margin-left: 40px;
    margin-top: 25px;
    z-index: 10;
    position: relative;
    border: none;
    margin-bottom: 15px;
	}
    .joinButton{
            -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    box-sizing: border-box;
    margin: 0;
    font: inherit;
    overflow: visible;
    -webkit-appearance: button;
    line-height: inherit;
    padding: 5px;
    display: block;
    transition: background-color .3s linear;
    background-color: #f00000;
    color: #fff;
    font-family: "Open Sans", sans-serif;
    text-transform: uppercase;
    font-size: 14px;
    height: 36px;
    border: 1px solid #cc0000;
    border-radius: 2px;
    margin-top: 25px;
    width: 100%;
    text-align: center;
    cursor: pointer;
    font-weight: 700;
    
    background-position: bottom;
    background-repeat: repeat-x;
    }
    .errorMess{
        position:absolute;
        
        left:380px;
        top:500px;
        width:400px;
    }

    #lblErreur{
    
    font-size:17px;
    font-weight:700;
    color:red;
}
    
	</style>
</head>
<body style="background-image: url(Images/lavalife_bg_spring_2015.jpg)">
    <image class="signImage" src="Images/ll_logo_registration.png"></image>
    <form id="form1" runat="server">
        <div id="wrap">
    
	    
	    	    
		
	    
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
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqValidNum" ControlToValidate="txtNumero" runat="server" Text="*" ErrorMessage="nom user requis"></asp:RequiredFieldValidator>
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
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqValidPrenom" ControlToValidate="txtPrenom" runat="server" Text="*" ErrorMessage="prenom requis"></asp:RequiredFieldValidator>
                                        <asp:RequiredFieldValidator ID="reqValidNom" ControlToValidate="txtNom" runat="server" Text="*" ErrorMessage="Nom requis"></asp:RequiredFieldValidator>
                                    </td>
								</tr>
								<tr>
									<td colspan="3">
										<h4>je suis</h4>
										<asp:DropDownList CssClass="box"  ID="cboSexes" AutoPostBack="true" runat="server"></asp:DropDownList>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<h4>date de naissance</h4>
										<asp:TextBox TextMode="Date" CssClass="box" ID="txtAnnDate" runat="server" AutoPostBack="true"></asp:TextBox>

									</td>
								</tr>
								<tr>
									<td colspan="2">
										<h4>addresse email</h4>
										<asp:TextBox  ID="txtEmail" CssClass="box" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ErrorMessage="format email incorrect!"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="ReqValEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="email requis" Text="*"></asp:RequiredFieldValidator>
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
                                    <td>

                                    </td>
								</tr>
								

								<tr>
									<td colspan="2">
										<h4>mot de passe</h4>

										<asp:TextBox TextMode="Password" CssClass="box"  ID="txtMotPasse" runat="server"></asp:TextBox>
									</td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="ReqValMotPasse" runat="server" ErrorMessage="mot de passe requis" ControlToValidate="txtMotPasse" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
								</tr>
								<tr>
									<td colspan="3">
										<asp:Button CssClass="joinButton"  ID="btnInscrire" runat="server" Text="JOIN NOW" OnClick="btnInscrire_Click" />
                                        <h4>Already a member? <a href="index.aspx">Log in.</a></h4>
									</td>
								</tr>
	    					</table>
                            
						    <div class="errorMess" >
								
                                <asp:Label ID="lblErreur" runat="server"> </asp:Label>
                                <asp:ValidationSummary  ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red"/>
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
