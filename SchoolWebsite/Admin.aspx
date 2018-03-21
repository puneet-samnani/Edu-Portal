<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SchoolWebsite.Admin" %>

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
										    <li class="active" ><a href="Admin.aspx">HOME</a></li>
											<li><a href="insertrecord1.aspx">ADMISSION ENTRY</a></li>
											<li><a href="search.aspx">SEARCH</a></li>
                                            
                                                 <li><a href="viewallrresult.aspx">VIEW RESULT</a></li>
											<li><a href="Announcement.aspx">NOTIFICATION</a></li>
                                            <li class="last" ><asp:Button ID="Button3" BorderColor="Transparent" outline="none" border="none" runat="server" OnClick="Button2_Click" Text="LOGOUT" Width="197px" ForeColor="#999966" /></a></li>
										</ul>
										
									
										<div class="footenote">
										  <span>&copy; Copyright &copy; Rajasthan Government 2018</span>&nbsp;
										</div>
										
									</div>
									<div id="content" >
									
									    
									
									    <img src="rajcartoons/cartoon-map3.png" width="726" height="546" alt="" title="">
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
