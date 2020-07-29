<%@ Page Language="VB" AutoEventWireup="false" CodeFile="View Book.aspx.vb" Inherits="pages_View_Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Css/Home%20css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 193px">
        <div class="head">
       <h1>
            &nbsp;Libarary Management System</h1>
	</div>

	<div class="nav">
		<ul class="main-menu">
			<li><a href="Home.aspx">Home</a></li>
			<li>File
  <ul class="sub-menu">
                  <li><a href="Add%20Book.aspx">Add Book</a></li>
               	<li><a href="Issue%20Book.aspx">Issue Book</a></li>
               		<li><a href="Return%20Books.aspx">Return Books</a></li>
               	<li><a href="Searching%20Books.aspx">Searching Book</a></li>
               	<li>Exit</li>
               </ul>

            </li>

			<li>Custamer

              <ul class="sub-menu">
               	<li><a href="Add%20Custamer.aspx">Add Custamer</a></li>
               	<li><a href="View%20Custamer.aspx">View Custamer</a></li>
               	
              </ul>

			</li>
            
			<li>View
                <ul class="sub-menu">
                    
                    <li><a href="View%20Book.aspx">View Book</a></li>
                    <li><a href="View%20Custamer.aspx">View Custamer</a></li>
               	
                    </ul>

			</li>
            <li>Windows
                <ul class="sub-menu">
                    	<li>Close All</li>
               	
                    </ul>
                </li>
			<li>Help</li>
            <li>Contact</li>
		</ul>
	</div>
        <br />
        <br />
       <center>
<h1 style="width: 360px; color: #CC0000; background-color: #003366">View Book</h1>
           </center>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" style="margin-left: 214px" Width="721px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
