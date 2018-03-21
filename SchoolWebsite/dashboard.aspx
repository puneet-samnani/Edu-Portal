<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="SchoolWebsite.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;
    

        <asp:ImageButton ID="ImageButton1" runat="server" Height="82px" ImageUrl="~/images/School_100px.png" OnClick="ImageButton1_Click" Width="115px" />
        <asp:Label ID="Label1" runat="server" Text="Schools  "></asp:Label>
        
        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:ImageButton ID="ImageButton2" runat="server" Height="87px" ImageUrl="~/images/Classroom_96px.png" OnClick="ImageButton2_Click" Width="118px" />
        &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Faculty  "></asp:Label>
        
        &nbsp;&nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:ImageButton ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" ImageUrl="~/images/Students.png" />
        &nbsp;
        <asp:Label ID="Label3" runat="server" Text="Students  "></asp:Label>
    &nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server"></asp:Label>
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
