<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>


<style>

body
{
    font-family:helvetica;

}

body p
{
 text-align:center;
 margin-top:30px;
 font-size:40px;


}

table
{
 border-radius:3px;
 box-shadow:0px 0px 10px 0px;
 padding:10px;
  height: 658px;
        width: 688px;
    }
table td
{
 font-size:20px;
 color:#E6E6E6;
}
table th
{
 visibility:hidden;
 display:none;
}
input[type="text"]
{
 width:200px;
 border:1px solid silver;
 border-radius:3px;
 font-size:17px;
 padding:5px;
}
@media only screen and (min-width:180px) and (max-width:679px)
{
table
{
 width:100%;
}
table .column1
{
 visibility:hidden;
 display:none;
}
table th
{
 visibility:visible;
 display:block;
 font-size:20px;
 color:#E6E6E6;
}
input[type="text"]
{
 width:80%;
 margin-left:10%;
}
}
    
Button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 20px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

Button:hover {
    opacity:1;
}
.signupbtn {
  float:20%;
  }
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {
        .cancelbtn, .signupbtn {
            width: 100%;
        }
    }




    .auto-style2 {
        height: 64px;
    }




    .auto-style3 {
        width: 538px;
    }




    .auto-style4 {
        width: 309px;
        height: 83px;
    }
    .auto-style5 {
        width: 538px;
        height: 83px;
    }

</style>

<html>
   <head >
       <script src='https://www.google.com/recaptcha/api.js'></script>
       <script src="Scripts/jquery-1.7.1.min.js"></script> 
       <h1>&nbsp;</h1>
    
</head>


<body style="background-image:url(b.png); background-position:center; background-repeat:no-repeat;">
    <form name="registration" runat="server">

<div>


<asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [reg]"></asp:SqlDataSource>
</div>

<p style="font-family: 'Times New Roman', Times, serif; font-weight: 600; font-style: oblique; font-size: 70px; font-variant: normal; text-transform: capitalize;">
    Register
   
        </p>
<table align=center cellspacing=10 style="width: 955px">

<tr>
  <td class="auto-style4" style="color: black;">Username:</td>
  <td class="auto-style5">

              <asp:TextBox ID="username" runat="server" Height="37px" name="username" placeholder="First Name Last Name" style="font-size: small" Width="216px"></asp:TextBox>
              
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" Font-Size="Medium" ForeColor="Black">Username Cannot Be Blank</asp:RequiredFieldValidator>
              <br />

</td>
 </tr>
   
 <tr>
      <td class="column1" style="width: 309px; color: black;">Email Id:</td>

     <td>

                 <asp:TextBox ID="email" runat="server" Height="37px" name="email" placeholder="Enter Email" style="font-size: small" OnTextChanged="onEmailCheck" AutoPostBack="true" Width="216px"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Is Not Valid" Font-Size="Medium" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                  <asp:Label ID="lblMessage" ForeColor="Black" Text="" runat="server" />
                                 <div id="checkusernameoremail" runat="server">                             
                            <asp:Label ID="lblStatus" runat="server"></asp:Label>  
                        </div>  

     </td>
    </tr>
 
 

<tr><td class="column1" style="width: 309px; color: black;">Password:</td>
	<td class="auto-style3"><asp:TextBox id="pass1"  placeholder="Enter Password" style="font-size: small"  name="passid" runat="server" Height="37px" Width="216px" TextMode="Password"></asp:TextBox>  
<span id="passwordlocation" style="color:red"></span>
            <asp:RangeValidator ID="rvclass" 
               runat="server" ControlToValidate="pass1" 
               ErrorMessage="Password Length Should (6 - 12)" MaximumValue="12" 
               MinimumValue="6" Type="Integer" ForeColor="Black"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pass1" ErrorMessage="Password Cannot Be Blank" Font-Size="Medium" ForeColor="Black"></asp:RequiredFieldValidator>
        
    </td></tr>
 
 <tr>
  <td class="column1" style="width: 309px; color: black;">Re-type Password:</td>
  <td class="auto-style3"><asp:TextBox id="pass2" placeholder="Re-type Password" style="font-size: small" name="passid2" runat="server" Height="37px" Width="216px" TextMode="Password"></asp:TextBox>
      <span id="password2location" style="color:red"></span>
      
      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass1" ControlToValidate="pass2" ErrorMessage="Password Didn't Match" ForeColor="Black"></asp:CompareValidator>
      
  </td>
 </tr>
 


 <tr>
  <td  class="column1" style="width: 309px; color: black;"><label for="country">Country:</label>
      <td class="auto-style3">
         <asp:DropDownList ID="select" runat="server" Height="37px" name="country" Width="216px">
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
             
                                     
         </asp:DropDownList></td>
</tr>
   

 <tr>
  <td class="column1" style="width: 309px; color: black;">Gender:</td>
  <td class="auto-style3">      
     <asp:RadioButton ID="Male" name="msex" value="Male" runat="server" Text="Male" ForeColor="Black"  />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:RadioButton ID="Female" name="fsex" value="Feale" runat="server" Text="Female" ForeColor="Black" OnCheckedChanged="Female_CheckedChanged"  />

  </td> 
 </tr>
<tr>
      
 <td class="column1" style="width: 309px; color: black;">Image:</td>
    
    <td>
        <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" />
    </td>

</tr>

    <td colspan="2" class="auto-style2" style="color: black"> 
      
        <asp:Button runat="server" OnClick="insertion" Text="Sign Up" OnClientClick ="javascript:formvalidatation()" Width="931px" BackColor="#009900" ForeColor="White" Height="50px" />

   </td> 
</tr>
     
</table>




        
             <p style="font-size: medium">By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.
                 </p>
    
      <p class="message" style="font-size: x-large">Already Registered? <a href="http://localhost:2382/WebSite2/">Login</a></p>
          
    <script src="Scripts/jquery-1.7.1.min.js"></script>  
    <script type="text/javascript">

        function UserOrEmailAvailability() { //This function call on text change.             
            $.ajax({
                type: "POST",
                url: "emailchecking.aspx/CheckEmail", // this for calling the web method function in cs code.  
                data: '{useroremail: "' + $("#<%=email.ClientID%>")[0].value + '" }',// user name or email value  
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response);
                }
            });
        }

        // function OnSuccess  
        function OnSuccess(response) {
            var msg = $("#<%=lblStatus.ClientID%>")[0];
            switch (response.d) {
                case "true":
                    msg.style.display = "block";
                    msg.style.color = "red";
                    msg.innerHTML = "User Name Or Email already exists.";
                    break;
                case "false":
                    msg.style.display = "block";
                    msg.style.color = "green";
                    msg.innerHTML = "User Name Or Email Available";
                    break;
            }
        }

    </script>  
                  

    </form>

</body>
</html>









