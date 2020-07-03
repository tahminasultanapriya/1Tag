<%@ Page Language="C#" AutoEventWireup="true" CodeFile="byusersearch.aspx.cs" Inherits="byusersearch" %>
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
    .nav {
        background-color:black;
    }

.nav1 ul
{
	margin: 0;
	padding: 0;
	list-style: none;
    font-size:18px;
    background-color:black;

}
.nav1 ul li
{
	float: left;
    width: 427px;
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
        <div class="header2" style="font-size: 18px; height: 122px; width: 100%; text-align: left; color: #008000; margin-top:0px; background-color: #33CC33;">
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
    <div class="nav1" style=" list-style-position: inside; height: 50px; width: 100%;background-color:black;">


			  	<ul>
                      <li><a href="http://localhost:2382/WebSite2/">Home</a></li>
                      <li><a href="http://localhost:2382/WebSite2/byusersearch.aspx" style="background-color:#ff6a00; width: 388px;">Tags</a></li>
                <li><a href="http://localhost:2382/WebSite2/contacts.aspx">Contact</a></li>
          	  	
   			  
   			    </ul>

</div>
      <div style="float:left; margin-top:20px;">

          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="331px">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
         <asp:TemplateField HeaderText="Tags">  
             <ItemTemplate>
                   
                 <a href=""><asp:Label ID="tag" runat="server" Text='<%#Bind("tag") %>'></asp:Label> </a>
             </ItemTemplate>  
         </asp:TemplateField>  
              </Columns>
              <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
              <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
              <SortedAscendingCellStyle BackColor="#FDF5AC" />
              <SortedAscendingHeaderStyle BackColor="#4D0000" />
              <SortedDescendingCellStyle BackColor="#FCF6C0" />
              <SortedDescendingHeaderStyle BackColor="#820000" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [tag] FROM [post]"></asp:SqlDataSource>

      </div>
      <div style="float:right;margin-top:20px;">
        <input type="text" id="t1" onkeyup="search1();"/>
      </div>
      <div id="d1" style="margin-top:20px;"></div>
       <table>
<tr>
<td>Name: </td>
<td><asp:TextBox ID="txtName" runat="server"/></td>
</tr>
<tr>
<td valign="top">Comments:</td>
<td><asp:TextBox ID="txtComment" runat="server" Rows="5" Columns="20" 
        TextMode="MultiLine" Width="391px"/></td>
</tr>
<tr>
<td></td>
<td><asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" /></td>
</tr>
</table>
</div>
<div>
<asp:Repeater ID="RepDetails" runat="server">
<HeaderTemplate>
<table style=" border:1px solid #df5015; width:500px" cellpadding="0">
<tr style="background-color:#df5015; color:White">
<td colspan="2">
<b>Please Write Your Feedback</b> 
</td>
</tr>
</HeaderTemplate>
<ItemTemplate>
<tr style="background-color:#EBEFF0">
<td>
<table style="background-color:#EBEFF0;border-top:1px dotted #df5015; width:500px" >
<tr>
<td>
</td>
</tr> 
</table> 
</td> 
</tr>
<tr>
<td>
<asp:Label ID="lblComment" runat="server" Text='<%#Eval("Comment") %>'/>
</td>
</tr>
<tr>
<td>
<table style="background-color:#EBEFF0;border-top:1px dotted #df5015;border-bottom:1px solid #df5015; width:500px" >
<tr>
<td>Post By: <asp:Label ID="lblUser" runat="server" Font-Bold="true" Text='<%#Eval("Name") %>'/></td>
<td>Created Date:<asp:Label ID="lblDate" runat="server" Font-Bold="true" Text='<%#Eval("Date") %>'/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2">&nbsp;</td>
</tr>
</ItemTemplate>
<FooterTemplate>
</table>
</FooterTemplate>
</asp:Repeater>
      <script type="text/javascript">

          function search1() {


              var xmlhttp = new XMLHttpRequest();
              xmlhttp.open("GET", "ajaxsearch.aspx?opr=search&nm1=" + document.getElementById("t1").value, false);
              xmlhttp.send(null);

              document.getElementById("d1").innerHTML = xmlhttp.responseText;

          }

      </script>
  

      </form>
    </body>
    </html>
