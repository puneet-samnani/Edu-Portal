<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main12.aspx.cs" Inherits="SchoolWebsite.Main12" %>
<!DOCTYPE html >
<!-- Education Portals System for Rajasthan Government Schools -->
<html>

<head>
	<title>Rajasthan Edu-Portals</title>
	<meta  charset="iso-8859-1" />
	<link href="css/style10.css" rel="stylesheet" type="text/css" />
	<!--[if IE 6]>
		<link href="css/ie6.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if IE 7]>
        <link href="css/ie7.css" rel="stylesheet" type="text/css" />  
	<![endif]-->
</head>

<body>
	  <form id="form1" runat="server">
	  <div id="background">
			  <div id="page">
			
					 <div class="header">
						<div class="footer">
							<div class="body">
							  
									<div id="sidebar">
									    <a href="index.html"><asp:Image ID="Image1" runat="server" Height="171px" Width="211px" /></a>
									
										
										<ul class="navigation">
										    <li class="active" ><a href="Main12.aspx">HOME</a></li>
											<li><a href="Result.aspx">RESULT</a></li>
											<li><a href="ViewAttendance.aspx">ATTENDANCE</a></li>
											<li><a href="StuAnnounce.aspx">VIEW NOTIFICATION</a></li>
                                            <li><a href="changepasswd.aspx">CHANGE PASSWORD</a></li>
                                            <li class="last" ><asp:Button ID="Button3" BorderColor="Transparent" outline="none" border="none" runat="server" OnClick="Button2_Click" Text="LOGOUT" Width="197px" ForeColor="#999966" /></a></li>
										</ul>
										
									
										<div class="footenote">
										  <span>&copy; Copyright &copy; Rajasthan Government 2018</span>
										</div>
										
									</div>
									<div id="content" >
									
									    
									
									    <img src="rajcartoons/63023827.jpg" width="726" height="546" alt="" title="">
										<div class="featured">
										      <div class="header">
											     <ul>
														<li class="first">
															<!--<p>hi.</p> -->
															<img src="images/hi.jpg" width="50" height="62" alt="" title="" >
														</li>
														<li class="last">
                                                            <p></p>
															<p>
																
						
                                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                            </p>
														</li>
                                                        <li class="last">
															<p>
																
																&nbsp;</p>
														</li>
												 </ul>
											  </div>
									    </div>
									</div>
						</div>
					 </div>
					 <div class="shadow">&nbsp;</div>
			  </div>    
	  </div>    
	
      </form>
	
</body>
</html>

