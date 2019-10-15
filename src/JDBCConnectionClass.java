import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class JDBCConnectionClass {
	
	static String driverinfo = "oracle.jdbc.driver.OracleDriver";
    static String url = "jdbc:oracle:thin:@localhost:1521:xe";
    static String uname = "system";
    static String pwd = "12345";
	static Connection con = null;
	static PreparedStatement pst = null;
	static ResultSet rs = null;
static String role="";
	static String userpassword="";
	
	
	static boolean createOpperator(Operator o) throws SQLException, ClassNotFoundException
	{
		
		Class.forName(driverinfo);
	    Connection con = DriverManager.getConnection(url, uname, pwd);
	    
	    String query = "Insert into operator values(?,?,?,?,?,?,?,?,?)";
	    PreparedStatement pst = con.prepareStatement(query);
	    pst.setString(1, o.getfName());
	    pst.setString(2, o.getlName());
	    pst.setString(3, o.getEmail());
	    pst.setInt(4, o.getpNum());
	    pst.setTimestamp(5, o.getShiftStart());
	    pst.setTimestamp(6, o.getShiftEnd());
	    pst.setInt(7, o.getMaxCustomers());
	    pst.setDate(8, o.getCreationDate());
	    pst.setInt(9, o.getActiveCustomers());
	    

	    try {
		    pst.executeUpdate();
		    return true;
	    }
	    catch(Exception e)
	    {
	    	
	    	e.printStackTrace();
	    	return false;
	    }
		
	}
	
	// this function will add a retailer into the db. If the retailer is valid, it will call update
	// inventory using the retailer's primary ID
	static boolean createRetailer(Retailer retailer) throws SQLException, ClassNotFoundException
	{
		Class.forName(driverinfo);
	    Connection con = DriverManager.getConnection(url, uname, pwd);
	    
	    String query = "Insert into retailer values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	    PreparedStatement pst = con.prepareStatement(query);
	    pst.setString(1, retailer.getName());
	    pst.setInt(2, retailer.getP1());
	    pst.setInt(3, retailer.getP2());
	    pst.setString(4, retailer.getAdd1());
	    pst.setString(5, retailer.getAdd2());
	    pst.setInt(6, retailer.getZip());
	    pst.setString(7, retailer.getCity());
	    pst.setString(8, retailer.getState());
	    pst.setInt(9, retailer.getTopLimit());
	    pst.setDouble(10, retailer.getCreditLimit());
	    pst.setDouble(11, retailer.getCommisionPercent());
	    pst.setDouble(12, retailer.getServiceCharge());
	    // update retail db
	    pst.setDate(13, retailer.getCreationDate());
	    pst.setDouble(14, retailer.getInventoryCost());
	    

	    try {
		    pst.executeUpdate();
		    return true;
	    }
	    catch(Exception e)
	    {
	    	
	    	e.printStackTrace();
	    	return false;
	    }

	}
	
	// to be implemented
	static boolean updateInventory(ArrayList<String> inventory /*, primaryIdOfRetailer*/)
	{
		return true;
	}
	
	
	static boolean createCustomer(Customer c) throws SQLException, ClassNotFoundException
	{
		Class.forName(driverinfo);
	    Connection con = DriverManager.getConnection(url, uname, pwd);
	    
	    String query = "Insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	    PreparedStatement pst = con.prepareStatement(query);
	    pst.setString(1, c.getfName());
	    pst.setString(2, c.getlName());
	    pst.setString(3, c.getEmail());
	    pst.setInt(4, c.getP1());
	    pst.setString(5, c.getAdd1());
	    pst.setString(6, c.getAdd2());
	    pst.setString(7, c.getLandMark());
	    pst.setInt(8, c.getZip());
	    pst.setString(9, c.getCity());
	    pst.setString(10, c.getState());
	    pst.setString(11, c.getOperator());
	    pst.setString(12, c.getRetailer());
	    pst.setDate(13, c.getCreationDate());
	    
	    try {
		    pst.executeUpdate();
		    return true;
	    }
	    catch(Exception e)
	    {
	    	
	    	e.printStackTrace();
	    	return false;
	    }


	}

	static ArrayList<Operator> queryOperators() throws SQLException, ClassNotFoundException
	{
		Class.forName(driverinfo);
	    Connection con = DriverManager.getConnection(url, uname, pwd);
	    
	    String query = "select * from Operator";
	    PreparedStatement pst = con.prepareStatement(query);
	    
	    ResultSet rs = pst.executeQuery();
	    ArrayList<Operator> operators = new ArrayList<>();
	    Operator tempOperator;
	    
	    while(rs.next())
	    {
	    	//define Operator using rs.getString(1) starting at 1
	    	tempOperator = new Operator(rs.getString("FName"), rs.getString("LName"),
	    			rs.getString("emailID"), rs.getInt("phone#"), rs.getTimestamp("ShftStrt"),
	    			rs.getTimestamp("ShftEnd"), rs.getInt("Maximum#ofCustMnged"), rs.getDate("CreationDate"),
	    			rs.getInt("activeCustomers"));
	    	operators.add(tempOperator);
	    }
		
		return operators;
	}
public static boolean selectUsers(String username,String password) throws SQLException, ClassNotFoundException
	{
		
	    String query = "select * from login1 where userid=? and password=?";
	    Class.forName(driverinfo);
	    System.out.println("driver registered successfully");

	    con = DriverManager.getConnection(url, uname, pwd);
	    System.out.println("connection established successfully");

	    pst = con.prepareStatement(query);
	    pst.setString(1, username);
	    pst.setString(2, password);
	    rs = pst.executeQuery();
	  
	    if(rs.next())
	    {
	        //System.out.println(rs.getString(1)+"-------"+rs.getString(2));
	    	userpassword=rs.getString(2);
	    	role=rs.getString(3);
	        return true;
	    }
	    
	        rs.close();
	 	    pst.close();
	 	    con.close();
	 	    return false;
	}
	public static boolean ChangePassword(String username,String password) throws SQLException, ClassNotFoundException
	{
		
	    String query = "update login1 set password=? where userid=?";
	    Class.forName(driverinfo);
	    System.out.println("driver registered successfully");

	    con = DriverManager.getConnection(url, uname, pwd);
	    System.out.println("connection established successfully");

	    pst = con.prepareStatement(query);
	    pst.setString(1,password );
	    pst.setString(2, username);
	    int i= pst.executeUpdate();
	  
	    if(i>0)
	    {
	        return true;
	    }
	    
	        rs.close();
	 	    pst.close();
	 	    con.close();
	 	    return false;
	}
}
