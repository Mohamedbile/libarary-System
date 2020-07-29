<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Issue Book.aspx.vb" Inherits="pages_Issue_Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Css/Home%20css.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 481px;
             width: 101%;
            height: 450px;
            background-image: linear-gradient(rgba( 0,5,5,-3),rgba(0,5,5,-3)),url('../image/hhh.jpg');
            background-repeat:no-repeat;
            background-size:cover;
        }
    
        .auto-style4 {
            color: #0033CC;
            width: 150px;
        }
        .auto-style5 {
            color: #0033CC;
            font-size: medium;
            font-weight: bold;
            width: 150px;
        }
        .auto-style6 {
            width: 138px;
        }
        .auto-style7 {
            width: 150px;
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
               <h1 style="width: 349px; background-color: #66FF33">Issue Book</h1>

               
               <table class="auto-style3">
                   <tr>
                       <td class="auto-style5">Custamer ID</td>
                       <td>
                           <asp:TextBox ID="txtid" runat="server" Width="144px"></asp:TextBox>
&nbsp;<asp:Button ID="btnGo" runat="server" Text="Go" Width="46px" />
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Custamer name:</td>
                       <td>
                           <asp:TextBox ID="txtcustamername" runat="server" Width="196px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Phone</td>
                       <td>
                           <asp:TextBox ID="txtPhone" runat="server" Width="196px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Book ID:</td>
                       <td class="auto-style6">
                    <asp:TextBox ID="txtbookid" runat="server" Width="190px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Book Name:</td>
                       <td>
                    <asp:TextBox ID="txtname" runat="server" Width="185px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Publisher Year:</td>
                       <td>
                      <asp:TextBox ID="txtyear" runat="server" Width="182px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Author</td>
                       <td>
                      <asp:TextBox ID="txtAuthor" runat="server" Width="186px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Edition</td>
                       <td>
                      <asp:TextBox ID="txtEditition" runat="server" Width="183px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Price:</td>
                       <td>
                      <asp:TextBox ID="txtprice" runat="server" Width="185px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style7">Due Date:</td>
                       <td class="auto-style8">
                      <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="180px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style4">
                      <asp:Button ID="go" runat="server" Text="Go" Width="34px" style="color: #FFFFFF; background-color: #FFFFFF" />
                       </td>
                       <td>
                           <asp:Button ID="btnIssue" runat="server" Height="32px" style="color: #FFFFFF; background-color: #0033CC" Text="Issue Book" Width="109px" />
&nbsp;<asp:Button ID="btnReturn" runat="server" Text="Rutern Book" Width="28px" style="color: #FFFFFF; background-color: #FFFFFF" />
                       </td>
                   </tr>
               </table>
               <br />

               
            </div>
          </div>
         
    <div class="box">
          
              <asp:GridView ID="GridView1" runat="server" Height="16px" Width="874px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" AutoGenerateSelectButton="True" CellSpacing="2" ForeColor="Black" style="font-size: medium">
                   <FooterStyle BackColor="#CCCCCC" />
                   <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                   <RowStyle BackColor="White" />
                   <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                   <SortedAscendingCellStyle BackColor="#F1F1F1" />
                   <SortedAscendingHeaderStyle BackColor="#808080" />
                   <SortedDescendingCellStyle BackColor="#CAC9C9" />
                   <SortedDescendingHeaderStyle BackColor="#383838" />
               </asp:GridView>
           </div>
  
           </section>
       
        
    
    </div>
    </form>
</body>
</html>
