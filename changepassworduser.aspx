<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassworduser.aspx.cs" Inherits="Comment_using_repeater.changepassworduser" %>


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
	opacity 0;
}
.text-animation.hidden li:nth-child(1) {transform: translateX(-200px) translateY(-200px);}
.text-animation.hidden li:nth-child(2) {transform: translateX(20px) translateY(100px);}
.text-animation.hidden li:nth-child(3) {transform: translateX(-150px) translateY(-80px);}
.text-animation.hidden li:nth-child(4) {transform: translateX(20px) translateY(100px);}


.text {
    text-shadow: 2px 2px grey;
}

.one {
    width: 15%;
    height: 100px;
    float: left;
    background: #33cc33;
}
.two {
    margin-left: 15%;
    height: 218px;
    background: #33cc33;
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
    width: 198px;
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
.one1 {
    width: 18%;
    height: 100px;
    float: left;
    background: #33cc33;
}
    .two1 {
        margin-left: 34%;
        height: 100px;
        background: #33cc33;
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
    min-width: 198px;
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
.modal
{
    position: fixed;
    z-index: 999;
    height: 100%;
    width: 100%;
    top: 0;
    background-color: Black;
    filter: alpha(opacity=60);
    opacity: 0.6;
    -moz-opacity: 0.8;
}
.center
{
    z-index: 1000;
    margin: 300px auto;
    padding: 10px;
    width: 130px;
    background-color: White;
    border-radius: 10px;
    filter: alpha(opacity=100);
    opacity: 1;
    -moz-opacity: 1;
}
.center img
{
    height: 128px;
    width: 128px;
}
.Button2 {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #33cc33; /* Green */
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
    height: 56px;
    width: 127px;
}
.Button2:hover
 {
    background-color:#ec5f1a;
 }
.Button2:active
 {
    background-color:#c0c0c0;

 }
    .form-control {}
</style>
<head id="Head1" runat="server">
    <title> 1Tag</title>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />  
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="jquery.min.js" type="text/javascript"></script>  
    <script src="jquery-ui.min.js" type="text/javascript"></script>  

</head>
<body style="background-color:#c0c0c0;">
    <form id="form1" runat="server">
<section class="container" style=" background-color: #33CC33; height: 223px; width: 100%;">
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
<div class="nav1" style=" list-style-position: inside; height: 50px; width: 100%; margin-top:-35px; background-color:#c0c0c0; ">
			  	<ul style="width: 100%; background-color: #000000; color: #FFFFFF; height: 62px;">
    			<li><a href="http://localhost:2382/WebSite2/registerhome.aspx" style="color: #FFFFFF;">Home</a></li>
                <li style="color: #FFFFFF"><a href="http://localhost:2382/WebSite2/userprofile.aspx" style="color: #FFFFFF" >Profile</a></li>
                <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn" style="color: black;background-color:#c0c0c0;">Account Settings <i class="fa fa-angle-down" style="font-size:20px;color:grey"></i></a>
                <div class="dropdown-content">
                    <a href="http://localhost:2382/WebSite2/changepassworduser.aspx">Change Password</a>
                    <a href="http://localhost:2382/WebSite2/changeuserinfo.aspx" style="background-color:#33cc33;">Edit Profile</a>
                </div>
                </li>
                <asp:Button ID="Button1" runat="server" Text="Log Out" style="color: white; float:right; background-color: red;" OnClick="logout" Height="61px" Width="166px" Font-Bold="True" Font-Size="20px" /> 
                                                 
   			    </ul>


</div>

</section>
<div style="background-color:#c0c0c0;">
    <div style="max-width: 400px; margin-left:420px; margin-top:80px;">
    <div style="text-align:center;">
        <h1 class="form-signin-heading">Change Password</h1>
    </div>
    <table align=center cellspacing=10 style="width: 955px">
        <tr>
            <td>
                    <label for="txtUsername" style="font-size: x-large; font-weight: bold;"> Current Password</label>
            </td>
            <td>
                    <asp:TextBox ID="txt_cpassword" runat="server" CssClass="form-control" placeholder="Current Password" TextMode="Password" required Height="43px" Width="306px" />
            </td>
        </tr>
                <tr>
            <td>
                    <label for="txtUsername" style="font-size: x-large; font-weight: bold;"> New password</label>
            </td>
            <td>
                    <asp:TextBox ID="txt_npassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="New Password" required Height="43px" Width="306px" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_npassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$" ErrorMessage="Password must contain: Minimum 8 and Maximum 12 characters atleast 1 Alphabet and 1 Number" />
            </td>
        </tr>
                <tr>
            <td>
                    <label for="txtUsername" style="font-size: x-large; font-weight: bold;"> Confirm Password</label>
            </td>
            <td>
                    <asp:TextBox ID="txt_ccpassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm Password" required Height="43px" Width="306px" />  
                   <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txt_npassword" ControlToValidate="txt_ccpassword" ErrorMessage="Password Mismatch"></asp:CompareValidator>  
            </td>
        </tr>

        </table>
    </div>
    <div>
        <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="modal">
            <div class="center">
                <img alt="" src="loader.gif" />
            </div>
        </div>
    </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div align="center">
            <asp:Button ID="Button2" runat="server" style="font-size: large; font-weight: bold; color: #FFFFFF;" OnClick="btn_update_Click" BackColor="#428BCA" ForeColor="White" Height="42px" Width="99px" Text="Change" />
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</div>  

  

</form>
</body>


