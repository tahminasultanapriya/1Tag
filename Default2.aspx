<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .footer
{
	color: #808080;
	font-size: 15px;
	text-align: center;


}

        .topnav
{
    margin-top:20px;
	width: 1100px;
	float: left;
	margin-left: 0%;
    }

.topnav ul
{
	margin: 0;
	padding: 0;
	list-style: none;
	float: left;
    font-size:18px;

}
.topnav ul li
{
	float: left;
	border-right: 1px solid:#dddd;
	margin-bottom: 50px;
    


}
.topnav ul li a
{
	display: block;
	color: black;
	padding: 10px 20px;
	text-decoration: none;
}
.topnav ul li a:hover
{
	background: #fee101;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
        height: 42px;
    }

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .search-container {
  float: right;
}

        .auto-style1 {
            width: 86px;
        }

        .auto-style2 {
            width: 201px;
        }
        .auto-style3 {
            width: 86px;
            height: 26px;
        }
        .auto-style4 {
            width: 201px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 264px;
        }
        .auto-style6 {
            width: 86px;
            height: 56px;
        }
        .auto-style7 {
            width: 201px;
            height: 56px;
        }
        .auto-style8 {
            height: 56px;
            width: 264px;
        }
        .auto-style9 {
            width: 264px;
        }
    
.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
        height: 42px;
    }

.topnav
{
    margin-top:20px;
	width: 1100px;
	float: left;
	margin-left: 0%;
    }

* {box-sizing: border-box;}

.topnav ul
{
	margin: 0;
	padding: 0;
	list-style: none;
	float: left;
    font-size:18px;
    color:white;

}
.topnav ul li
{
	float: left;
	border-right: 1px solid:#dddd;
	margin-bottom: 50px;
    


}


        .auto-style10 {
            width: 100%;
            height: 58px;
        }
        .auto-style11 {
            width: 455px;
            background-color: #7B8386;
        }
        .auto-style12 {
            width: 100%;
            height: 38px;
        }


        .auto-style14 {
            width: 86px;
            height: 29px;
        }
        .auto-style15 {
            width: 201px;
            height: 29px;
        }
        .auto-style16 {
            width: 264px;
            height: 29px;
        }


        .auto-style17 {
            text-align: center;
        }


        </style>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>


<body  style="background-image:url(team1.jpg); background-position:top; background-repeat:no-repeat; background-attachment:fixed;">
    <form id="form1" runat="server">
            <div class="formDesign">
                <div class="topnav" style="padding-top: 0px; margin-top: 0px; width: 100%; background-color: #009933; text-align: center;">
			  	<ul>
    			<li style="margin-bottom: 0px"><a href="http://localhost:2382/WebSite2/" style="color: #FFFFFF">Home</a></li>
    			<li style="margin-bottom: 0px"><a href="http://localhost:29984/Profile.aspx" style="color: #FFFFFF">Profile</a></li>
          	  	<li style="margin-bottom: 0px"><a href="http://localhost:29984/Tags.aspx" style="color: #FFFFFF">Tags</a></li>
   			  	<li style="margin-bottom: 0px"><a href="http://localhost:29984/Contact.aspx" style="color: #FFFFFF">Contact</a></li>
   			  	<li style="color: #FFFFFF"></li>
   			    </ul>
    
  </div>

                
         <div style="text-align: center; width: 100%; padding-left: 18%;">
            
                 <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" style="text-align: left; margin-left: 108px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                             <FooterStyle BackColor="White" ForeColor="#333333" />
                 <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                 <ItemStyle BackColor="White" ForeColor="#333333" />
                 <ItemTemplate>
                     <table class="auto-style10" style=" background-color: #7B8386;">
                         <tr>
                             <td class="auto-style11" >Name :<asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                             </td>
                             <td>PostedDate :
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                             </td>
                         </tr>
                     </table>
                     <table class="auto-style12" style=" background-color: #7B8386; height: 45px;">
                         <tr>
                             <td>Email :
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                             </td>
                         </tr>
                     </table>

                     <table class="auto-style12"  style="background-color: #009933;">
                         <tr>
                             <td class="auto-style17">Tag :
                                 <asp:Label ID="Label5" runat="server" Text='<%# Eval("Subject") %>'></asp:Label>
                             </td>
                         </tr>
                     </table>
                     <br />
                     <br />
                     <br />
                     Comment :
                     <asp:Label ID="Label4" runat="server" Text='<%# Eval("Comment") %>'></asp:Label>
                     <br />
                     <br />
                 </ItemTemplate>
                 <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
             </asp:DataList>
             


           
        </div>       
            </div>
            
                
                           
  <table style="width: 20%; height: 288px; margin-top: 0px;float:left; margin-left:45%;">
                        <tr>
                            <td colspan="2"> <p style="text-align: center; font-family: Georgia; font-size: 30px; font-weight: bold; color: #009900; height: 73px; width: 466px; float: right;">
                If You Want To Post Anything Please Post Here
            </p></td>

                        </tr>
      <tr>
                        <td class="auto-style3">Tag</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="Subject" runat="server" Width="185px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" Display="Dynamic"  ErrorMessage="Please Provide Tag" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
      </tr>
                    <tr>
                        <td class="auto-style3">Username<td class="auto-style4">
                            <asp:TextBox ID="txtName" runat="server" Width="185px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic"  ErrorMessage="Please Provide Name" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Email</td>
                        <td class="auto-style15">
                            <asp:TextBox ID="txtEmail" runat="server" Width="185px"></asp:TextBox>
                        </td>
                        <td class="auto-style16">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please Provide Email" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email ID is Incorrect" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Comment</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtComment" runat="server" Height="44px" TextMode="MultiLine" Width="185px"></asp:TextBox>
                        </td>
                        <td class="auto-style8">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComment" ErrorMessage="Please Provide Comment" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dataCS %>" SelectCommand="SELECT * FROM [Comment3]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="btn_Submit" runat="server" Text="Post Comment" OnClick="btn_Submit_Click" CssClass="buttonSubmit" />
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                </table>



    </form>
	<div class="footer">

	<p style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: 20px; text-align: center; margin-top: 315px; color: #000000;"> Copyright &copy; 1Tag.com </p>
</div>
</body>
</html>
