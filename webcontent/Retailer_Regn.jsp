<DOCTYPE! html>

<html>

<head>
<script> 
function Validation()                                    
{ 
    	
      
    var name = document.myform.name; 
    var contact1 = document.myform.contact1; 	
    var contact2 = document.myform.contact2;    
    var addr1 = document.myform.addr1;  
    var addr2 = document.myform.addr2; 
	var zip = document.myform.zip;
	var city = document.myform.city;  
    var state = document.myform.state; 
	var settop = document.myform.settop; 
	var creditlimit = document.myform.creditlimit;  
    var comm = document.myform.comm; 
	var scharge = document.myform.scharge; 
	var inventory = document.myform.inventory; 
	var cdate = document.myform.cdate; 
	
	
	
    if (name.value == "")                                  
    { 
        window.alert("Please enter your name."); 
        name.focus(); 
        return false; 
    } 
   
    if (contact1.value == "")                               
    { 
        window.alert("Please enter your contact1."); 
        contact1.focus(); 
        return false; 
    }  
    
    if (contact2.value == "")                                   
    { 
        window.alert("Please enter your contact2."); 
        contact2.focus(); 
        return false; 
    } 
   
	   if (addr1.value == "")                                  
    { 
        window.alert("Please enter your addr1"); 
        addr1.focus(); 
        return false; 
    } 
   
    if (addr2.value == "")                               
    { 
        window.alert("Please enter your addr2."); 
        addr2.focus(); 
        return false; 
    }  
	
	 if (zip.value == "")                               
    { 
        window.alert("Please enter a valid zip."); 
        zip.focus(); 
        return false; 
    }  
	   if (city.value == "")                                  
    { 
        window.alert("Please enter your city"); 
        city.focus(); 
        return false; 
    } 
   
    if (state.value == "")                               
    { 
        window.alert("Please enter your state."); 
        state.focus(); 
        return false; 
    }  
	
	 if (settop.value == "")                               
    { 
        window.alert("Please enter a valid date."); 
        settop.focus(); 
        return false; 
    }  
	
	
	 if (creditlimit.value == "")                               
    { 
        window.alert("Please enter a valid number."); 
        creditlimit.focus(); 
        return false; 
    }  
	   if (comm.value == "")                                  
    { 
        window.alert("Please enter the maximum cost"); 
        comm.focus(); 
        return false; 
    } 
   
    if (scharge.value == "")                               
    { 
        window.alert("Please enter service charges."); 
        scharge.focus(); 
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
<h1>Hello, You are ready to register a new retailer</h1>
</font>
<br><br>
<center>

<font color ="white">
<h1>Retailer Creation</h1>
</font>
<div>

<form name="myform" method="post" action="MainServlet" onsubmit="return Validation()">

<table style="color:white;" cellpadding=10>
<tr><td><b>Name</b></td> <td><input type = "text" name ="name"></td></tr>
<tr><td><b>Contact 1</b></td> <td><input type = "text" name ="contact1"></td></tr>
<tr><td><b>Contact 2</b></td> <td><input type = "text" name ="contact2"></td></tr>
<tr><td><b>Address Line 1</b></td> <td><input type = "text" name ="addr1"></td></tr>
<tr><td><b>Address Line 2</b></td> <td><input type = "text" name ="addr2"></td></tr>
<tr><td><b>Zip Code</b></td> <td><input type ="text" name="zip"></td></tr>
<tr><td><b>City</b></td> <td><input type = "text" name ="city"></td></tr>
<tr><td><b>State/Province</b></td> <td><input type = "text" name ="state"></td></tr>
<tr><td><b>Set Top Box Limit</b></td> <td><input type="text" name ="settop"> </td></tr>
<tr><td><b>Credit Limit</b></td> <td><input type = "text" name ="creditlimit"></td></tr>
<tr><td><b>Commission Percentage</b></td> <td><input type = "number" name ="comm"></td></tr>
<tr><td><b>Service charges</b></td> <td><input type="text" name ="scharge"></td></tr>
<tr><td><b>Inventory List</b></td> <td><input type = "text" name ="inventory"></td></tr>
<tr><td><b>Creation Date</b></td> <td><input type="date" name ="cdate"></td></tr>
</table>
<button type="submit" >SUBMIT</button>
<input type="reset" value="RESET" ><br><br>
</form>
</div>
</center>

<br>
<br>
<br>
<br>
<br>
<br>

</body>

<footer style="color:#FFFFFF;padding:40px;">
  <p>Copyright by Infinity DTH Services</p>
  <p>Contact information: <a href="mailto:someone@example.com">customercare@infinitydth.com</a>.</p>
</footer>

</html>