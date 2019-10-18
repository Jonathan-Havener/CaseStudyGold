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
<%@ page import= "Project.Customer"%>
<%@ page import= "Project.Logic"%>

<font color="white"><h1>Information</h1></font>
<%
	List<Customer> customers = Logic.findCustomers();
	%>
	<table style="color: white;">
	<tr>
	<th><h4> UNIQUE ID</h4></th>
	<th><h4>FIRST NAME</h4></th>
	<th><h4>LAST NAME</h4></th>
	<th><h4>EMAIL ID</h4></th>
	<th><h4>ADDRESS 1</h4></th>
	<th><h4>ADDRESS 2</h4></th>
	<th><h4>LANDMARK</h4></th>
	<th><h4>CITY</h4></th>
	<th><h4>STATE</h4></th>
	<th><h4>OPERATOR</h4></th>
	<th><h4>RETAILER</h4></th>
	<th><h4>PHONE NUMBER</h4></th>
	<th><h4>ZIP</h4></th>

	

	
	
	
	</tr>
	<%
	if(customers!=null){
		for(Customer customer: customers)
		{
			out.write("<tr><td>");
			out.write("<h5>");
			out.write(Integer.toString(customer.getUniqueId()));
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(customer.getfName());
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(customer.getlName());
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(customer.getEmail());
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(customer.getAdd1());
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(customer.getAdd2());
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(customer.getLandMark());
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(customer.getCity());
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(customer.getState());
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(Integer.toString(customer.getOperator()));
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(Integer.toString(customer.getRetailer()));
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(customer.getP1());
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(Integer.toString(customer.getZip()));
			out.write("</h5>");
			out.write("</td>");
			
			
			out.write("<td>");
			out.write("<form name = 'delete' action='MainServlet' method='post'>");
			out.write("<input type='hidden' name='uniqueID' value="+customer.getUniqueId()+">");
			out.write("<input type='hidden' name='register' value='deletecustomer'>");
			out.write("<button input type='Delete'>Delete</button>");
			out.write("</form>");
			out.write("</td>");
			out.write("<td>");
			out.write("<form name = 'update' action='MainServlet' method='post'>");
			out.write("<input type='hidden' name='uniqueID' value="+customer+">");
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