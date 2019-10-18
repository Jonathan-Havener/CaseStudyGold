<DOCTYPE! html>

<html>

<head>
<script> 
function Validation()                                    
{ 
    	
      
    var fname = document.myform.fname; 
    var lname = document.myform.lname; 	
    var email = document.myform.email;    
    var phone = document.myform.phone;  
    var addr1 = document.myform.addr1; 
	var addr2 = document.myform.addr2;
	var landmark = document.myform.landmark; 
    var zip = document.myform.zip; 	
    var city = document.myform.city;  
    var state = document.myform.state; 
	var cdate = document.myform.cdate;
	var opname = document.myform.opname; 
	var rename = document.myform.rename; 
	
	
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
   
    if (addr1.value == "")                               
    { 
        window.alert("Please enter a valid address 1."); 
        addr1.focus(); 
        return false; 
    }  
	
	 if (addr2.value == "")                               
    { 
        window.alert("Please enter a valid address 2."); 
        addr2.focus(); 
        return false; 
    }  
	
	   if (landmark.value == "")                                  
    { 
        window.alert("Please enter your landmark"); 
        landmark.focus(); 
        return false; 
    } 
   
    if (zip.value == "")                               
    { 
        window.alert("Please enter a valid zip code."); 
        zip.focus(); 
        return false; 
    }  
	
	 if (city.value == "")                               
    { 
        window.alert("Please enter a valid city."); 
        city.focus(); 
        return false; 
    }  
	
	   if (state.value == "")                                  
    { 
        window.alert("Please enter your state"); 
        state.focus(); 
        return false; 
    } 
   
    if (cdate.value == "")                               
    { 
        window.alert("Please enter a creation date."); 
        cdate.focus(); 
        return false; 
    }  
	
	 if (opname.value == "")                               
    { 
        window.alert("Please enter a operator name."); 
        opname.focus(); 
        return false; 
    }  
	
	 if (rename.value == "")                               
    { 
        window.alert("Please enter a retailer name."); 
        rename.focus(); 
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
   
   color: white;
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
<h1>Hello New Customer, You are ready to register</h1>
</font>
<br><br>
<form align="right" name="form1" method="post" action="LoginPage-US1.jsp"style ="float : right">
<label class="logoutLblPos">
<input name="submit2" type="submit" id="submit2" value="log out">
</label>
</form>
<center>

<font color ="white">
<h1>Customer Creation</h1>
</font>
<div>

<form name="myform" action="MainServlet" method="post" onsubmit="return Validation()">

<table style="color:white;" cellpadding=10>
<tr><td><b>First Name</b></td> <td><input type = "text" name ="fname"></td></tr>
<tr><td><b>Last Name</b></td> <td><input type = "text" name ="lname"></td></tr>
<tr><td><b>E-mail ID</b></td> <td><input type = "text" name ="email"></td></tr>
<tr><td><b>Phone Number</b></td> <td><input type ="text" name="phone"></td></tr>
<tr><td><b>Address Line 1</b></td> <td><input type = "text" name ="addr1"></td></tr>
<tr><td><b>Address Line 2</b></td> <td><input type = "text" name ="addr2"></td></tr>
<tr><td><b>Landmark</b></td> <td><input type = "text" name ="landmark"></td></tr>
<tr><td><b>Zip Code</b></td> <td><input type ="number" name="zip"></td></tr>
<tr><td><b>City</b></td> <td><input type = "text" name ="city"></td></tr>
<tr><td><b>State/Province</b></td> <td><input type = "text" name ="state"></td></tr>
<tr><td><b>Creation Date</b></td> <td><input type="date" name ="cdate"></td></tr>
<tr><td><b>Operator ID</b></td> <td><input type = "number" name ="opname"></td></tr>
<tr><td><b>Retailer ID</b></td> <td><input type = "number" name ="rename"></td></tr>

</table>
<input type="hidden" name="register" value="customer_registration">

<button type="submit" >SUBMIT</button>
<input type="reset" value="RESET" ><br><br>
<p id="demo"></p>
</form>
</div>
</center>

</body>

<footer style="color:#FFFFFF;padding:40px;">
  <p>Copyright by Infinity DTH Services</p>
  <p>Contact information: <a href="mailto:someone@example.com">customercare@infinitydth.com</a>.</p>
</footer>

</html>