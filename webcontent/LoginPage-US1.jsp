<DOCTYPE! html>

<html>

<body background="infinity-logo.jpeg"  >

<style>

body {

   background-color: #0000A0;
   background-repeat: no-repeat;
   background-size: 100% 100%;

}

background {

   opacity:0.8;
}

form {

   color : "white";
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

<center>



<div>

<font color ="white">
<h1>Infinity DTH Services</h1>
</font>

<marquee>
<font color ="white"><h4>PROMOTION: First Month FREE </h4>
</font></marquee>

<br><br>

<form style="color: #FFFFFF ;" name="myform" action="MainServlet" method="post">
Username <input type ="text" name ="uname" placeholder="Enter Username" required><br><br>
Password  <input type ="password" name="pwd" placeholder="Enter Password" required><br><br><br><br>
<input type="hidden" name="register" value="login">
<button input type="submit"> LOGIN</button>

<br><br>
<font color ="white">
<a href="Customer_Regn.jsp">
<font color ="white">New Customer? Please Register</font></a>
</font>
</form>
</div>
</center>

</body>

<footer style="color:#FFFFFF;padding:40px;">
  <p>Copyright by Infinity DTH Services</p>
  <p>Contact information: <a href="mailto:someone@example.com">customercare@infinitydth.com</a>.</p>
</footer>

</html>