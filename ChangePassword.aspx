<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

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
    width: 168.7px;
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
    .edit2 {
        height: 488px;
    }
    .auto-style1 {
        width: 100%;
    }
.button {
    background-color: #c0c0c0; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}

.button1 {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
        height: 102px;
        width: 288px;
    }

.button2 {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
    height: 102px;
    width: 288px;
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
<body>
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
    			<li><a href="http://localhost:2382/WebSite2/Home.aspx" style="color: #FFFFFF">Home</a></li>
                <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn" style="color: black;background-color:#C0C0C0">Admin <i class="fa fa-angle-down" style="font-size:20px;color:grey"></i></a>
                <div class="dropdown-content">
                    <a href="#"">Show details</a>
                    <a href="#" style="background-color:#33cc33;">Edit Profile</a>
                </div>
                </li>
          	  	<li style="color: #FFFFFF"><a href="http://localhost:2382/WebSite2/Tags.aspx" style="color: #FFFFFF" >Add Member</a></li>
   			  	<li><a href="http://localhost:29984/Search.aspx" style="color: white">Upload File</a></li>
   			  	<li><a href="http://localhost:2382/WebSite2/Contact.aspx" style="color: white">All Users</a></li>
   			  	<li><a href="http://localhost:29984/Others.aspx" style="color: white">Add Tags</a></li>
                <li><a href="http://localhost:29984/Others.aspx" style="color: white">Delete Account</a></li>
                <li><asp:Button ID="logout" runat="server" Text="Log Out" Height="62px" Width="168px" BackColor="Red" Font-Bold="True" ForeColor="White" OnClick="logout_Click"/> </li>
   			    </ul>
</div>


    <table align="center" cellspacing="10" class="auto-style1" style="margin-right:120px;margin-left:330px;">
        <tr>
            <td>
                <asp:Button class="button button1" ID="Button1" style="font-size: large; font-weight: bold; color: #FFFFFF;" OnClick="Button1_Click" runat="server" Text="Edit Profile" />
                 <asp:Button class="button button1" ID="Button2" style="font-size: large; font-weight: bold; color: #FFFFFF;" OnClick="Button2_Click" runat="server" Text="Change Password" />
            </td>
        </tr>
    </table>
<table align="center" cellspacing="10" style="width: 955px">
                          <tr>
                              <td class="auto-style6" style="color: #000000">Username:</td>
                              <td class="auto-style6">
                                  <asp:TextBox ID="username" runat="server" Height="37px" name="username" placeholder="First Name Last Name" style="font-size: small" Width="216px"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" Font-Size="Medium" ForeColor="Black">Username Cannot Be Blank</asp:RequiredFieldValidator>
                                  <br />
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style8" style="color: #000000">Email Id:</td>
                              <td class="auto-style9">
                                          <asp:TextBox ID="email" runat="server" Height="37px" name="email" placeholder="Enter Email" style="font-size: small" Width="216px"></asp:TextBox>
                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email Is Not Valid" Font-Size="Medium" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                          <asp:Label ID="Label5" runat="server" EnableViewState="False" ForeColor="#FEE100"></asp:Label>

                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style10" style="color: #000000">
                                  <label for="country">
                                  Country:</label>
                                  <td class="auto-style11">
                                      <asp:DropDownList ID="country" runat="server" Height="37px" name="country" Width="216px">
                                          <asp:ListItem>(Select A Country)</asp:ListItem>
                                          <asp:ListItem>Afganistan</asp:ListItem>
                                          <asp:ListItem>Albania</asp:ListItem>
                                          <asp:ListItem>Algeria</asp:ListItem>
                                          <asp:ListItem>America</asp:ListItem>
                                          <asp:ListItem>Argentina</asp:ListItem>
                                          <asp:ListItem>Australia</asp:ListItem>
                                          <asp:ListItem>Austria</asp:ListItem>
                                          <asp:ListItem>Bahamas</asp:ListItem>
                                          <asp:ListItem>Bahrain</asp:ListItem>
                                          <asp:ListItem>Bangladesh</asp:ListItem>
                                          <asp:ListItem>Belgium</asp:ListItem>
                                          <asp:ListItem>Bermuda</asp:ListItem>
                                          <asp:ListItem>Bhutan</asp:ListItem>
                                          <asp:ListItem>Bolivia</asp:ListItem>
                                          <asp:ListItem>Brazil</asp:ListItem>
                                          <asp:ListItem>Canada</asp:ListItem>
                                          <asp:ListItem>China</asp:ListItem>
                                          <asp:ListItem>Colombia</asp:ListItem>
                                          <asp:ListItem>Denmark</asp:ListItem>
                                          <asp:ListItem>Egypt</asp:ListItem>
                                          <asp:ListItem>Finland</asp:ListItem>
                                          <asp:ListItem>France</asp:ListItem>
                                          <asp:ListItem>Ghana</asp:ListItem>
                                          <asp:ListItem>Greece</asp:ListItem>
                                          <asp:ListItem>India</asp:ListItem>
                                          <asp:ListItem>Italy</asp:ListItem>
                                          <asp:ListItem>Japan</asp:ListItem>
                                          <asp:ListItem>Kuwait</asp:ListItem>
                                          <asp:ListItem>Laos</asp:ListItem>
                                          <asp:ListItem>Malaysia</asp:ListItem>
                                          <asp:ListItem>Nepal</asp:ListItem>
                                          <asp:ListItem>New Zealand</asp:ListItem>
                                          <asp:ListItem>Oman</asp:ListItem>
                                          <asp:ListItem>Pakistan</asp:ListItem>
                                          <asp:ListItem>Portugal</asp:ListItem>
                                          <asp:ListItem>Qatar</asp:ListItem>
                                          <asp:ListItem>Romania</asp:ListItem>
                                          <asp:ListItem>Saudi Arabia</asp:ListItem>
                                          <asp:ListItem>Singapore</asp:ListItem>
                                          <asp:ListItem>South Africa</asp:ListItem>
                                          <asp:ListItem>Spain</asp:ListItem>
                                          <asp:ListItem>Sri Lanka</asp:ListItem>
                                          <asp:ListItem>Switzerland</asp:ListItem>
                                          <asp:ListItem>Syria</asp:ListItem>
                                          <asp:ListItem>Thailand</asp:ListItem>
                                          <asp:ListItem>Turkey</asp:ListItem>
                                          <asp:ListItem>Island</asp:ListItem>
                                          <asp:ListItem>Uganda</asp:ListItem>
                                          <asp:ListItem>Uzbekistan</asp:ListItem>
                                          <asp:ListItem>Vietnam</asp:ListItem>
                                          <asp:ListItem>Yemen</asp:ListItem>
                                          <asp:ListItem>Zambia</asp:ListItem>
                                          <asp:ListItem>Zimbabwe</asp:ListItem>
                                      </asp:DropDownList>
                                  </td>
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style7" style="color: #000000">Gender:</td>
                               <td>
                                    <select id="gender_info" runat="server" style="cursor: pointer;">
                                        <option value="0">--Select Gender--</option>
                                        <option value="1">Male</option>
                                        <option value="2">Female</option>
                                    </select>
                                    <p id="gender_err" runat="server">&nbsp;</p>
                                </td>
                          </tr>
                          <tr>
                              <td class="auto-style2" colspan="2" style="color: black">
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
                                                <asp:Button ID="Button3" runat="server" BackColor="#009900" ForeColor="White" Height="50px" OnClick="insertion" OnClientClick="javascript:formvalidatation()" Text="Update" Width="931px" />
                                                 <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </ContentTemplate>
                                        </asp:UpdatePanel>

                                     </td>
                          </tr>
                      </table>

</form>
    </body>
</html>

