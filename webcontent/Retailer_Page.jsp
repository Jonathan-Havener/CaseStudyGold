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

<form align="right" name="form1" method="post" action="LoginPage-US1.jsp"style ="float : right">
<label class="logoutLblPos">
<input name="submit2" type="submit" id="submit2" value="log out">
</label>
</form>
<center>

<br><br>

<font color ="white">
<h1>RETAILER CRUD</h1>
</font>

<div>

<br><br>

<button style="font-size:30px;width:40%" class ="btn btn-primary" type="button"
onClick="window.location.href = 'Retailer_Regn.jsp';">
<i class ="fa fa-group"></i>
<br>
Create
</button>
<br><br>
<br><br>
<form action="MainServlet" method="post">
<input type="hidden" name="register" value="retailerupdate">
<button style="font-size:30px;width:40%" class ="btn btn-primary" type="submit" name="update_btn">
<i class ="fa fa-repeat"></i>
<br>
Update
</button>
</form>
<br><br>
<br><br>
<form action="MainServlet" method="post">
<input type="hidden" name="register" value="retailerview">
<button style="font-size:30px;width:40%" class ="btn btn-primary" type="submit" name="view_btn">
<i class ="fa fa-handshake-o"></i>
<br>
View
</button>
</form>
<br><br>
<br><br>
<form action="MainServlet" method="post">
<input type="hidden" name="register" value="retailerdelete">
<button style="font-size:30px;width:40%" class ="btn btn-primary" type="submit" name="delete_btn" 
onClick="window.location.href = 'Retailer_View.jsp';">
<i class ="fa fa-user-circle"></i>
<br>
Delete
</button>
</form>
</div>
</center>
</center>

</body>

<footer style="color:#FFFFFF;padding:40px;">
  <p>Copyright by Infinity DTH Services</p>
  <p>Contact information: <a href="mailto:someone@example.com">customercare@infinitydth.com</a>.</p>
</footer>

</html>