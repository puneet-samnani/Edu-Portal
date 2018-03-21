<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="SchoolWebsite.demo" %>
 
      
   <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
 
      
   <html xmlns="http://www.w3.org/1999/xhtml">

   

       <head runat="server">
          <title>Demo</title>
           <style type="text/css">
               table.sample {
                   border: 6px inset #8B8378;
                   -moz-border-radius: 6px;
               }

                   table.sample td {
                       border: 1px solid black;
                       padding: 0.2em 2ex 0.2em 2ex;
                       color: black;
                   }

                   table.sample tr.d0 td {
                       background-color: #FCF6CF;
                   }

                   table.sample tr.d1 td {
                       background-color: #FEFEF2;
                   }
               .Tab {}
               .Tab {}
           </style>
           <link href="css/bbb.css" rel="stylesheet" type="text/css" />

           <audio id="audio1" src="bird.wav" controls preload="auto" autobuffer>
          </audio>


           <script>
               function EvalSound(soundobj) {
                   var thissound = document.getElementById(soundobj);
                   thissound.play();
               }
           </script>
       </head>
<body onload="javascript:EvalSound('audio1')">
  
    <form>
        
<input type="button" value="Play Sound" onClick="EvalSound('audio1')">
        
</form>
   
    <form id="form1" runat="server">
     
    </form>
  
    
</body>

</html>