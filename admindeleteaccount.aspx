﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admindeleteaccount.aspx.cs" Inherits="admindeleteaccount" %>

<style>

.header2
{
	float: left;
	width: 1590px;
	margin-right: 30px;
	float: left;
	font-size: 30px;
	font-style: bold;
	overflow: hidden;
	
}
.footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color:black;
    color: white;
    text-align: center;
}
.text-animation li
{

	display: inline-block;
	padding:1px; 
    color: #FFFFFF;
     clear: left;
    text-align: left;
    font-style: italic;
	margin-left: 3px;
	font-family: Helvetica Neue;
	font-weight: 200;
	font-size:3em;
	color: black;
	opacity: 1;
	font-style: bold;
	transition: all 1.5s ease;
	text-shadow: 2px 2px grey;
	margin-left: 5px;
	font-style: bold;
    height: 69px;
    width: 27px;
}

.text-animation :hover {
	font-size: 3.5em;
	text-decoration-color: currentColor;
}
.text-animation li:last-child

.text-animation.hidden
{
	opacity:0;
}
.text-animation.hidden li:nth-child(1) {transform: translateX(-200px) translateY(-200px);}
.text-animation.hidden li:nth-child(2) {transform: translateX(20px) translateY(100px);}
.text-animation.hidden li:nth-child(3) {transform: translateX(-150px) translateY(-80px);}
.text-animation.hidden li:nth-child(4) {transform: translateX(20px) translateY(100px);}


.text {
    text-shadow: 2px 2px grey;
}

.one {
    width: 26%;
    height: 183px;
    float: left;
    background: #33cc33;
}
.two {
    margin-left: 15%;
    height: 218px;
    background: #33cc33;
}
.nav1 {
    background-color:red;
}

.nav1 ul
{
	margin: 0;
	padding: 0;
	list-style: none;
	float: right;
    font-size:18px;

}
.nav1 ul li
{
	float: left;
    width: 166.5px;
}
.nav1 ul li a
{
	display: block;
	color: black;
	padding: 20px 25px;
	text-decoration: none;
    text-align:center;
}
.nav1 ul li a:hover
{
	background: #ec5f1a;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 20px 25px;
    text-decoration: none;

   
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: #ec5f1a;


}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: white;
    min-width: 168.5px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 20px 25px;
    text-decoration: none;
    display: block;
    text-align: left;
    background-color: white;
}

.dropdown-content a:hover {
    background-color: red;
}

.dropdown:hover .dropdown-content {
    display: block;
    background-color: #33cc33;


}
</style>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> 1Tag</title>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />  
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="jquery.min.js" type="text/javascript"></script>  
    <script src="jquery-ui.min.js" type="text/javascript"></script>  
</head>
<body >
  <form id="form1" runat="server">
    <div class="one">
        <div class="header2" style="font-size: 18px; height: 122px; width: 157%; text-align: left; color: #008000; margin-top:40px; background-color: #33CC33;">
				<ul class="text-animation hidden">
					<li style="font-weight: bold">1</li>
					<li style="font-weight: bold">T</li>
					<li style="font-weight: bold">a</li>
					<li style="font-weight: bold">g</li>
					
				</ul>

				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
				<script type="text/javascript">
				    $(function () {
				        setTimeout(function () {
				            $('.text-animation').removeClass('hidden');
				        }, 500);
				    })();
				</script>
				
			</div>
	
 </div>
 <div class="two"style="text-align:right;">
        <div class="name" style="margin-right:20px;" >
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Brush Script MT" Font-Size="50px" ForeColor="Black"></asp:Label>
</div>
<div class="img" style="text-align:right; float: right; height: 52px; width: 203px;">
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="False" Height="5px" Width="16px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" >

            <AlternatingRowStyle BackColor="White" />

<Columns>
   <asp:TemplateField>

    <ItemTemplate>

        <table cellpadding="0" cellspacing="0" style="margin:5px 0px; border:1px solid #A0A0A0;width:100%;height:100%">

            <tr style="">
                <td style="padding:4px;height:19px; vertical-align:top;color:Black;">
                    <img alt ="" src ='images/<%#Eval("image") %>' style="height: 87px; width: 100px"/>
                </td>
            </tr>
        </table>

    </ItemTemplate>

    </asp:TemplateField>

    </Columns>

            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />

    </asp:GridView>

    </div>    
</div>
<div class="nav1" style=" list-style-position: inside; height: 50px; width: 100%; background-color: red; margin-top:-35px;">
			  	   <ul style="width: 100%; background-color: #000000; color: #FFFFFF; height: 62px;">
    			<li><a href="http://localhost:2382/WebSite2/Home.aspx" style="color: #FFFFFF">Home</a></li>
                <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn" style="color:white;">Admin <i class="fa fa-angle-down" style="font-size:20px;color:grey"></i></a>
                <div class="dropdown-content">
                    <a href="http://localhost:2382/WebSite2/showdetails.aspx">Show details</a>
                    <a href="http://localhost:2382/WebSite2/editprofile.aspx">Edit Profile</a>
                    <a href="http://localhost:2382/WebSite2/changeadminpassword.aspx " >Change Password</a>
                </div>
                </li>
   			  	<li><a href="http://localhost:29984/Search.aspx" style="color: white">Upload File</a></li>
                <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn" style="color:white;">Users<i class="fa fa-angle-down" style="font-size:20px;color:grey"></i></a>
                <div class="dropdown-content">
                    <a href="http://localhost:2382/WebSite2/regusers.aspx">Registered</a>
                    <a href="http://localhost:2382/WebSite2/nonregusers.aspx">Non Registered</a>
                </div>
                </li>
   			  	<li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn" style="color: #FFFFFF">Tags <i class="fa fa-angle-down" style="font-size:20px;color:grey"></i></a>
                <div class="dropdown-content">
                    <a href="http://localhost:2382/WebSite2/regtags.aspx">Registered</a>
                    <a href="http://localhost:2382/WebSite2/nonregtags.aspx">Non Registered</a>
                </div>
                </li>
                <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn" style="color: #FFFFFF">Search <i class="fa fa-angle-down" style="font-size:20px;color:grey"></i></a>
                <div class="dropdown-content">
                    <a href="http://localhost:2382/WebSite2/searchbyname.aspx">By Username</a>
                    <a href="http://localhost:2382/WebSite2/searchbyatg.aspx">By Tag</a>
                </div>
                </li>
                <li><a href="http://localhost:2382/WebSite2/admindeleteaccount.aspx" style="color: black;background-color:#C0C0C0">Delete Account</a></li>
                <li><asp:Button ID="Button1" runat="server" Text="LogOut" style="color: white; background-color: red;" OnClick="logout" Height="61px" Width="166px" /></li>                                   
   			    </ul>


</div>
<div style="width:100%;background-color:#c0c0c0;">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <HeaderTemplate>
        <table cellspacing="0" rules="all" border="1"style="width:100%;" >
            <tr style="background-color:#CC7A00; height:50px; width:100%; font-weight: bolder;">
                <th scope="col" style="width: 80px">
                    User Id
                </th>
                <th scope="col" style="width: 80px">
                    User Name
                </th>
                <th scope="col" style="width: 120px">
                   Password
                </th>
                <th scope="col" style="width: 100px">
                   Email
                </th>
                <th scope="col" style="width: 100px">
                    Country
                </th>
                <th scope="col" style="width: 100px">
                   Gender
                </th>
                <th style="width: 60px">
                    Others
                </th>
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr style="height:50px; width:100%;">
            <td>
                <asp:Label ID="lblUserId" runat="server" Text='<%# Eval("id") %>' />
            </td>
            <td>
                <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("username") %>' />
            </td>
            <td>
                <asp:Label ID="lblUserPass" runat="server" Text='<%# Eval("password") %>' />
            </td>
            <td>
                <asp:Label ID="lblUserEmail" runat="server" Text='<%# Eval("email") %>' />
            </td>
            <td>
                <asp:Label ID="lblUserCountry" runat="server" Text='<%# Eval("country") %>' />
            </td>
            <td>
                <asp:Label ID="lblUserGen" runat="server" Text='<%# Eval("gender") %>' />
            </td>
            <td>
                <asp:LinkButton ID="lnkDelete" Text="Delete" runat="server" OnClientClick="return confirm('Do you want to delete this Customer?');"
                    OnClick="DeleteCustomer" ForeColor="Red" />
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [id], [username], [email], [password], [country], [gender] FROM [reg]"></asp:SqlDataSource>
</div>
                <div style="height:50px;background-color:#CC7A00;">
                    <table style="width: 100%;">
                        <tr>
                            <td>  
                                <div style="float:left;">
                                     <asp:Button ID="lbPrevious" runat="server" Text="<< Previous Page" Height="45px" Width="150px" BackColor="#0a528D" Font-Bold="True" ForeColor="White" OnClick="lbPrevious_Click"/>  
                                </div>
                               
                            </td>
                            <td>
                                <div style="float:right; margin-left:320px;">
                                     <asp:Button ID="lbNext" runat="server" Text="Next Page >>" Height="45px" Width="150px" BackColor="#0a528D" Font-Bold="True" ForeColor="White" OnClick="lbNext_Click"/>                             
                                </div>
                            </td>
                            
                        </tr>
                    </table>

                </div>
      <div>
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <input type "button" id="b1" value="insert" onclick="search" />
      </div>
      <div id="d1">

      </div>
      <script type="text/javascript">
          function search() {
              var xmlhttp = new XMLHttpRequest();
              xmlhttp.open("GET", "admindeleteaccount.aspx?opr=search&nm1=" + document.getElementById("TextBox1").value, false);
              xmlhttp.send(null);
              document.getElementById("d1").innerHTML = xmlhttp.responseText;
          }
      </script>
<div class="footer">
       <p> Copyright &copy; 1Tag.com </p>
</div>

</form>
</body>
</html>

