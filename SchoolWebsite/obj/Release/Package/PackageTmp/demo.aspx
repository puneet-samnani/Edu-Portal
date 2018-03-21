<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="SchoolWebsite.demo" %>

    <%@ Page Language="C#" %>  
      
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
      
    <script runat="server">  
      
    </script>  
      
    <html xmlns="http://www.w3.org/1999/xhtml">  
    <head id="Head1" runat="server">  
        <title>How to use asp:Table, asp:TableHeaderRow, asp:TableHeaderCell, asp:TableRow, asp:TableCell, asp:TableFooterRow in asp.net</title>  
    </head>  
    <body>  
        <form id="form1" runat="server">  
        <div>  
            <h2 style="color:Green">Using Table control</h2>  
            <asp:Table ID="Table1" runat="server">  
                <asp:TableHeaderRow ID="TableHeaderRow1" runat="server" ForeColor="Red">  
                    <asp:TableHeaderCell>Serial</asp:TableHeaderCell>  
                    <asp:TableHeaderCell>Name</asp:TableHeaderCell>  
                    <asp:TableHeaderCell>Value</asp:TableHeaderCell>  
                </asp:TableHeaderRow>  
                <asp:TableRow ID="TableRow1" runat="server" ForeColor="Teal">  
                    <asp:TableCell>1</asp:TableCell>  
                    <asp:TableCell>Azure</asp:TableCell>  
                    <asp:TableCell>#F0FFFF</asp:TableCell>  
                </asp:TableRow>  
                <asp:TableRow ID="TableRow2" runat="server" ForeColor="Teal">  
                    <asp:TableCell>2</asp:TableCell>  
                    <asp:TableCell>Beige</asp:TableCell>  
                    <asp:TableCell>#F5F5DC</asp:TableCell>  
                </asp:TableRow>  
                <asp:TableRow ID="TableRow3" runat="server" ForeColor="Teal">  
                    <asp:TableCell>3</asp:TableCell>  
                    <asp:TableCell>Bisque</asp:TableCell>  
                    <asp:TableCell>#FFE4C4</asp:TableCell>  
                </asp:TableRow>  
                <asp:TableRow ID="TableRow4" runat="server" ForeColor="Teal">  
                    <asp:TableCell>4</asp:TableCell>  
                    <asp:TableCell>Crimson</asp:TableCell>  
                    <asp:TableCell>#DC143C</asp:TableCell>  
                </asp:TableRow>  
                <asp:TableRow ID="TableRow5" runat="server" ForeColor="Teal">  
                    <asp:TableCell>5</asp:TableCell>  
                    <asp:TableCell>Cyan</asp:TableCell>  
                    <asp:TableCell>#00FFFF</asp:TableCell>  
                </asp:TableRow>  
                <asp:TableFooterRow ID="TableFooterRow1" runat="server" ForeColor="DarkMagenta">  
                    <asp:TableCell>Total:5</asp:TableCell>  
                    <asp:TableCell></asp:TableCell>  
                    <asp:TableCell></asp:TableCell>  
                </asp:TableFooterRow>  
            </asp:Table>  
      
        </div>  
        </form>  
    </body>  
    </html>  