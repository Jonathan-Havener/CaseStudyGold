<DOCTYPE! html>

<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body background="infinity-logo.jpeg"  >

<style>

body {

   background-color: #0000A0;
   background-repeat: no-repeat;
   background-size: 100% 100%;

}


div {
  
   margin-top: 50px;
   margin-bottom: 50px;
   margin-right: 50px;
   margin-left: 50px;
}

footer{
   position: relative;
   left: 0;
   bottom: 0;
   width: 100%;
   color: white;
  }

</style>

<font color ="white">
<h1>Welcome, Admin</h1>
</font>
<form align="right" name="form1" method="post" action="LoginPage-US1.jsp"style ="float : right">
<label class="logoutLblPos">
<input name="submit2" type="submit" id="submit2" value="log out">
</label>
</form>
<center>

<div>

<br><br>

<button style="font-size:30px;width:40%" class ="btn btn-primary" type="button" 
onClick="window.location.href = 'Customer_CRUD.jsp';">
<i class ="fa fa-group"></i>
<br>
Customer Management
</button>
<br><br>
<br><br>
<button style="font-size:30px;width:40%" class ="btn btn-primary" type="button"
onClick="window.location.href = 'Retailer_Page.jsp';">
<i class ="fa fa-handshake-o"></i>
<br>
Retailer Management
</button>
<br><br>
<br><br>
<button style="font-size:30px;width:40%" class ="btn btn-primary" type="button"
onClick="window.location.href = 'Operator_CRUD.jsp';">
<i class ="fa fa-user-circle"></i>
<br>
Operator Management
</button>

</form>
</div>
</center>

</body>

<footer style="color:#FFFFFF;padding:40px;">
  <p>Copyright by Infinity DTH Services</p>
  <p>Contact information: <a href="mailto:someone@example.com">customercare@infinitydth.com</a>.</p>
</footer>

</html>