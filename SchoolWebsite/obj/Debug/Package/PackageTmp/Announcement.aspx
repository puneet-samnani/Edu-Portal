<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Announcement.aspx.cs" Inherits="SchoolWebsite.Announcement"ValidateRequest = "false" %>

<!DOCTYPE html >
<!--  Website template by freewebsitetemplates.com  -->
<html>
<head>
<title>Minimalistic Web Template</title>
    <script type="text/javascript" src="tiny_mce/tiny_mce.js"> </script>
    <script type="text/javascript">
        tinyMCE.init({
            // General options 
            mode: "textareas",
            theme: "advanced",
            plugins: "pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave", setup: function (ed) {
                ed.onKeyPress.add(
                function (ed, evt) {
                }
                );
            },
            // Theme options 
            theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
            theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
            theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
            theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,restoredraft",
            theme_advanced_toolbar_location: "top",
            theme_advanced_toolbar_align: "left",
            theme_advanced_statusbar_location: "bottom",
            theme_advanced_resizing: true,
            // Example content CSS (should be your site CSS) 
            content_css: "css/content.css",
            // Drop lists for link/image/media/template dialogs 
            template_external_list_url: "lists/template_list.js",
            external_link_list_url: "lists/link_list.js",
            external_image_list_url: "lists/image_list.js",
            media_external_list_url: "lists/media_list.js",
            // Style formats 
            style_formats: [
            { title: 'Bold text', inline: 'b' },
            { title: 'Red text', inline: 'span', styles: { color: '#ff0000' } },
            { title: 'Red header', block: 'h1', styles: { color: '#ff0000' } },
            { title: 'Example 1', inline: 'span', classes: 'example1' },
            { title: 'Example 2', inline: 'span', classes: 'example2' },
            { title: 'Table styles' },
            { title: 'Table row 1', selector: 'tr', classes: 'tablerow1' }
            ],
            // Replace values for the template plugin 
            template_replace_values: {
                username: "Some User",
                staffid: "991234"
            }
        });
</script>
<meta charset="iso-8859-1" />
<link href="css/style21.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
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
											<li ><a href="insertrecord1.aspx">ADMISSION ENTRY</a></li>
											<li><a href="search.aspx">SEARCH</a></li>
                                            <li><a href="Result1.aspx">MARKS INSERT</a></li>
                                            <li><a href="viewallrresult.aspx">VIEW RESULT</a></li>
											<li class="active"><a href="Announcement.aspx">NOTIFICATION</a></li>
                                            <li class="last" ><asp:Button ID="Button3" BorderColor="Transparent" outline="none" border="none" runat="server" OnClick="Button2_Click" Text="LOGOUT" Width="197px" ForeColor="#999966" /></a></li>
										</ul>
            <div class="connect"> <a href="http://facebook.com/freewebsitetemplates" class="facebook">&nbsp;</a> <a href="http://twitter.com/fwtemplates" class="twitter">&nbsp;</a> <a href="http://www.youtube.com/fwtemplates" class="vimeo">&nbsp;</a> </div>
            <div class="footenote"> <span>&copy; Copyright &copy; 2011.</span> <span><a href="index.html">Company name</a> all rights reserved</span> </div>
          </div>
          <div id="content">
            <div class="content">
             
                
                  
                &nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style1">HEADING OF NOTICE</span></strong><br />
                      <br />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:TextBox ID="TextBox1" runat="server" Height="270px" TextMode="MultiLine" Width="556px" style="margin-left: 37px"></asp:TextBox>
                      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style1">&nbsp;BODY OF MESSAGE<br />
                      </span></strong>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="211px" Width="584px" TextMode="MultiLine" style="margin-left: 61px"></asp:TextBox>
        <br />
        <br />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style1">Announcement Type&nbsp;   <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Notice</asp:ListItem>
            <asp:ListItem>Exam/Result</asp:ListItem>
        </asp:DropDownList></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
&nbsp;&nbsp;
                              
               
              
                  
                <br />
                              
               
              
                  
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;<span class="auto-style1">&nbsp; Member&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></li>
             
                  
                      &nbsp;<strong><span class="auto-style1"><asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="101px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Faculty</asp:ListItem>
        </asp:DropDownList></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Announce" Font-Bold="True" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
        <br />
                      
               
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