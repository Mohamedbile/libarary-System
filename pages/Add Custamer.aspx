<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Add Custamer.aspx.vb" Inherits="pages_Add_Custamer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Css/Home%20css.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
          border-style: solid;
         background-image: linear-gradient(rgba( 0,5,5,-3),rgba(0,5,5,-3)),url('../image/ORlcJ4.jpg');
            width: 362px;
            height: 441px;
            top: auto;
            right: auto;
            bottom: auto;
            left: auto;
            position: static;
            list-style-type: disc;
            font-size: medium;
            color: blue;
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

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Custamer ID:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtid" runat="server" Width="208px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Custamer Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server" Width="208px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtphone" runat="server" Width="208px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender:</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDown" runat="server" Height="23px" Width="206px">
                            <asp:ListItem>Select Your Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">City</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCity" runat="server" Width="208px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Year</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtYear" runat="server" Width="208px" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" Width="78px" style="color: #FFFFFF; font-size: medium; font-weight: 700; background-color: #0033CC" />
&nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" Width="78px" style="color: #333300; font-size: medium; font-weight: 700; background-color: #00FF00" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="78px" style="color: #FFFFFF; font-weight: 700; font-size: medium; background-color: #FF3300" />
&nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" Width="78px" style="color: #FFFFFF; font-size: medium; font-weight: 700; background-color: #0033CC" />
                    </td>
                </tr>
            </table>
     </div>
          
          </div>
          </div>
           <div class="box">
                <center>
              <asp:GridView ID="GridView1" runat="server" Height="16px" Width="649px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateSelectButton="True">
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

           </div>
        
           </section>
       
    </div>
    </form>
</body>
</html>
