<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result2.aspx.cs" Inherits="SchoolWebsite.Result2" %>

<!DOCTYPE html >
<script runat="server">

   
</script>

<!-- Education Portals System for Rajasthan Government Schools -->
<html>

<head>
	<title>Rajasthan Edu-Portals</title>
	<meta  charset="iso-8859-1" />
	<link href="css/style18.css" rel="stylesheet" type="text/css" />
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
											<li ><a href="insertrecord1.aspx">ADMISSION ENTRY</a></li>
											<li ><a href="search.aspx">SEARCH</a></li>
                                            <li class="active"><a href="Result1.aspx">MARKS INSERT</a></li>
                                                 <li><a href="viewallrresult.aspx">VIEW RESULT</a></li>
											<li><a href="Announcement.aspx">NOTIFICATION</a></li>
                                            <li class="last" ><asp:Button ID="Button3" BorderColor="Transparent" outline="none" border="none" runat="server" OnClick="Button2_Click" Text="LOGOUT" Width="197px" ForeColor="#999966" /></li>
										</ul>
										
										<div class="footenote">
										  <span>&copy; Copyright &copy; Rajasthan Government 2018</span>
										</div>
										
									</div>
									<div id="content">
									            <div class="content">
										       <ul class="article">
													<li>
													    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                            <asp:ListItem>Select Class</asp:ListItem>
                                                              <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9(Science)</asp:ListItem>
            <asp:ListItem>9(Art)</asp:ListItem>
            <asp:ListItem>10(Science)</asp:ListItem>
            <asp:ListItem>10(Art)</asp:ListItem>
            <asp:ListItem>11(Math)</asp:ListItem>
            <asp:ListItem>11(Bio)</asp:ListItem>
            <asp:ListItem>12(Math)</asp:ListItem>
            <asp:ListItem>12(Bio)</asp:ListItem>
                                                        </asp:DropDownList>
													    &nbsp;<h2>
                                                        &nbsp;&nbsp;
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </h2>
                                                        <p>
                                                            <asp:MultiView ID="MultiView1" runat="server">
                                                                <asp:View ID="View1" runat="server">
                                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:TemplateField HeaderText="English">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hindi">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="69px" >0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Math">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Width="70px">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Science">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Width="70px">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Social Science">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Width="70px">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Drawing">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

                                                                </asp:View>
                                                                <asp:View ID="View2" runat="server">


                                                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                                                            <asp:TemplateField HeaderText="English">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox7" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Hindi">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox8" runat="server" Height="16px" Width="69px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Art">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox9" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Social Science">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox10" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Computer">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox11" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Economics">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox12" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#CCCCCC" />
                                                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                                        <RowStyle BackColor="White" />
                                                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                                                    </asp:GridView>


                                                                </asp:View>

                                                                <asp:View ID="View3" runat="server">

                                                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                                                            <asp:TemplateField HeaderText="English">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox13" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Hindi">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox14" runat="server" Height="16px" Width="69px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Math">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox15" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Science">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox16" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Social Science">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox17" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Drawing">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox18" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#CCCCCC" />
                                                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                                        <RowStyle BackColor="White" />
                                                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                                                    </asp:GridView>

                                                                </asp:View>

                                                                <asp:View ID="View4" runat="server">
                                                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                                                            <asp:TemplateField HeaderText="English">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox19" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Hindi">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox20" runat="server" Height="16px" Width="69px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Art">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox21" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Social Science">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox22" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Computer">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox23" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Economics">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox24" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#CCCCCC" />
                                                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                                        <RowStyle BackColor="White" />
                                                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                                                    </asp:GridView>
                                                                </asp:View>

                                                                <asp:View ID="View5" runat="server">
                                                                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                                                            <asp:TemplateField HeaderText="English">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox25" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Hindi">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox26" runat="server" Height="16px" Width="69px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Math">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox27" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Physics">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox28" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Chemistry">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox29" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#CCCCCC" />
                                                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                                        <RowStyle BackColor="White" />
                                                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                                                    </asp:GridView>
                                                                </asp:View>
                                                                <asp:View ID="View6" runat="server">
                                                                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                                                            <asp:TemplateField HeaderText="English">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox35" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Hindi">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox36" runat="server" Height="16px" Width="69px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Physics">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox37" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Chemistry">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox38" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Biology">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox39" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#CCCCCC" />
                                                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                                        <RowStyle BackColor="White" />
                                                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                                                    </asp:GridView>
                                                                </asp:View>
                                                                <asp:View ID="View7" runat="server">
                                                                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                                                            <asp:TemplateField HeaderText="English">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox30" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Hindi">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox31" runat="server" Height="16px" Width="69px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Math">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox32" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Physics">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox33" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Chemistry">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox34" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#CCCCCC" />
                                                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                                        <RowStyle BackColor="White" />
                                                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                                                    </asp:GridView>
                                                                </asp:View>
                                                                <asp:View ID="View8" runat="server">
                                                                    <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                                                            <asp:TemplateField HeaderText="English">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox40" runat="server" Height="16px" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Hindi">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox41" runat="server" Height="16px" Width="69px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Physics">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox42" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Chemistry">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox43" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Biology">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox44" runat="server" Width="70px">0</asp:TextBox>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#CCCCCC" />
                                                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                                        <RowStyle BackColor="White" />
                                                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                                                    </asp:GridView>
                                                                    <br />
                                                                    <br />
                                                                </asp:View>
                                                            </asp:MultiView>
                                                            
                                                        </p>
    
                                                            &nbsp;
                                                                                                                     
														
													    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Insert marks" />
                                                                                                                     
														
													</li>
                                                    <li>
													    <asp:Label ID="Label1" runat="server"></asp:Label>
                                                                                                                     
														
													</li>
<li>

&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString4 %>" SelectCommand="SELECT [name] FROM [Student] WHERE (([std] = @std) AND ([optional] = @optional))">
        <SelectParameters>
            <asp:SessionParameter Name="std" SessionField="class" Type="String" />
            <asp:SessionParameter Name="optional" SessionField="stream" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</li>
											 
													
											   </ul>
										</div>
									</div>
							        <br />
							        </div>
						</div>
					 </div>
			  </div>
	  </div>
      </form>
	
</body>
</html>