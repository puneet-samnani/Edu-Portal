<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAnnounce.aspx.cs" Inherits="SchoolWebsite.ViewAnnounce"  %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<!DOCTYPE html >
<!-- Education Portals System for Rajasthan Government Schools -->
<html>

<head runat="server">
	<title>Rajasthan Edu-Portals</title>
       <style type="text/css">
               .sample {
                   border: 1px inset #8B8378;
                   -moz-border-radius: 6px;
               }

                   .sample td {
                       border: 0.1px solid black;
                       padding: 0.2em 2ex 0.2em 2ex;
                       color: black;
                   }

                   .sample tr.d0 td {
                       background-color: #FCF6CF;
                   }

                  .sample tr.d1 td {
                       background-color: #FEFEF2;
                   }
               .Tab {}
               .Tab {}
           </style>

  <style type="text/css">
                .ajax__myTab .ajax__tab_header {  
        font-family: verdana,tahoma,helvetica;  
        font-size: 11px;  
        border-bottom: solid 1px #999999;  
    }  
      
    .ajax__myTab .ajax__tab_outer {  
        padding-right: 4px;  
        height: 21px;  
        background-color: #C0C0C0;  
        margin-right: 2px;  
        border-right: solid 1px #666666;  
        border-top: solid 1px #aaaaaa;  
    }  
      
    .ajax__myTab .ajax__tab_inner {  
        padding-left: 3px;  
        background-color: #C0C0C0;  
    }  
      
    .ajax__myTab .ajax__tab_tab {  
        height: 13px;  
        padding: 4px;  
        margin: 0;  
    }  
      
    .ajax__myTab .ajax__tab_hover .ajax__tab_outer {  
        background-color: #cccccc;  
    }  
      
    .ajax__myTab .ajax__tab_hover .ajax__tab_inner {  
        background-color: #cccccc;  
    }  
      
    .ajax__myTab .ajax__tab_hover .ajax__tab_tab {  
    }  
      
    .ajax__myTab .ajax__tab_active .ajax__tab_outer {  
        background-color: #fff;  
        border-left: solid 1px #999999;  
    }  
      
    .ajax__myTab .ajax__tab_active .ajax__tab_inner {  
        background-color: #fff;  
    }  
      
    .ajax__myTab .ajax__tab_active .ajax__tab_tab {  
    }  
      
    .ajax__myTab .ajax__tab_body {  
        font-family: verdana,tahoma,helvetica;  
        font-size: 10pt;  
        border: 1px solid #999999;  
        border-top: 0;  
        padding: 8px;  
        background-color: #ffffff;  
    }  
           .auto-style1 {
          font-size: medium;
      }
           </style>
	<meta  charset="iso-8859-1" />
	<link href="css/style20.css" rel="stylesheet" type="text/css" />
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
											<li ><a href="Attendance.aspx">MARK ATTENDANCE</a></li>
											<li ><a href="FResultv.aspx">VIEW RESULT</a></li>
											<li class="active"><a href="ViewAnnounce.aspx">VIEW NOTIFICATION</a></li>
                                                 <li><a href="changepasswd.aspx">CHANGE PASSWORD</a></li>
                                            <li class="last" ><asp:Button ID="Button3" BorderColor="Transparent" outline="none" border="none" runat="server" OnClick="Button2_Click" Text="LOGOUT" Width="197px" ForeColor="#999966" /></a></li>
										</ul>
										
										<div class="footenote">
										  <span>&copy; Copyright &copy; Rajasthan Government 2018</span>
										</div>
										
									</div>
            
									<div id="content">
									            <div class="centerBlock">
										     
                                                        &nbsp;&nbsp;
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         
                                                        
                                                       
                                                            &nbsp;
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         
                                                        <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="451px" Width="505px" CssClass="ajax__myTab" style="margin-left: 211px; margin-top: 46px; color: #000000;" Font-Names="Times New Roman" ScrollBars="Vertical" >
                                                            <cc1:TabPanel runat="server" HeaderText="NOTICE" ID="TabPanel1" ScrollBars="Auto"><HeaderTemplate>
NOTICE
</HeaderTemplate>
<ContentTemplate>
                                                                 <br />
                                                                <asp:Table ID="Table1" runat="server" CssClass="sample"></asp:Table>

                                                           
</ContentTemplate>
</cc1:TabPanel>
                                                            <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="ENQUIRY"><HeaderTemplate>
                                                                ENQUIRY
</HeaderTemplate>
                                                                <ContentTemplate>
                                                                    <br />
                                                                    <span class="auto-style1"><strong>Enquiry Type </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="187px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                                        <asp:ListItem>Select</asp:ListItem>
                                                                        <asp:ListItem>Complaint</asp:ListItem>
                                                                        <asp:ListItem>Suggestion</asp:ListItem>
                                                                        <asp:ListItem>Feedback</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <br />
                                                                    <br />
                                                                    <span class="auto-style1"><strong>Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                                                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                                    <br />
                                                                    <br />
                                                                    <strong>Description </strong>
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                                    <asp:TextBox ID="TextBox2" runat="server" Height="121px" TextMode="MultiLine" Width="328px"></asp:TextBox>
                                                                    <br />
                                                                    <br />
                                                                    <asp:Button ID="Button4" runat="server" Height="27px" OnClick="Button4_Click" Text="Submit" Width="83px" />
                                                                    <br />
                                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                                                                </ContentTemplate>
</cc1:TabPanel>
                                                        </cc1:TabContainer>
														
													
                                                        <p>
                                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                            </asp:ScriptManager>
                                                        </p>
                                                   
													
											   
										</div>
									</div>
                                    <br />
                                    <br />
						</div>
					 </div>
			  </div>
	  </div>
      </form>
	
</body>
</html>

