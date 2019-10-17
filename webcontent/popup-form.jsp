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
  <form action="MainServlet" method="post" class="form-container">
    <h3>Set new password</h3>
    <br><br>
<table cellpadding=10>
   <tr><td><label for="userId"><b>User Name</b></label></td>
    <td><input type="text" placeholder="Enter User name" name="uname" required></td></tr>
     <tr><td><label for="pwd"><b>Password</b></label></td>
   <td> <input type="password" placeholder="Enter Password" name="pwd" required ></td></tr>

   <tr><td> <label for="psw"><b>Re-Enter Password</b></label></td>
   <td> <input type="password" placeholder="Re-Enter Password" name="psw" required ></td></tr>
    </table>
    <input type="hidden" name="register" value="popup">

    <button type="submit" class="btn">Login</button>
    
  </form>
</div>
</body>
</html>