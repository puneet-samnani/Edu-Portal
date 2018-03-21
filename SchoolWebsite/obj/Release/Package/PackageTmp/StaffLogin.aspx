<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="SchoolWebsite.StaffLogin" %>

<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<link href="css/style3.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		<!--//webfonts-->
</head>
 
<body>
	<div class="main">
		<form id="form1" runat="server">
    		<h1><span>C.B.S.C LOGIN</span></h1>
  			<div class="inset">
	  			<p>
	    		 <label for="email">REGISTRATION ID</label>
   	 			<asp:TextBox ID="Username" placeholder="Enter Registration ID" runat="server"></asp:TextBox>
				</p>
  				<p>
				    <label for="password">PASSWORD</label>
                      <asp:TextBox ID="passwd" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
				    
  				</p>
				  <p>
                      <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
			    </p>
 			 </div>
 	 
			  <p class="p-container">
			    
			      <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
		</form>
	</div>  
			
</body>
</html>