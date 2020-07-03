<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nonreguser.aspx.cs" Inherits="Comment_using_repeater.nonreguser" %>

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

</head>
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
 
<div class="nav1" style=" list-style-position: inside; height: 50px; width: 100%; background-color: red; margin-top:-35px;">
			  	<ul style="width: 100%; background-color: #000000; color: #FFFFFF; height: 62px;">
    			<li><a href="http://localhost:2382/WebSite2/Home.aspx" style="color: #FFFFFF;">Home</a></li>
                 <li><a href="http://localhost:2382/WebSite2/Home.aspx" style="color: #FFFFFF;">Post Here</a></li>
                 </ul>
</div>


</section>
</form>
</body>

