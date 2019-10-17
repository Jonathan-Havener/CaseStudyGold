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
<%@ page import= "Project.Operator"%>
<%@ page import= "Project.Logic"%>

<font color="white"><h1>Information</h1></font>
<%
	List<Operator> operators = Logic.findOperators();
	%>
	<table style="color: white;">
	<tr>
	
	<th><h2>FIRST NAME</h2></th>
	<th><h2>LAST NAME</h2></th>
	<th><h2>EMAIL ID</h2></th>
	
	
	
	
	</tr>
	<%
	if(operators!=null){
		for(Operator operator: operators)
		{
			out.write("<tr><td>");
			out.write("<h3>");
			out.write(operator.getfName());
			out.write("</h3>");
			out.write("</td><td>");
			out.write("<h3>");
			out.write(operator.getlName());
			out.write("</h3>");
			out.write("</td><td>");
			out.write("<h3>");
			out.write(operator.getEmail());
			out.write("</h3>");
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