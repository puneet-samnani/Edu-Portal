<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertschools.aspx.cs" Inherits="SchoolWebsite.insertschools" %>

<!DOCTYPE html >
<!-- Website for Rajasthan Government -->
<html>
<head>
<title>Rajasthan Edu-Portals</title>
<meta charset="iso-8859-1" />
<link href="css/style8.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
<div id="background">
  <div id="page">
    <div class="header">
      <div class="footer">
        <div class="body">
          <div id="sidebar"> <a href="index.html"><asp:Image ID="Image1"  runat="server" Height="171px" Width="211px" ImageUrl="~/images/govofraj.jpg" /></a>
            	<ul class="navigation">
										    <li  ><a href="Admin.aspx">HOME</a></li>
											<li class="active"><a href="insertrecord1.aspx">SCHOOL ENTRY</a></li>
											<li><a href="viewschools.aspx">VIEW SCHOOLS</a></li>
											<li><a href="dashboard.aspx">DASHBOARD</a></li>
                                            <li class="last" ><asp:Button ID="Button3" BorderColor="Transparent" outline="none" border="none" runat="server" OnClick="Button2_Click" Text="LOGOUT" Width="197px" ForeColor="#999966" /></a></li>
										</ul>
            <div class="footenote"> <span>&copy; Copyright &copy; Rajasthan Government 2018</span> </div>
          </div>
          <div id="content">
            <div class="content">
              <ul>
                <li>
                  
                </li>
                  <li>
                  
                &nbsp;&nbsp;&nbsp;
                      
                      <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="School ID" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="210px"></asp:TextBox>
                      
                </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="School Name" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="217px"></asp:TextBox></li>
                    </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="School Admin Id" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="221px"></asp:TextBox></li>
                    </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="School E-Mail" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="221px"></asp:TextBox></li>
                    </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="Affiliated To" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox5" runat="server" Height="16px" Width="222px"></asp:TextBox></li>
                    </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="School Contact" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox6" runat="server" Height="16px" Width="226px"></asp:TextBox></li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="Logo Upload  " Width="138px" Height="46px"></asp:Label>
                  <asp:FileUpload ID="FileUpload1" runat="server" Width="236px" />
                       <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  
                      
              </ul>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <ul>
                  <li>
                      <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                  </li>

                     <li>&nbsp;&nbsp;&nbsp;&nbsp; 
                         <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" BorderColor="#6699FF" BorderStyle="Double" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" Text="Insert Record" Width="130px" BorderWidth="1px" />
                  </li>
                  <li>
                      <asp:Label ID="Label8" runat="server"></asp:Label>
                  </li>
                  <li>&nbsp;&nbsp;
                  <li>
              </ul>
                <p>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
                <p>
                    &nbsp;</p>
            </div>
          </div>
            
        </div>
      </div>
    </div>
    <div class="shadow"> </div>
  </div>
</div>
    </form>
</body>
</html>
