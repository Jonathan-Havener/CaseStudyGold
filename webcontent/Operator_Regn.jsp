<html>

<head>
<script> 
function Validation()                                    
{ 
    	
      
    var fname = document.myform.fname; 
    var lname =  document.myform.lname; 	
    var email = document.myform.email;    
    var phone = document.myform.phone;  
    var maxno = document.myform.maxno; 
	var cdate = document.myform.cdate;
	 
	
	
    if (fname.value == "")                                  
    { 
        window.alert("Please enter your first name."); 
        fname.focus(); 
        return false; 
    } 
   
    if (lname.value == "")                               
    { 
        window.alert("Please enter your last name."); 
        lname.focus(); 
        return false; 
    }  
    
    if (email.value == "")                                   
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
   
    if (email.value.indexOf("@", 0) < 0)                 
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
   
    if (email.value.indexOf(".", 0) < 0)                 
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
	
	   if (phone.value == "")                                  
    { 
        window.alert("Please enter your Phone number"); 
        phone.focus(); 
        return false; 
    } 
   
    if (maxno.value == "")                               
    { 
        window.alert("Please enter a valid number."); 
        maxno.focus(); 
        return false; 
    }  
	
	 if (cdate.value == "")                               
    { 
        window.alert("Please enter a valid date."); 
        cdate.focus(); 
        return false; 
    }  
	
	
	
    
	return true
	}
</script>
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

form  {
  
   font-size: 20px;
   
}


div {
  
   margin-top: 50px;
   margin-bottom: 50px;
   margin-right: 50px;
   margin-left: 50px;
}

</style>

<font color ="white">
<h1>Hello Admin, You are ready to create an operator</h1>
</font>
<br><br>
<form align="right" name="form1" method="post" action="LoginPage-US1.jsp"style ="float : right">
<label class="logoutLblPos">
<input name="submit2" type="submit" id="submit2" value="log out">
</label>
</form>
<center>

<font color ="white">
<h1>Operator Creation</h1>
</font>
<div>
<form name="myform" action="MainServlet" method="post" onsubmit="return Validation()">


<table style="color:white" cellpadding=10>

<tr><td><b>First Name</b></td> <td><input type = "text" name ="fname"></td></tr>
<tr><td><b>Last Name</b></td> <td><input type = "text" name ="lname"></td></tr>
<tr><td><b>E-mail ID</b></td> <td><input type = "text" name ="email"></td></tr>
<tr><td><b>Phone Number</b></td> <td><input type ="number" name="phone"></td></tr>
<tr><td><b>Shift Time Start</b></td> <td><select>
  <option value= " "> </option>
  <option value="8">8 am</option>
  <option value="9">9 am</option>
  <option value="10">10 am</option>
</select></td></tr>
<tr><td><b>Shift Time End</b></td> <td><input type = "text" name ="endtime"></td></tr>
<tr><td><b>Max number of Customers</b></td> <td><input type="number" name ="maxno"></td></tr>
<tr><td><b>Creation Date</b></td> <td><input type="date" name ="cdate"></td></tr>

</table>

<input type="hidden" name="register" value="operatorregn">

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