<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile1.aspx.cs" Inherits="Profile1" %>
<style>
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
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

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
</style>
<form id="form1" runat="server">
<div class="header" style="padding: 40px; color-blue; background-color: #33CC33;">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Brush Script MT" Font-Size="50px" ForeColor="Black"></asp:Label>
</div>
<div>
<div class="topnav" style="padding-top: 0px; margin-top: 0px; width: 100%;">
			  	<ul>
    			<li><a href="http://localhost:2382/WebSite2/Home.aspx">Home</a></li>
    			<li><a href="http://localhost:29984/Profile.aspx">Profile</a></li>
          	  	<li><a href="http://localhost:29984/Tags.aspx">Tags</a></li>
   			  	<li><a href="http://localhost:29984/Contact.aspx">Contact</a></li>
   			  	<li><a href="http://localhost:29984/Others.aspx">Others</a></li>
   			    </ul>
	
  <div class="search-container">
    
  </div>
       &nbsp;<a href="http://localhost:29984/" style="float: right; margin-top: 0px; background-color: #99FF99;font-weight: bold"">Log Out</a><input type="text" placeholder="Search Tags" name="search" style="float: right"></div>

</div>
    <div style="height: 573px; width: 100%">
        <div style="height: 769px; width: 467px">
            <div style="float: right; width: 0px;">
            </div>
            <div>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Brush Script MT" Font-Size="50px" ForeColor="Black" style="text-align: right"></asp:Label><br />
            </div>
            <div>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Brush Script MT" Font-Size="50px" ForeColor="Black"></asp:Label><br />
            </div>
            <div>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Brush Script MT" Font-Size="50px" ForeColor="Black"></asp:Label><br />
            </div>
            
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Brush Script MT" Font-Size="50px" ForeColor="Black"></asp:Label><br />
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Brush Script MT" Font-Size="50px" ForeColor="Black"></asp:Label><br />
        </div>
    </div>
</form>

