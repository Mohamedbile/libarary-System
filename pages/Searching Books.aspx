<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Searching Books.aspx.vb" Inherits="pages_Searching_Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Css/Home%20css.css" rel="stylesheet" />
        
         
    <style type="text/css">
        .auto-style1 {
            font-size: large;
             border-style: solid;
             bor
        }
        .auto-style2 {
            font-size: small;
            font-family: "Times New Roman", Times, serif;
        }
        .newStyle1 {
            border-style: solid;
        }
        .newStyle2 {
            border-style: solid;
        }
      
        .auto-style3 {
            font-size: large;
            font-family: "Times New Roman", Times, serif;
            color: #FFFFFF;
        }
      
        .auto-style4 {
            background-color: #0033CC;
        }
        .auto-style5 {
            font-size: small;
            font-family: "Times New Roman", Times, serif;
            color: #FFFFFF;
            background-color: #0033CC;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            color: #FFFFFF;
            background-color: #0033CC;
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
    <center>
        <br />
        <br />
       <center>
           <div class="auto-style2">
<h1 style="width: 360px; color: #CC0000; background-color: #003366">Searchin Book</h1>
               </div>
           </center>
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style5"><span class="auto-style3"><strong>Searching B</strong></span><span class="auto-style6">y</span></td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddro" runat="server" Height="23px" Width="173px" CssClass="auto-style11" style="color: #000000; font-size: large; font-weight: 700;">
                        <asp:ListItem>Search ID</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">&nbsp;&nbsp; &nbsp;Book Id</td>
                <td class="auto-style4">
                    <asp:TextBox ID="id" runat="server" Width="127px" style="margin-left: 17px; font-size: large; color: #000000;" CssClass="auto-style11"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnSearch" runat="server" style="margin-left: 22px; color: #FFFFFF; background-color: #0033CC; font-size: large;" Text="Search" Width="135px" CssClass="auto-style11" />
                </td>
            </tr>
        </table>


        <br />
        <asp:GridView ID="GridView1" runat="server" Height="36px" Width="728px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" style="font-size: medium; font-family: 'Times New Roman', Times, serif" CellSpacing="2" ForeColor="Black">
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


    </center>
    </div>
    </form>
</body>
</html>
