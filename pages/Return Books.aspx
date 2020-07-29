<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Issue Book.aspx.vb" Inherits="pages_Issue_Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../Css/Home%20css.css" rel="stylesheet" />
  
    <style type="text/css">
        .auto-style1 {
            height: 463px;
            width: 343px;
             background-image: linear-gradient(rgba( 0,5,5,-3),rgba(0,5,5,-3)),url('../image/bar.jpg');
            background-repeat:no-repeat;
            background-size:cover;
        }
        .auto-style2 {
            font-weight: bold;
            height: 54px;
            width: 154px;
        }
        .auto-style3 {
            font-size: large;
            width: 154px;
            color: #0033CC;
        }
        .auto-style4 {
            height: 54px;
            width: 182px;
        }
        .auto-style5 {
            width: 182px;
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
               <h1 style="width: 349px; background-color: #66FF33">Return Book</h1>
              <table class="auto-style1">
              <tr>
                  <td class="auto-style3">Custamer ID:</td>
                  <td class="auto-style5">
                    <asp:TextBox ID="txtid" runat="server" Width="125px"></asp:TextBox>
&nbsp;<asp:Button ID="go" runat="server" Text="Go" Width="42px" Height="31px" style="color: #FFFFFF; font-weight: 700; background-color: #0033CC" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">Custamer Name:</td>
                  <td class="auto-style5">
                    <asp:TextBox ID="txtcustamername" runat="server" Width="168px" style="margin-left: 2px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">Phone:</td>
                  <td class="auto-style5">
                    <asp:TextBox ID="txtphone" runat="server" Width="168px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">Book ID:</td>
                  <td class="auto-style5">
                    <asp:TextBox ID="txtbookid" runat="server" Width="168px"></asp:TextBox>
&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3">Book Name:</td>
                  <td class="auto-style5">
                    <asp:TextBox ID="txtname" runat="server" Width="168px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">Publisher Year:</td>
                  <td class="auto-style5">
                      <asp:TextBox ID="txtyear" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">Author</td>
                  <td class="auto-style5">
                      <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">Edition</td>
                  <td class="auto-style5">
                      <asp:TextBox ID="txtEditition" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">Price</td>
                  <td class="auto-style5">
                      <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">Due Date</td>
                  <td class="auto-style5">
                      <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2"><asp:Button ID="btngo" runat="server" Height="22px" Text="Go" Width="25px" style="color: #FFFFFF; background-color: #FFFFFF" />
                  </td>
                  <td class="auto-style4">
                      <asp:Button ID="btnReturn" runat="server" Text="Rutern Book" Width="121px" Height="33px" style="font-weight: 700; font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: medium; background-color: #FF3300" />
&nbsp;&nbsp;
                      <asp:Button ID="btnIssue" runat="server" style="color: #FFFFFF; background-color: #FFFFFF" Text="Issue Book" Width="27px" />
                  </td>
              </tr>
              
          </table>
       
          </div>
        
          </div>
          </div>
         <div class="boxes">
           </div>
        
       <div class="box">
               <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" Height="85px" style="font-size: medium" Width="857px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
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
        
    </form>
</body>
</html>
