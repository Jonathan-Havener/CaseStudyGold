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
<%@ page import= "Project.Operator"%>
<%@ page import= "Project.Logic"%>

<font color="white"><h1>Information</h1></font>
<%
	List<Operator> operators = Logic.findOperators();
	%>
	<table style="color: white;">
	<tr>
	
	<th><h4>FIRST NAME</h4></th>
	<th><h4>LAST NAME</h4></th>
	<th><h4>EMAIL ID</h4></th>
	<th><h4>PHONE NUMBER</h4></th>
	
	
	
	</tr>
	<%
	if(operators!=null){
		for(Operator operator: operators)
		{
			out.write("<tr><td>");
			out.write("<h5>");
			out.write(operator.getfName());
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(operator.getlName());
			out.write("</h5>");
			out.write("</td><td>");
			out.write("<h5>");
			out.write(operator.getEmail());
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<h5>");
			out.write(operator.getpNum());
			out.write("</h5>");
			out.write("</td>");
			out.write("<td>");
			out.write("<form name = 'delete' action='MainServlet' method='post'>");
			out.write("<input type='hidden' name='register' value='deleteop'>");
			out.write("<input type='hidden' name='uniqueID' value="+operator.getUniqueId()+">");
			out.write("<button input type='submit'>Delete</button>");
			out.write("</form>");
			out.write("</td>");
			out.write("<td>");
			out.write("<form name = 'update' action='MainServlet' method='post'>");
			out.write("<input type='hidden' name='uniqueID' value="+operator+">");
			out.write("<input type='hidden' name='register' value='updateop'>");
			out.write("<button input type='submit'>Update</button>");
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