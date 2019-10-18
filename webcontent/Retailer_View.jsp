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
  
 table {
  font-size: 18px;
  border-collapse: collapse;
  width: 30%;
  height: 40%;
}
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {
  background-color: #dddddd;
  color:black;
}
tr:nth-child(odd) {
    color:white;
}
</style>

<font color ="white">
<h1>VIEW</h1>
</font>

<center>

<body>
<%@ page import= "java.util.*"%>
<%@ page import= "Project.Retailer"%>
<%@ page import= "Project.Logic"%>

<font color="white"><h1>Information</h1></font>
<%
	List<Retailer> retailers = Logic.findRetailers();
	%>
	<table style="color: white;">
	<tr>
	
	<th><h4> UNIQUE ID</h4></th>
	<th><h4>NAME</h4></th>
	<th><h4>ADDRESS 1</h4></th>
	<th><h4>ADDRESS 2</h4></th>
	<th><h4>CITY</h4></th>
	<th><h4>STATE</h4></th>
	<th><h4>PHONE NUMBER 1</h4></th>
	<th><h4>PHONE NUMBER 2</h4></th>
	<th><h4>ZIP</h4></th>
	<th><h4>TOP LIMIT </h4></th>
	<th><h4>CREDIT LIMIT</h4></th>
	<th><h4>COMMISION PERCENT</h4></th>
	<th><h4>SERICE CHARGE</h4></th>
	<th><h4>INVENTORY COST</h4></th>
	<th><h4>INVENTORY LIST</h4></th>
	<th><h4>CREATION DATE</h4></th>
	
	
	</tr>
	<%
	if(retailers!=null){
		for(Retailer retailer: retailers)
		{
			out.write("<tr><td>");
			out.write("<h5>");
			out.write(Integer.toString(retailer.getUniqueId()));
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(retailer.getName());
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(retailer.getAdd1());
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(retailer.getAdd2());
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(retailer.getCity());
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(retailer.getState());
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(retailer.getP1());
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(retailer.getP2());
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(Integer.toString(retailer.getZip()));
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(Integer.toString(retailer.getTopLimit()));
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(Double.toString(retailer.getCreditLimit()));
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(Double.toString(retailer.getCommisionPercent()));
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(Double.toString(retailer.getServiceCharge()));
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(Double.toString(retailer.getInventoryCost()));
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<form name = 'delete' action='MainServlet' method='post'>");
			out.write("<input type='hidden' name='uniqueID' value="+retailer.getUniqueId()+">");
			out.write("<input type='hidden' name='register' value='deleteretailer'>");
			out.write("<button input type='Delete'>Delete</button>");
			out.write("</form>");
			out.write("</td>");
			out.write("<td>");
			out.write("<form name = 'update' action='MainServlet' method='post'>");
			out.write("<input type='hidden' name='uniqueID' value="+retailer+">");
			out.write("<button input type='Update'>Update</button>");
			out.write("</form>");
			out.write("</td>");
			
			out.write("</tr>");
			
		}
	}
	else
		out.print("Empty!");
	
%>
<br>
<br>
<br>

	
<table>
  
</table>

</body>

</center>

</body>

<footer style="color:#FFFFFF;padding:40px;">
  <p>Copyright by Infinity DTH Services</p>
  <p>Contact information: <a href="mailto:someone@example.com">customercare@infinitydth.com</a>.</p>
</footer>

</html>