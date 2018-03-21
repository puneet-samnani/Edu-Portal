<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAttendance.aspx.cs" Inherits="SchoolWebsite.ViewAttendance" %>


<!DOCTYPE html >
<!--  Website template by freewebsitetemplates.com  -->
<html>

<head>
	<title>Minimalistic Web Template</title>
	<meta  charset="iso-8859-1" />
	<link href="css/style15.css" rel="stylesheet" type="text/css" />
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
										    <li ><a href="Main12.aspx">HOME</a></li>
											<li><a href="Result.aspx">RESULT</a></li>
											<li  class="active"><a href="ViewAttendance.aspx">VIEW ATTENDANCE</a></li>
											<li><a href="#">VIEW NOTIFICATION</a></li>
                                            <li class="last" ><asp:Button ID="Button3" BorderColor="Transparent" outline="none" border="none" runat="server" OnClick="Button2_Click" Text="LOGOUT" Width="197px" ForeColor="#999966" style="height: 22px" /></a></li>
										</ul>
										
										<div class="connect">
										     <a href="http://facebook.com/freewebsitetemplates" class="facebook">&nbsp;</a>
											<a href="http://twitter.com/fwtemplates" class="twitter">&nbsp;</a>
											<a href="http://www.youtube.com/fwtemplates" class="vimeo">&nbsp;</a>
										</div>
										
										<div class="footenote">
										  <span>&copy; Copyright &copy; 2011.</span>
										  <span><a href="index.html">Company name</a> all rights reserved</span>
										</div>
										
									</div>
									<div id="content">
									            <div class="content">
										       <ul class="article">
													<li>
													    &nbsp;<h2>
                                                        &nbsp;&nbsp;
                                                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="20px" Visible="False" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                                                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                                                <NextPrevStyle VerticalAlign="Bottom" />
                                                                <OtherMonthDayStyle ForeColor="#808080" />
                                                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                                                <SelectorStyle BackColor="#CCCCCC" />
                                                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                                <WeekendDayStyle BackColor="#FFFFCC" />
                                                            </asp:Calendar>
&nbsp;&nbsp;
                                                            </h2>

                                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Pick Date</asp:LinkButton>
                                                        &nbsp;
                                                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                                                         &nbsp;
                                                         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Attendance" Width="115px" />
                                                            
                                                        	</li>
													
											        <li>
                                                        <p>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="612px">
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
                                                            &nbsp;</p>
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