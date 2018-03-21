<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewschools.aspx.cs" Inherits="SchoolWebsite.viewschools" %>

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
										    <li  ><a href="Admin.aspx">HOME</a></li>
											<li ><a href="insertrecord1.aspx">SCHOOL ENTRY</a></li>
											<li class="active"><a href="viewschools.aspx">VIEW SCHOOLS</a></li>
											<li><a href="dashboard.aspx">DASHBOARD</a></li>
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
                                                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="337px" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                                <Columns>
                                                                    <asp:BoundField DataField="school_id" HeaderText="school_id" SortExpression="school_id" />
                                                                    <asp:BoundField DataField="school_name" HeaderText="school_name" SortExpression="school_name" />
                                                                    <asp:BoundField DataField="school_admin_id" HeaderText="school_admin_id" SortExpression="school_admin_id" />
                                                                    <asp:BoundField DataField="school_email" HeaderText="school_email" SortExpression="school_email" />
                                                                    <asp:BoundField DataField="affiliated_to" HeaderText="affiliated_to" SortExpression="affiliated_to" />
                                                                    <asp:BoundField DataField="school_contact" HeaderText="school_contact" SortExpression="school_contact" />
                                                                    <asp:CommandField ShowEditButton="True" />
                                                                </Columns>
                                                                <FooterStyle BackColor="#CCCCCC" />
                                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                                            </asp:GridView>
                                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString4 %>" SelectCommand="SELECT * FROM [GovtSchools]"></asp:SqlDataSource>
                                                        </p>
                                                    </li>
                                                    <li>
                                                        <p>
        
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