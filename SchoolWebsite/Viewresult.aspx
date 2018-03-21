<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewresult.aspx.cs" Inherits="SchoolWebsite.Viewresult" %>

<!DOCTYPE html >
<!-- Education Portals System for Rajasthan Government Schools -->
<html>

<head>
	<title>Rajasthan Edu-Portals</title>
	<meta  charset="iso-8859-1" />
	<link href="css/style14.css" rel="stylesheet" type="text/css" />
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
										    <li  ><a href="Faculty.aspx">HOME</a></li>
											<li><a href="Attendance.aspx">MARK ATTENDANCE</a></li>
											<li class="active"><a href="Viewresult.aspx">VIEW RESULT</a></li>
											<li><a href="#">VIEW NOTIFICATION</a></li>
                                            <li class="last" ><asp:Button ID="Button3" BorderColor="Transparent" outline="none" border="none" runat="server" OnClick="Button2_Click" Text="LOGOUT" Width="197px" ForeColor="#999966" /></a></li>
										</ul>
										
										<div class="footenote">
										  <span>&copy; Copyright &copy; Rajasthan Government 2018</span>&nbsp;
										</div>
										
									</div>
									<div id="content">
									            <div class="content">
										       <ul class="article">
													<li>
													    &nbsp;<h2>
                                                        &nbsp;&nbsp;
                                                            <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Chosse Class</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </h2>
                                                        <h2>
                                                            &nbsp;</h2>
                                                        <h2>
                                                            &nbsp;
                                                            </h2>
														
													</li>
													
											        <li>
                                                        <p>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="271px">
                                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                                <FooterStyle BackColor="#CCCCCC" />
                                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                                            </asp:GridView>
                                                        </p>
                                                    </li>
                                                    <li>
                                                        <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Result" Width="115px" />
                                                        </p>
                                                    </li>
													
											   </ul>
										</div>
									</div>
							</div>
						</div>
					 </div>
			  </div>
	  </div>
      </form>
	
</body>
</html>