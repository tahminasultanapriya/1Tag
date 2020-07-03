<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showdetails.aspx.cs" Inherits="admindetailsprofile" %>

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
.one1 {
    height: 183px;
    float: left;
    background: #33cc33;
    margin-right:100px;
    margin-left:80px;
}
.two1 {
    margin-top:80px;
    margin-left: 180px;
    margin-right:50px;
    background: #33cc33;
    border: 1px solid black;
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
    width: 166.6px;
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
    .auto-style1 {
        width: 210px;
    }
    .auto-style2 {
        width: 210px;
        height: 41px;
    }
    .auto-style3 {
        height: 41px;
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
<body style="height: 420px;background-color:#C0C0C0">
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
<div class="nav1" style=" list-style-position: inside; height: 50px; width: 100%; background-color: #33CC33; margin-top:-35px;">
    <ul style="width: 100%; background-color: #000000; color: #FFFFFF; height: 62px;">
    			<li><a href="http://localhost:2382/WebSite2/admin.aspx" style="color: #FFFFFF">Home</a></li>
                <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn" style="color: black;background-color:#C0C0C0">Admin <i class="fa fa-angle-down" style="font-size:20px;color:grey"></i></a>
                <div class="dropdown-content">
                    <a href="http://localhost:2382/WebSite2/showdetails.aspx" style="background-color:#33cc33;">Show details</a>
                    <a href="http://localhost:2382/WebSite2/editprofile.aspx">Edit Profile</a>
                    <a href="http://localhost:2382/WebSite2/changeadminpassword.aspx">Change Password</a>
                </div>
                </li>
   			  	<li><a href="http://localhost:2382/WebSite2/admin.aspx" style="color: white">Upload File</a></li>
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
                <li><a href="http://localhost:2382/WebSite2/admindeleteaccount.aspx" style="color: white">Delete Account</a></li>
                <li> <asp:Button ID="Button1" runat="server" Text="LogOut" style="color: white; background-color: red;" OnClick="logout" Height="61px" Width="166px" /> </li>
   			    </ul>


</div>
<section class="container" style=" height: 100px; width: 100%;">
    <div class="one1" style="margin-right:120px;margin-top:20px;">
        <div id="profile" style="width: 100%;">
                <div class="img" style="align:center; width: 416px;">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" ShowHeader="False" Height="34px" Width="114px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" >
                            <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                  <asp:TemplateField>

                                    <ItemTemplate>

                                        <table cellpadding="0" cellspacing="0" style="margin:5px 0px; border:1px solid #A0A0A0;width:100%;height:100%">

                                            <tr style="">
                                                <td style="padding:4px;height:19px; vertical-align:top;color:Black;">
                                                    <img alt ="" src ='images/<%#Eval("image") %>' style="height: 400px; width: 400px"/>
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
        </div>
    <div class="two1" style="background-color:white">
          <table style="margin-left:140px; height: 467px;">
             <tr>
                 <td colspan="2">
                     <div style="text-align: center; font-size: 50px; font-style: italic; color: #000000; font-weight: bold; font-family: Arial, Helvetica, sans-serif">
                     <h2 style="width: 501px; font-weight: bold; font-style: oblique; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 40px; height: 69px;">
                         My Profile
                     </h2>
                     </div>

                 </td>
             </tr>
            <tr>
                 <td class="auto-style1" style="color: #000000; font-size: 20px; font-family: Arial, Helvetica, sans-serif; font-weight: bolder">

                     User Name:</td>
                <td style="color:#A52A2A;font-size:30px;font-family: Arial, Helvetica, sans-serif; font-weight: bolder">

                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                </td>
             </tr>
             <tr>
                 <td class="auto-style1" style="color: #000000; font-size: 20px; font-family: Arial, Helvetica, sans-serif; font-weight: bolder">

                     Full Name:</td>
                <td style="color:#A52A2A;font-size:30px;font-family: Arial, Helvetica, sans-serif; font-weight: bolder">

                    <asp:Label ID="Label3" runat="server" Text="Tahmina Sultana Priya"></asp:Label>

                </td>
             </tr>
             <tr>
                 <td class="auto-style1" style="color: #000000; font-size: 20px; font-family: Arial, Helvetica, sans-serif; font-weight: bolder">

                     Email:</td>
                <td style="color:#A52A2A;font-size:30px;font-family: Arial, Helvetica, sans-serif; font-weight: bolder">

                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

                </td>
             </tr>
            <tr>
                 <td class="auto-style1" style="color: #000000; font-size: 20px; font-family: Arial, Helvetica, sans-serif; font-weight: bolder">

                     Country:</td>
                <td style="color:#A52A2A;font-size:30px;font-family: Arial, Helvetica, sans-serif; font-weight: bolder">

                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>

                </td>
             </tr>
             <tr>
                 <td class="auto-style2" style="color: #000000; font-size: 20px; font-family: Arial, Helvetica, sans-serif; font-weight: bolder">
                     Gender:
                 </td>
                 <td class="auto-style3" style="color:#A52A2A;font-size:30px;font-family: Arial, Helvetica, sans-serif; font-weight: bolder">

                     <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

                 </td>
             </tr>
              <tr>
                  <td  style="color: #000000; font-size: 20px; font-family: Arial, Helvetica, sans-serif; font-weight: bolder">
                      Profession:
                  </td>
                  <td style="color:#A52A2A;font-size:30px;font-family: Arial, Helvetica, sans-serif; font-weight: bolder">
                      <asp:Label ID="Label7" runat="server" Text="Student"></asp:Label>

                  </td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: 20px; font-family: Arial, Helvetica, sans-serif; font-weight: bolder">
                      Contact No:
                  </td>
                  <td style="color:#A52A2A;font-size:30px;font-family: Arial, Helvetica, sans-serif; font-weight: bolder">
                      <asp:Label ID="Label8" runat="server" Text="+8801679357283"></asp:Label>
                  </td>
              </tr>
         </table>
        </div>
</section> 
</form>
</body>
</html>

