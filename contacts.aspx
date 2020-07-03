<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contacts.aspx.cs" Inherits="contacts" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
    <style type="text/css">

        .Background

        {

            background-color: Black;

            filter: alpha(opacity=90);

            opacity: 0.8;

        }

        .Popup

        {

            background-color: #FFFFFF;

            border-width: 3px;

            border-style: solid;

            border-color: black;

            padding-top: 10px;

            padding-left: 10px;

            width: 460px;

            height: 460px;

        }

        .lbl

        {

            font-size:16px;

            font-style:italic;

            font-weight:bold;

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
    width: 449.5px;
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
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
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
                      <li><a href="http://localhost:2382/WebSite2/byusersearch.aspx">Tags</a></li>
                <li><a href="http://localhost:2382/WebSite2/contacts.aspx" style="background-color:#ff6a00">Contact</a></li>
          	  	
   			  	
   			    </ul>

</div>
      <asp:ScriptManager ID="ScriptManager1" runat="server">

</asp:ScriptManager>
<div style="margin-top:100px; float:left; margin-left:80px;">
         <asp:Button ID="Button1" runat="server" Text="Call" style="font-size:24px; height:134px; width:280px;" /> 	
            <asp:Button ID="Button3" runat="server" Text="Whats App" style="font-size:24px; height:134px; width:280px;" /> 	
           <asp:Button ID="Button4" runat="server" Text="Email" style="font-size:24px; height:134px; width:280px;" />	
           <asp:Button ID="Button5" runat="server" Text="Facebook" style="font-size:24px; height:134px; width:280px;" />	

</div>
 <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"

    CancelControlID="Button2" BackgroundCssClass="Background">

</cc1:ModalPopupExtender>

<asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">

    <table style="margin-top:20px;">
        <tr>
          <td>
            Name: 
        </td>
        <td>
            Tahmina Sultana Priya
        </td>
            </tr>
        <tr>
          <td>
            Phone No: 
        </td>
        <td>
            01679357283
        </td>
            </tr>
        <tr>
                      <td>
           Mobile No: 
        </td>
        <td>
            01679357282
        </td>
            </tr>
        <tr>
         <td>
           Email: 
        </td>
        <td>
            tahminasultanapriya14@gmail.com
        </td>
        </tr>
                <tr>
          <td>
            Name: 
        </td>
        <td>
            Aparajita Dola
        </td>
            </tr>
        <tr>
          <td>
            Phone No: 
        </td>
        <td>
            01699357283
        </td>
            </tr>
        <tr>
                      <td>
           Mobile No: 
        </td>
        <td>
            01699357282
        </td>
            </tr>
        <tr>
         <td>
           Email: 
        </td>
        <td>
            aparajitadola@gmail.com
        </td>
        </tr>



     </table>

  

    <asp:Button ID="Button2" runat="server" Text="Close" />

</asp:Panel>
      <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel2" TargetControlID="Button3"

    CancelControlID="Button6" BackgroundCssClass="Background">

</cc1:ModalPopupExtender>

<asp:Panel ID="Panel2" runat="server" CssClass="Popup" align="center" style = "display:none">
    <table>
                <tr>
          <td>
            Name: 
        </td>
        <td>
            Tahmina Sultana Priya
        </td>
            </tr>
        <tr>
         <td>
           Whats App Number: 
        </td>
        <td>
            01679357283
        </td>
        </tr>
                <tr>
         <td>
           Whats App Name: 
        </td>
        <td>
            Tahmina Sultana Priya
        </td>
        </tr>
                <tr>
          <td>
            Name: 
        </td>
        <td>
            Aparajita Dola
        </td>
            </tr>
        <tr>
         <td>
           Whats App Number: 
        </td>
        <td>
            01679357282
        </td>
        </tr>
                <tr>
         <td>
           Whats App Name: 
        </td>
        <td>
            Aparajita Dola
        </td>
        </tr>
    </table>
 
    <asp:Button ID="Button6" runat="server" Text="Close" />

</asp:Panel>
          <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="Panel3" TargetControlID="Button4"

    CancelControlID="Button7" BackgroundCssClass="Background">

</cc1:ModalPopupExtender>

<asp:Panel ID="Panel3" runat="server" CssClass="Popup" align="center" style = "display:none">
<table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td style="width: 80px">
            To:
        </td>
        <td>
            <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            Subject:
        </td>
        <td>
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td valign = "top">
            Body:
        </td>
        <td>
            <asp:TextBox ID="txtBody" runat="server" TextMode = "MultiLine" Height = "150" Width = "200"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            File Attachment:
        </td>
        <td>
            <asp:FileUpload ID="fuAttachment" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            Gmail Email:
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            Gmail Password:
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode = "Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Button ID="Button9" Text="Send" OnClick="SendEmail" runat="server" />
        </td>
    </tr>
</table>

    <br />

    <asp:Button ID="Button7" runat="server" Text="Close" />

</asp:Panel>
            <cc1:ModalPopupExtender ID="ModalPopupExtender3" runat="server" PopupControlID="Panel4" TargetControlID="Button5"

    CancelControlID="Button8" BackgroundCssClass="Background">

</cc1:ModalPopupExtender>

<asp:Panel ID="Panel4" runat="server" CssClass="Popup" align="center" style = "display:none">

 <table>
                <tr>
          <td>
            Name: 
        </td>
        <td>
            Tahmina Sultana Priya
        </td>
            </tr>
        <tr>
         <td>
           Facebook Id: 
        </td>
        <td>
            badhon.isla..1232@facebook.com
        </td>
        </tr>
                <tr>
         <td>
           Facebook User Name: 
        </td>
        <td>
            Tahmina Sultana Priya
        </td>
        </tr>
                <tr>
          <td>
            Name: 
        </td>
        <td>
            Aparajita Dola
        </td>
            </tr>
        <tr>
         <td>
          Facebook Id: 
        </td>
        <td>
           aparajita@facebook.com
        </td>
        </tr>
                <tr>
         <td>
           Facebook User Name: 
        </td>
        <td>
            Aparajita Dola
        </td>
        </tr>
    </table>

    <asp:Button ID="Button8" runat="server" Text="Close" />

</asp:Panel>



    </form>
</body>
</html>
