<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertrecord1.aspx.cs" Inherits="SchoolWebsite.insertrecord1" %>

<!DOCTYPE html >
<!--  Website template by freewebsitetemplates.com  -->
<html>
<head>
<title>Minimalistic Web Template</title>
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
          <div id="sidebar"> <a href="index.html"><asp:Image ID="Image1" runat="server" Height="171px" Width="211px" /></a>
            <ul class="navigation">
                                            <li> <a href="Admin.aspx">HOME</a></li>
											<li class="active"><a href="insertrecord1.aspx">ADMISSION ENTRY</a></li>
											<li><a href="search.aspx">SEARCH</a></li>
											<li class="last" ><a href="contact.html">NOTIFICATION</a></li>
                                            <li class="last" ><asp:Button ID="Button2" BorderColor="Transparent" outline="none" border="none" runat="server" OnClick="Button2_Click" Text="LOGOUT" Width="197px" ForeColor="#999966" style="height: 22px" /></a></li>
            </ul>
            <div class="connect"> <a href="http://facebook.com/freewebsitetemplates" class="facebook">&nbsp;</a> <a href="http://twitter.com/fwtemplates" class="twitter">&nbsp;</a> <a href="http://www.youtube.com/fwtemplates" class="vimeo">&nbsp;</a> </div>
            <div class="footenote"> <span>&copy; Copyright &copy; 2011.</span> <span><a href="index.html">Company name</a> all rights reserved</span> </div>
          </div>
          <div id="content">
            <div class="content">
              <ul>
                <li>
                  
                </li>
                  <li>
                  
                &nbsp;&nbsp;&nbsp;
                      
                      <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="Registration ID" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="210px"></asp:TextBox>
                      
                </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="User Name" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="217px"></asp:TextBox></li>
                    </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="Password" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="221px"></asp:TextBox></li>
                    </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="E-mail" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="221px"></asp:TextBox></li>
                    </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="Class" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox5" runat="server" Height="16px" Width="222px"></asp:TextBox></li>
                    </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="D.O.B" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox6" runat="server" Height="16px" Width="226px" placeholder="yyyy-mm-dd"></asp:TextBox></li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;   <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="Image Upload" Width="139px"></asp:Label>
                  <asp:FileUpload ID="FileUpload1" runat="server" Width="236px" />
                      <li>
                      <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  <li>&nbsp;&nbsp;&nbsp;   <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="Member" Width="139px"></asp:Label>
                      <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="226px">
                          <asp:ListItem>Choose</asp:ListItem>
                          <asp:ListItem>Student</asp:ListItem>
                          <asp:ListItem>Faculty</asp:ListItem>
                      </asp:DropDownList>
                  </li>
              </ul>
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