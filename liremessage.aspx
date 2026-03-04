<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="liremessage.aspx.cs" Inherits="LavalifeProject.liremessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
    </style>
</head>
<body style="background-image: url(Images/lavalife_bg_spring_2015.jpg)">
    <form id="form1" runat="server">
        <image class="signImage" src="Images/ll_logo_registration.png"></image>
        <div>
            <center>
               <h1 style="color:red; text-align:center"> Lavalife Zone de lecture du Message </h1>
            </center>

            <hr/>
            <br />
            <center>
                <h1> Lire message</h1>
            </center>

            <asp:Literal ID="litMessageInfo"   runat="server"></asp:Literal>
            <asp:Button ID="btnReturn" runat="server" Text="Return" OnClick="btnReturn_Click" />
        </div>
    </form>
</body>
</html>
