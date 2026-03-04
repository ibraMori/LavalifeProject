<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LavalifeProject.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .body {
        -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    box-sizing: border-box;
    margin: 0;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
    font-family: "Open Sans", sans-serif;
    
}
        
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
    min-width: 300px !important;
    margin: 0 auto;
    width: 1500px;
    position: relative;
    min-height: 100%;
    background: transparent !important;
    height: 100vh;
    border: solid 8px #fff;
    max-height: 800px;
        }
    .home-page{
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
    position: relative;
    height: 100%;
    background-repeat: no-repeat;
    margin-top: 0px;
    }
    .home-header{
            -webkit-text-size-adjust: 100%;
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    font-family: "Open Sans", sans-serif;
    --rem: 16;
    box-sizing: border-box;
    padding: 30px;
    position: absolute;
    z-index: 9999;
    width: 100%;
    }
    .social-icons{
            -webkit-text-size-adjust: 100%;
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    font-family: "Open Sans", sans-serif;
    --rem: 16;
    box-sizing: border-box;
    width: 300px;
    padding: 10px 0;
    height: 60px;
    position: relative;
    float: right;
    border-radius: 2px;
    border: solid 1px #ffffff;
    background-color: #ffffff;
    }
        .col-sm-12{
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
    width: 41.66666667%;
    background-image: url('Images/LL_left_bg.jpg');
    background-repeat: no-repeat;
    height: 726px;
    border-right: solid 16px #FFF;
    position: relative;
    padding: 120px 40px 0;
    text-transform: uppercase;
    background-size: 140%;
    background-position: 0% 60%;
        }
    .hidden-sm{
            -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    font-family: "Open Sans", sans-serif;
    text-transform: uppercase;
    box-sizing: border-box;
    vertical-align: middle;
    position: absolute;
    border: solid 12px #ffffff;
    z-index: 99;
    background-color: #fff;
    border-radius: 50%;
    width: 150px;
    height: 150px;
    top: 40%;
    right: -82px;
    }
    .stylin{
            -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    text-transform: uppercase;
    box-sizing: border-box;
    margin: .67em 0;
    margin-top: 20px;
    font-family: 'PT Sans', sans-serif;
    font-size: 52px;
    color: #ffffff;
    margin-bottom: 0px;
    line-height: 100%;
    font-weight: 800;
    }
        .redTxt {
                -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    box-sizing: border-box;
    margin: 0 0 10px;
    color: #ff0000 !important;
    text-transform: uppercase;
    margin-bottom: 0;
    line-height: 120%;
    font-family: 'PT Sans', sans-serif;
    font-weight: 800;
    font-size: 22px;
        }
    .col-md-7{
            -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    box-sizing: border-box;
    min-height: 1px;
    float: left;
    width: 58.33333333%;
    position: relative;
    padding: 40px 40px 40px 40px;
    height: 726px;
    z-index: 10;
    font-family: "Open Sans", sans-serif;
    background-image: url('Images/LL_right_bg.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: 58% 80%;
    top: 0px;
    }
    .main-img{
            -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    border: 0;
    vertical-align: middle;
    margin: 80px auto 20px auto;
    display: block;
    max-width: 100%;
    padding-bottom: 10px;
    border-bottom: solid 1px #fff;
    width: 75%;
    }
    .signup-login-holder{
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
    padding-right: 15px;
    padding-left: 15px;
    float: left;
    width: 100%;
    margin-top: 20px;
    }
    .signup-home-btn{
                -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    background: 0 0;
    text-decoration: none;
    height: 40px;
    line-height: 40px;
    font-size: 18px;
    color: #fff;
    transition: .3s padding;
    background-color: #ff0000;
    border-radius: 3px;
    font-weight: 800;
    text-transform: uppercase;
    display: block;
    width: 160px;
    padding-left: 30px;
    margin-top: 20px;
    }
    .col-md-1{
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
    padding-right: 15px;
    padding-left: 15px;
    float: left;
    width: 8.33333333%;
    }
    .col-md-5{
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
    padding-right: 15px;
    padding-left: 15px;
    float: left;
    width: 41.66666667%;
    
    }
        .login-home-btn {
                -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    background: 0 0;
    text-decoration: none;
    height: 40px;
    line-height: 40px;
    font-size: 18px;
    color: #ff0000;
    background-color: #ffffff;
    transition: .3s padding, .3s font-size;
    border-radius: 3px;
    font-weight: 800;
    margin-top:50px;
    margin-left:500px;
    text-transform: uppercase;
    display: block;
    width: 160px;
        }
    .clearfix{
            -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    font-family: "Open Sans", sans-serif;
    box-sizing: border-box;
    clear: both;
    }
    .signup-login-holder{
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
    padding-right: 15px;
    padding-left: 15px;
    float: left;
    width: 100%;
    margin-top: 20px;
    }
    p{
            -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    --rem: 16;
    box-sizing: border-box;
    margin: 0 0 10px;
    font-size: 16px;
    color: #ffffff;
    text-transform: uppercase;
    margin-bottom: 0;
    line-height: 120%;
    font-family: 'PT Sans', sans-serif;
    }
    .textBox{
        background-color:white;
        width:200px;
        height:50px;
    }
    .btnIns{
        margin-left:450px;
        font-size:30px;
        color:red;
    }
        #lblErreur {
            margin-left:400px;
            font-size:18px;
            background-color:white;
            border:medium;
            font-weight:700;
        }
        
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
        <div class="home-header">
            <img src="Images/ll_logo_march2015.png"/>
		    <div class="social-icons">
			<img src="Images/YoutubeFFacebook.png"/>
		 </div>
		</div>
	    
        
       <section class="container">
    	<div class="home-page">    		
			<div class="col-sm-12">
				<img class="hidden-sm hidden-xs" src="Images/ll_mainpage_circle_logo.png"/>
				<h1 class="stylin">MEET FUN<br>SINGLES!</h1>
<!--				<p class="redTxt">IN Toronto<span class="city">NORTH AMERICA</span></p> -->
				<p class="redTxt">Call <a class="redTxt" href="tel:18665465282">1-866-546-5282</a></p>
				<p>CALL • CLICK • CONNECT</p>
				<p>TRY IT FREE!</p>
            	<a class="signup-home-btn call" href="http://lavalifevoice.com?lavalife=home">START NOW</a>
                
  			</div>
    		    		
    		<div class="col-md-7">
    			<img class="main-img" src="Images/lavalife_regist_text_header_v1.jpg">
    			
    			<p>    			
    				<span>Lavalife wants to put the excitement back in dating. We match your interests to help you break the ice and give you online dating tips along the way to make sure you have the best experience possible. Get started today.</span>
    			</p>    			
    			
    			<div class="signup-login-holder">
    				<div class="col-md-1 col-sm-1 col-xs-0"></div>
    				
    				<div class="col-md-5 col-sm-5 col-xs-6">
                    <p>Numero membre</p>
                    
    			    <asp:TextBox CssClass="textBox" ID="txtNumMember"  runat="server"></asp:TextBox>
    				</div>
    				
    				<div class="col-md-5 col-sm-5 col-xs-6">
                        
                        <p>
                            Mot de passe
                        </p>
                        <asp:TextBox CssClass="textBox" ID="txtMotPasse" TextMode="Password" runat="server" ></asp:TextBox>
                       
    					
    				</div>
    				<div style="margin-top:100px" >
                         <asp:Button CssClass="login-home-btn" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                         <asp:LinkButton ID="btnInscrire" OnClick="btnInscrire_Click" runat="server" class="btnIns" Font-Bold="True">Premiere utilisation?</asp:LinkButton>
                        <asp:Label ID="lblErreur" runat="server"> </asp:Label>
    				</div>
                    

    				<div class="col-md-1 col-sm-1 col-xs-0"></div>					
    			</div>
				
				<div class="clearfix"></div>

    		</div>
		</div>
		<div class="clearfix"></div>
     </section>
        
    </form>
</body>
</html>
