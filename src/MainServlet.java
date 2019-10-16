
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
    	
    }
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
    		response.setContentType("text/html");
    		String formtype=request.getParameter("register");
    	    String uname=request.getParameter("uname");
			String upwd=request.getParameter("pwd");
			PrintWriter out = response.getWriter();
			HttpSession session=request.getSession();
		    session.setAttribute("username",uname);
		    
    		if(formtype.equals("popup"))
    		{
    			String changepwd=request.getParameter("pwd");
    			String changeConfirmpwd=request.getParameter("psw");
    			if(changepwd.equals(changeConfirmpwd))
    			{
    				if(Logic.ChangePassword(uname, changeConfirmpwd))
    				{
    					System.out.println(session.getAttribute("uname"));
    					getServletContext().getRequestDispatcher("/LoginPage-US1.jsp").include(request, response);
    				}
    			}
    			else
    			{
    				System.out.println("password does not match");
    			   out.println("<script type=\"text/javascript\">");
   				   out.println("alert('passwords not matching');");
   				   out.println("location='popup-form.jsp';");
   				   out.println("</script>");
    			}
    		}
    		 if(formtype.equals("login"))
    		{
    			boolean result=Logic.validateUser(uname, upwd);
    			if(result)
    			{
    				out.println(JDBCConnectionClass.userpassword);
    				
    				if(JDBCConnectionClass.userpassword.equals("default"))
    				{
    					getServletContext().getRequestDispatcher("/popup-form.jsp").forward(request, response);
    				}
    				else
    				{
    				switch(JDBCConnectionClass.role.toLowerCase())
    				{
    				case "admin":
    					response.sendRedirect("Admin_Page.jsp");
    					System.out.println("Admin page");
    					break;
    				case "operator":
    					response.sendRedirect("Operator_Page.jsp");
    					System.out.println("Operator Page");
    					break;
    				case "customer":
    					response.sendRedirect("Customer_Regn.jsp");
    				case "retailer":
    					
    				}
    				}
    			}
    			 if(formtype.equals("operatorcrud"))
    			{
    				if (request.getParameter("create_btn") != null) 
    				{
    					
    				}
    				else if(request.getParameter("view_btn") != null) 
    				{
    					
    				}
    				else if(request.getParameter("update_btn") != null) 
    				{
    					
    				}
    				else if(request.getParameter("delete_btn") != null) 
    				{
    					
    				}
    			}
    			if(formtype.equals("operatorregn"))
    			{
    				System.out.println("operator");
    				SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy hh:mm:ss.SSS");
				    Date parsedDate;
					try {
						parsedDate = dateFormat.parse(request.getParameter("starttime"));
						 Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());
						 boolean i=Logic.addOperator(request.getParameter("fname"), request.getParameter("lname"), 
	    							request.getParameter("email"), request.getParameter("phone"), 
	    							timestamp,
	    							Integer.parseInt(request.getParameter("maxnum")));
						 if(i)
						 {
						   out.println("<script type=\"text/javascript\">");
	    				   out.println("alert('Added Operator');");
	    				   out.println("</script>");
						 }
						 else
						 {
						    out.println("<script type=\"text/javascript\">");
		    				out.println("alert('Please enter valid input');");
		    				out.println("location='Operator_CRUD.jsp';");
		    				out.println("</script>");
						 }
					 } 
					catch (ParseException e)
					{
						e.printStackTrace();
					}	
    			}
    			else
    			{
    				//out.println("Please enter the valid user name and password");
    				//response.sendRedirect("LoginPage-US1.html");
    				   out.println("<script type=\"text/javascript\">");
    				   out.println("alert('Username or password incorrect');");
    				   out.println("location='LoginPage-US1.jsp';");
    				   out.println("</script>");
    				
    			}
    		}
		
		}
		catch(ClassNotFoundException e)
		{
			System.out.println("Class not found exception");
			
		}
		catch(SQLException e)
		{
			System.out.println("SQL exception");
		}

	}
	
	}


