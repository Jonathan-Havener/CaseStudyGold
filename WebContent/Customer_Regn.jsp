<DOCTYPE! html>

<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body background="C:\Users\user\Desktop\infinity-logo.jpg"  >

<style>

body {

   background-color: #0000A0;
   background-repeat: no-repeat;
   background-size: 100% 100%;

}

form  {
   
   color: white;
   font-size: 20px;
   

}


div {
  
   margin-top: 50px;
   margin-bottom: 50px;
   margin-right: 50px;
   margin-left: 50px;
}

footer{
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   color: white;
  }

</style>

<font color ="white">
<h1>Hello New Customer, You are ready to register</h1>
</font>
<br><br>
<center>

<font color ="white">
<h1>Customer Creation</h1>
</font>
<div>

<form name="myform" action="MainServlet" method="post"  >

<b>First Name</b> <input type = "text" name ="fname"><br><br>
<b>Last Name</b> <input type = "text" name ="lname"><br><br>
<b>E-mail ID</b> <input type = "text" name ="email"><br><br>
<b>Phone Number</b> <input type ="text" name="phone"><br><br>
<b>Address Line 1</b> <input type = "text" name ="addr1"><br><br>
<b>Address Line 2</b> <input type = "text" name ="addr2"><br><br>
<b>Landmark</b> <input type = "text" name ="landmark"><br><br>
<b>Zip Code</b> <input type ="number" name="zip"><br><br>
<b>City</b> <input type = "text" name ="city"><br><br>
<b>State/Province</b> <input type = "text" name ="state"><br><br>
<b>Creation Date</b> <input type="date" name ="cdate"> <br><br>
<b>Operator Name</b> <input type = "text" name ="opname"><br><br>
<b>Retailer Name</b> <input type = "text" name ="rename"><br><br>
<input type="hidden" name="register" value="customer_registration">

<button type="submit" >SUBMIT</button>
<input type="reset" value="RESET" ><br><br>
</div>
</center>

</body>

<footer style="color:#FFFFFF;padding:40px;">
  <p>Copyright by Infinity DTH Services</p>
  <p>Contact information: <a href="mailto:someone@example.com">customercare@infinitydth.com</a>.</p>
</footer>

</html>