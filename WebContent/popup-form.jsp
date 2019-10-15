<!DOCTYPE html>
<body>
<div class="form-popup" id="myForm">
  <form action="MainServlet" method="post" class="form-container">
    <h3>Set new password</h3>

   <label for="userId"><b>User Name</b></label>
    <input type="text" placeholder="Enter User name" name="uname" required>
    <label for="pwd"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pwd" required >

    <label for="psw"><b>Re-Enter Password</b></label>
    <input type="password" placeholder="Re-Enter Password" name="psw" required >
    
    <input type="hidden" name="register" value="popup">

    <button type="submit" class="btn">Login</button>
    
  </form>
</div>
</body>
