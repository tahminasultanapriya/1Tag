<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginhome.aspx.cs" Inherits="loginhome" %>




<style>
    .divLeft {
    width:40%;
    display:block;
    float: left;
        height: 851px;
    }
.divRight {
    width:40%;
    display:block;
    float: right;
}
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
        height: 39px;
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
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 63px;
    }
</style>
<body width="960px;"  style="background-image:url(team1.jpg); HEIGHT:100%; background-position:top; background-repeat:no-repeat;background-attachment:fixed; margin-left:10%;margin-right:10%;">
<form id="form1" runat="server">
<div>
<div class="topnav" style="padding-top: 0px; margin-top: 0px; width: 100%; background-color:#33CC33;">
			  	<ul>
    			<li><a href="http://localhost:2382/WebSite2/">Home</a></li>
    			<li><a href="http://localhost:2382/WebSite2/Profile1.aspx">Profile</a></li>
          	  	<li><a href="http://localhost:2382/WebSite2/Tags.aspx">Tags</a></li>
   			  	<li><a href="http://localhost:29984/Contact.aspx">Contact</a></li>
   			  	<li><a href="http://localhost:29984/Others.aspx">Others</a></li>
   			    </ul>
	
  <div class="search-container">
    
  </div>
       &nbsp;</div>

    <div>
    </div>
<div class="divLeft" style="float: left; height: 300px; margin-left:10px; ">
  <div >
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Brush Script MT" Font-Size="50px" ForeColor="Black"></asp:Label>
    </div>
<div style="margin-top: 1px; padding-top: 1px; text-align: center; padding-left: 34%; padding-bottom: 20px;">
        
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"

    BackColor="#CC3300" ForeColor="Black" ShowHeader="False" Height="0px" Width="20px" >

    <Columns>

   <asp:TemplateField>

    <ItemTemplate>

    <img alt ="" src ='images/<%#Eval("image") %>' height="103px" width="103px"/>

    </ItemTemplate>

    </asp:TemplateField>

    </Columns>

    </asp:GridView>


</div>
            <div>

                <asp:Button ID="Button1" runat="server" Height="100px" Text="Write Post" Width="100%" BackColor="#33CC33" Font-Bold="True" Font-Size="X-Large" OnClick="Button1_Click" />
                <br />
                <asp:Button ID="Button2" runat="server" Height="100px" Text="Likes" Width="100%"   BackColor="#33CC33" Font-Bold="True" Font-Size="X-Large"/>
                <br />
                <asp:Button ID="Button3" runat="server" Height="100px" Text="Account Settings" Width="100%"  BackColor="#33CC33" Font-Bold="True" Font-Size="X-Large" />
                <asp:Button ID="Button4" runat="server" Height="117px" Text="Log Out" Width="100%" BackColor="#33CC33" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" OnClick="Button4_Click"/>
            </div>

</div>

</div>
    <div class="divRight" style="float: right; height: 930px; margin-right:35px;">
    
        <div style="margin-top:200px;margin-bottom: 60px; height: 300px; width: 707px;">
            <div>
                <p style="text-align: justify; font-family: &quot;Courier New&quot;, Courier, monospace; font-size: 25px"> Show Your Posts </p></div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [user]"></asp:SqlDataSource>
     <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
         <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
         <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
         <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
         <ItemTemplate>
             <table border="1" class="auto-style1" style="border-color: #008000; background-color:#33CC33;">
                 <tr>
                     <td class="auto-style2">Tag name :<asp:Label ID="Label2" runat="server" Text='<%# Eval("Subject") %>'></asp:Label>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posted Date :<asp:Label ID="Label3" runat="server" Text='<%# Eval("PostedDate") %>'></asp:Label>
                     </td>
                 </tr>
             </table>
             <br />
             <br />
             <br />
             Comment:<asp:Label ID="Label4" runat="server" Text='<%# Eval("Comment") %>'></asp:Label>
             <br />
             <br />
         </ItemTemplate>
         <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
     </asp:DataList>
    </div>


</div >


</form>
    </body>









