<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Add Book.aspx.vb" Inherits="pages_Add_Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Css/Home%20css.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 411px;
            background-image: linear-gradient(rgba( 0,5,5,-3),rgba(0,5,5,-3)),url('../image/lib1.jpg');
        }
        .auto-style2 {
            width: 134px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
    <div>
    <div>
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
              <section id="boxes">
      <div class="container">
        <div class="box">
               <h1 style="width: 349px; background-color: #66FF33">Add Book</h1>
    
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Book ID:</td>
                    <td>
                        <asp:TextBox ID="txtid" runat="server" Width="181px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Book Name</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" Width="181px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Publisher Year:</td>
                    <td>
                        <asp:TextBox ID="txtpublisher" runat="server" Width="181px" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Author:</td>
                    <td>
                        <asp:TextBox ID="txtAuthor" runat="server" Width="181px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Edition:</td>
                    <td>
                        <asp:TextBox ID="txtEdition" runat="server" Width="181px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Price:</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server" Width="181px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btninsert" runat="server" Text="Insert" Height="32px" style="color: #FFFFFF; background-color: #0033CC" Width="65px" />
&nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" Height="32px" style="color: #FFFFFF; background-color: #00FF00" Width="65px" />
                        <br />
                        <br />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Height="32px" style="color: #CC3300; background-color: #000000" Width="65px" />
&nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" Height="32px" style="color: #FFFFFF; background-color: #FF9966" Width="65px" />
                    </td>
                </tr>
            </table>
            </div>
          </div>
           </div>
                 
         <div class="box">
             <center>
              <asp:GridView ID="GridView1" runat="server" Height="16px" Width="594px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateSelectButton="True">
                   <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                   <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                   <RowStyle BackColor="White" ForeColor="#330099" />
                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                   <SortedAscendingCellStyle BackColor="#FEFCEB" />
                   <SortedAscendingHeaderStyle BackColor="#AF0101" />
                   <SortedDescendingCellStyle BackColor="#F6F0C0" />
                   <SortedDescendingHeaderStyle BackColor="#7E0000" />
               </asp:GridView>
           </div>
        </center>
           </section>
       
        
    
    </div>
    </form>
</body>
</html>
