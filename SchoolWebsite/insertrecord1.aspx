<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertrecord1.aspx.cs" Inherits="SchoolWebsite.insertrecord1" %>

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
          <div id="sidebar"> <a href="index.html"><asp:Image ID="Image1" runat="server" Height="171px" Width="211px" /></a>
            	<ul class="navigation">
										    <li  ><a href="Admin.aspx">HOME</a></li>
											<li class="active"><a href="insertrecord1.aspx">ADMISSION ENTRY</a></li>
											<li><a href="search.aspx">SEARCH</a></li>
                                            <li><a href="Result1.aspx">MARKS INSERT</a></li>
                                                 <li><a href="viewallrresult.aspx">VIEW RESULT</a></li>
											<li><a href="Announcement.aspx">NOTIFICATION</a></li>
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
                      
                      <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="Registration ID" Width="139px"></asp:Label>
                  <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="210px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                      
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
                       <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
                  
                      <li>&nbsp;&nbsp   <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="Optional Subject" Width="139px"></asp:Label>
                      <asp:DropDownList ID="DropDownList2" runat="server" Height="29px" Width="226px">
                          <asp:ListItem>Choose</asp:ListItem>
                          <asp:ListItem>Science</asp:ListItem>
                          <asp:ListItem>Art</asp:ListItem>
                          <asp:ListItem>Biology</asp:ListItem>
                          <asp:ListItem>Math</asp:ListItem>
                      </asp:DropDownList>
                  </li>
                  <li>&nbsp;&nbsp;&nbsp;&nbsp; </li>
              
                  <li>&nbsp;&nbsp;&nbsp;   <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Text="Member" Width="139px"></asp:Label>
                      <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="226px">
                          <asp:ListItem>Choose</asp:ListItem>
                          <asp:ListItem>Student</asp:ListItem>
                          <asp:ListItem>Faculty</asp:ListItem>
                          <asp:ListItem>Admin</asp:ListItem>
                          <asp:ListItem>Govt</asp:ListItem>
                      </asp:DropDownList>
                  </li>
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