<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registeruser.aspx.cs" Inherits="Comment_using_repeater.Default7" %>

<style>

.panel-shadow {
    box-shadow: rgba(0, 0, 0, 0.3) 7px 7px 7px;
}
.panel-white {
  border: 1px solid #dddddd;
}
.panel-white  .panel-heading {
  color: #333;
  background-color: #fff;
  border-color: #ddd;
}
.panel-white  .panel-footer {
  background-color: #fff;
  border-color: #ddd;
}

.post .post-heading {
  height: 95px;
  padding: 20px 15px;
}
.post .post-heading .avatar {
  width: 60px;
  height: 60px;
  display: block;
  margin-right: 15px;
}
.post .post-heading .meta .title {
  margin-bottom: 0;
}
.post .post-heading .meta .title a {
  color: black;
}
.post .post-heading .meta .title a:hover {
  color: #aaaaaa;
}
.post .post-heading .meta .time {
  margin-top: 8px;
  color: #999;
}
.post .post-image .image {
  width: 100%;
  height: auto;
}
.post .post-description {
  padding: 15px;
}
.post .post-description p {
  font-size: 14px;
}
.post .post-description .stats {
  margin-top: 20px;
}
.post .post-description .stats .stat-item {
  display: inline-block;
  margin-right: 15px;
}
.post .post-description .stats .stat-item .icon {
  margin-right: 8px;
}
.post .post-footer {
  border-top: 1px solid #ddd;
  padding: 15px;
}
.post .post-footer .input-group-addon a {
  color: #454545;
}
.post .post-footer .comments-list {
  padding: 0;
  margin-top: 20px;
  list-style-type: none;
}
.post .post-footer .comments-list .comment {
  display: block;
  width: 100%;
  margin: 20px 0;
}
.post .post-footer .comments-list .comment .avatar {
  width: 35px;
  height: 35px;
}
.post .post-footer .comments-list .comment .comment-heading {
  display: block;
  width: 100%;
}
.post .post-footer .comments-list .comment .comment-heading .user {
  font-size: 14px;
  font-weight: bold;
  display: inline;
  margin-top: 0;
  margin-right: 10px;
}
.post .post-footer .comments-list .comment .comment-heading .time {
  font-size: 12px;
  color: #aaa;
  margin-top: 0;
  display: inline;
}
.post .post-footer .comments-list .comment .comment-body {
  margin-left: 50px;
}
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
	    width: 120px;
    }
.nav1 ul li a
{
	display: block;
	color: black;
	padding: 20px 65px;
	text-decoration: none;
}
.nav1 ul li a:hover
{
	background: #33cc33;
}
.one1 {
    width: 18%;
    height: 100px;
    float: left;
    background: #33cc33;
}
.two1 {
    margin-left:34%;
    height: 100px;
    background: #33cc33;
}

.Initial
{
  display: block;
  padding: 4px 18px 4px 18px;
  float: left;
  background-color:#33CC33;
  color: Black;
  font-weight: bold;
  
}
.Initial:hover
{
  background-color: #FFFFCC;

}
.Clicked
{
  float: left;
  display: block;
  background-color: #FFFFCC;
  padding: 4px 18px 4px 18px;
  color: Black;
  font-weight: bold;
}
    .auto-style2 {
        width: 100%;
        height: 198px;
    }
table .column1
{
 visibility:hidden;
 display:none;
}
    .auto-style6 {
        color: #E6E6E6;
        font-size: 20px;
    }
    .auto-style7 {
        width: 309px;
        color: #E6E6E6;
        font-size: 20px;
    }
    .auto-style8 {
        width: 309px;
        color: #E6E6E6;
        font-size: 20px;
        height: 53px;
    }
    .auto-style9 {
        height: 53px;
    }
    .auto-style10 {
        width: 309px;
        color: #E6E6E6;
        font-size: 20px;
        height: 34px;
    }
    .auto-style11 {
        color: #E6E6E6;
        font-size: 20px;
        height: 34px;
    }
    .auto-style12 {
        height: 30px;
    }
    /*SEARCH...*/
    * {box-sizing: border-box;}


.nav1 .search-container {
  float: right;
}

.nav1 input[type=text] {
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.nav1 .search-container button {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        float: right;
        padding: 6px 10px;
        margin-top: 8px;
        background: #ddd;
        font-size: 17px;
        cursor: pointer;
        height: 53px;
        width: 44px;
    }

.nav1 .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .nav1 a, .nav1 input[type=text], .nav1 .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .nav1 input[type=text] {
    border: 1px solid #ccc;  
  }
}

    .auto-style14 {
        height: 86px;
    }

</style>
<head id="Head1" runat="server">
    <title> 1Tag</title>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />  
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="jquery.min.js" type="text/javascript"></script>  
    <script src="jquery-ui.min.js" type="text/javascript"></script>  
      
    <script type="text/javascript">
        $(document).ready(function () {
            SearchText();
        });
        function SearchText() {
            $("#txtSearch").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "Default7.aspx/GettagName",
                        data: "{'tagName':'" + document.getElementById('txtSearch').value + "'}",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert("No Match");
                        }
                    });
                }
            });
        }
    </script>  </head>
<body>
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
    </div>
</section>
<div class="nav1" style="float: left; list-style-position: inside; height: 50px; width: 100%; background-color: #33CC33; margin-top:-35px;">
			  	<ul style="width: 100%; background-color: #000000; color: #FFFFFF; height: 62px;">
    			<li><a href="http://localhost:2382/WebSite2/Home.aspx" style="padding-right: 20px; color: #FFFFFF; width: 206px;">Home</a></li>
    			<li><a href="http://localhost:2382/WebSite2/Home.aspx" style="color: #FFFFFF; width: 213px;">Profile</a></li>                                 
   			    </ul>
</div>

<section class="contain">
    <div class="one1" style="margin-top:-5px;">


        <asp:Button ID="Button1" runat="server" Height="117px" Text="Write Post" CssClass="Initial" Width="188%" Font-Weight="Bolder" Font-Bold="True" Font-Size="XX-Large" OnClick="Unnamed1_Click" />
        <br />

        <asp:Button ID="Button5" runat="server" Height="117px" Text="Likes" Width="188%" CssClass="Initial" Font-Bold="True" Font-Size="XX-Large" OnClick="Button5_Click" />
        <br />

        <asp:Button ID="Button6" runat="server" Height="117px" Text="Account Settings" CssClass="Initial" Width="188%" Font-Bold="True" Font-Size="XX-Large" OnClick="Button6_Click" />
        <br />

        <asp:Button ID="Button7" runat="server" Height="117px" Text="Log out" Width="188%" CssClass="Initial" BackColor="#33CC33" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" OnClick="Button7_Click" />

    </div>
    <div class="two1" style="margin-top: 50px; background-color: #FFFFCC;">


          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
            <div>
             <table>
                <tr>
                <td>Tag: </td>
                <td><asp:TextBox ID="txtSubject" runat="server"/></td>
                </tr>
                <tr>
                <td valign="top" class="auto-style14">Comments:</td>
                <td class="auto-style14"><asp:TextBox ID="txtComment" runat="server" Rows="5" Columns="20" 
                        TextMode="MultiLine" Width="391px"/></td>
                </tr>
                <tr>
                <td></td>
                <td><asp:Button ID="btnSubmit" runat="server" Text="Post" onclick="btnSubmit_Click" /></td>
                </tr>
                </table>
                </div>
    <asp:Repeater ID="RepDetails" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>

<div class="container">
    <div class="row">
        <div class="col-sm-8">
            <div class="panel panel-white post panel-shadow">
                <div class="post-heading">
                    <div class="pull-left image">
                        <img src="http://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" alt="user profile image">
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <a href="#"><b><asp:Label ID="Label9" runat="server" Font-Bold="true" Text='<%#Eval("username") %>'/>
                                <asp:Label ID="lblUserId" runat="server" Text='<%# Eval("Id") %>' />
                                        </b></a>
                            made a post.
                        </div>
                        <h6 class="text-muted time">
                            <asp:Label ID="Label4" runat="server" Font-Bold="true" Text='<%#Eval("date") %>'/>
                        </h6>
                    </div>
                </div> 
                <div class="post-description"> 
                    <p><asp:Label ID="Label8" runat="server" Text='<%#Eval("com") %>'/></p>
                    <div class="stats">
                <asp:LinkButton ID="lnkDelete" Text="Delete" runat="server"
                    OnClick="DeleteCustomer" ForeColor="Red" />
                                        <asp:LinkButton ID="LinkButton1" Text="Like" runat="server"
                    OnClick="DeleteCustomer1" ForeColor="Red" /><asp:Label ID="Label10" runat="server" Text='<%#Eval("Likes") %>'/>
                        <a href="#" class="btn btn-default stat-item">
                            <i class="fa fa-thumbs-up icon"></i>2
                        </a>
                        <a href="#" class="btn btn-default stat-item">
                            <i class="fa fa-thumbs-down icon"></i>12
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

 
    </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [post]"></asp:SqlDataSource>
                </table>
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    <h3>
                      </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    <h3>
                      
                        <asp:Button ID="Button8" runat="server" Font-Bold="True" Height="92px" Text="Edit Profile" Width="202px" OnClick="Button8_Click1" />
                        <asp:Button ID="Button9" runat="server" Font-Bold="True" Height="92px" Text="Change Password" Width="202px" OnClick="Button9_Click" />
                      
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
                          <asp:View ID="View4" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
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
                                                <asp:Button ID="Button2" runat="server" BackColor="#009900" ForeColor="White" Height="50px" OnClick="insertion" OnClientClick="javascript:formvalidatation()" Text="Update" Width="931px" />
                                                 <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </ContentTemplate>
                                        </asp:UpdatePanel>

                                     </td>
                          </tr>
                      </table>
                  </td>
                </tr>
              </table>
            </asp:View>
                          <asp:View ID="View5" runat="server">
                      <p style="font-family: 'Times New Roman', Times, serif; font-weight: 600; font-style: oblique; font-size: 70px; font-variant: normal; text-transform: capitalize; text-align: center;"> Register</p>

      <div> 
        <table align=center cellspacing=10 style="width: 955px">
            <tr>
                <td>
                     <asp:Label ID="Label7" runat="server" Text="Current password" Width="349px" Font-Bold="True" ForeColor="Black" Height="110px" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                     <asp:TextBox ID="txt_cpassword" runat="server" TextMode="Password" Height="62px" Width="260px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_cpassword" ErrorMessage="Please enter Current password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                   <asp:Label ID="Label2" runat="server" Text="New password" Width="341px" Font-Bold="True" ForeColor="Black" Height="134px" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style12">
                   <asp:TextBox ID="txt_npassword" runat="server" TextMode="Password" Height="62px" Width="260px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="Regex1" runat="server" ControlToValidate="txt_npassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$" ErrorMessage="Password must contain: Minimum 8 and Maximum 12 characters atleast 1 Alphabet and 1 Number" />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_npassword" ErrorMessage="Please enter New password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                   <asp:Label ID="Label3" runat="server" Text="Confirm password" Width="351px" Font-Bold="True" ForeColor="Black" Height="136px" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txt_ccpassword" runat="server" TextMode="Password" Height="62px" Width="260px"></asp:TextBox>   
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_ccpassword" ErrorMessage="Please enter Confirm  password"></asp:RequiredFieldValidator>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_npassword" ControlToValidate="txt_ccpassword" ErrorMessage="Password Mismatch"></asp:CompareValidator>  
                </td>
            </tr>
            <tr>
                <td>
                   <asp:Button ID="btn_update" runat="server" Font-Bold="True" BackColor="#CCFF99" onclick="btn_update_Click" Text="Change Password" />
                </td>
                <td>
                    <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300" runat="server" Text=""></asp:Label><br />
                </td>
            </tr>  
        </table>
    </div>
        
            </asp:View>

          </asp:MultiView>

    </div>
    <div id="d1">

    </div>

          

</section>
<script>
    function search() {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("GET", "Default7.aspx?opr=search&nm1=" + document.getElementById("txtSubject").value, false);
        xmlhttp.send(null);

        document.getElementById("View1").innerHTML = xmlhttp.responseText;

    }

</script>


 </form>
    	


    	

</body>
		