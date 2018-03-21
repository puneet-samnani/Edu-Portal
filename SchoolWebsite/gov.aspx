<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gov.aspx.cs" Inherits="SchoolWebsite.gov" %>

<!DOCTYPE html>

<!DOCTYPE html >
<!-- Education Portals System for Rajasthan Government Schools -->
<html>

<head>
	<title>Rajasthan Edu-Portals</title>
	<meta  charset="iso-8859-1" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" />
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
									    <a href="index.html"><asp:Image ID="Image1" runat="server" Height="171px" Width="211px" ImageUrl="~/images/govofraj.jpg" /></a>
									
										
										<ul class="navigation">
										    <li class="active" ><a href="gov.aspx">HOME</a></li>
											<li><a href="insertschools.aspx">SCHOOL ENTRY</a></li>
											
                                                 <li><a href="viewschools.aspx">VIEW SCHOOLS</a></li>
											<li><a href="dashboard.aspx">DASHBOARD</a></li>

                                            <li class="last" ><asp:Button ID="Button3" BorderColor="Transparent" outline="none" border="none" runat="server" OnClick="Button2_Click" Text="LOGOUT" Width="197px" ForeColor="#999966" /></a></li>
										</ul>
										
									
										<div class="footenote">
										  <span>&copy; Copyright &copy; Rajasthan Government 2018</span>&nbsp;
										</div>
										
									</div>
									<div id="content"  >
									     
									    <img src="rajcartoons/SHIVIRA-Shiksha-Vibhag-Rajasthan-3.png" style="height: 291px; width: 707px"/>									     
									    
									    <div>
    
                                            
									        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                            <br />
                                            <br />
									        <br />
									        &nbsp;&nbsp;
    

									        <asp:ImageButton ID="ImageButton1" runat="server" Height="82px" ImageUrl="~/images/School_100px.png" OnClick="ImageButton1_Click" Width="115px" />
									        <asp:Label ID="Label2" runat="server" Text="Schools  " ForeColor="Black"></asp:Label>
        
									        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Black"></asp:Label>
									        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="87px" ImageUrl="~/images/Classroom_96px.png" OnClick="ImageButton2_Click" Width="118px" />
									        &nbsp;
									        <asp:Label ID="Label3" runat="server" Text="Faculty  " ForeColor="Black"></asp:Label>
        
									        &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" ForeColor="Black"></asp:Label>
									        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
									        <asp:ImageButton ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" ImageUrl="~/images/Students.png" />
									        &nbsp;
									        <asp:Label ID="Label6" runat="server" Text="Students  " ForeColor="Black"></asp:Label>
									        &nbsp;&nbsp;
									        <asp:Label ID="Label7" runat="server" ForeColor="Black"></asp:Label>
									        <br />
									        <br />
									        <br />
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

