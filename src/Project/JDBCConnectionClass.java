package Project;
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
	
	
	static boolean createOperator(Operator o) throws SQLException, ClassNotFoundException
	{
		
		Class.forName(driverinfo);
	    Connection con = DriverManager.getConnection(url, uname, pwd);
	    
	    String query = "Insert into operator values(?,?,?,?,?,?,?,?,?,?)";
	    PreparedStatement pst = con.prepareStatement(query);
	    pst.setInt(1, o.getUniqueId());
	    pst.setString(2, o.getfName());
	    pst.setString(3, o.getlName());
	    pst.setString(4, o.getEmail());
	    pst.setString(5, o.getpNum());
	    pst.setTimestamp(6, o.getShiftStart());
	    pst.setTimestamp(7, o.getShiftEnd());
	    pst.setInt(8, o.getMaxCustomers());
	    pst.setDate(9, o.getCreationDate());
	    pst.setInt(10, o.getActiveCustomers());
	    

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
	
	
	static boolean deleteOperator(int uniqueId) throws SQLException, ClassNotFoundException
	{
		Class.forName(driverinfo);
	    Connection con = DriverManager.getConnection(url, uname, pwd);
	    
	    String query = "Delete from Operator where OpID = ?";
	    pst.setInt(1, uniqueId);

	    PreparedStatement pst = con.prepareStatement(query);
	    
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
	    pst.setString(2, retailer.getP1());
	    pst.setString(3, retailer.getP2());
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
	
	static boolean deleteRetailer(int uniqueId) throws SQLException, ClassNotFoundException
	{
		Class.forName(driverinfo);
	    Connection con = DriverManager.getConnection(url, uname, pwd);
	    
	    String query = "Delete from Retailer where RetailerID = ?";
	    pst.setInt(1, uniqueId);

	    PreparedStatement pst = con.prepareStatement(query);
	    
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
	    System.out.println("welcome");
	    String query = "Insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	    PreparedStatement pst = con.prepareStatement(query);
	    pst.setInt(1, c.uniqueId);
	    pst.setString(2, c.getfName());
	    pst.setString(3, c.getlName());
	    pst.setString(4, c.getEmail());
	    pst.setString(5, c.getP1());
	    pst.setString(6, c.getAdd1());
	    pst.setString(7, c.getAdd2());
	    pst.setString(8, c.getLandMark());
	    pst.setInt(9, c.getZip());
	    pst.setString(10, c.getCity());
	    pst.setString(11, c.getState());
	    pst.setDate(12, c.getCreationDate());
	    pst.setInt(13, c.getRetailer());
	    pst.setInt(14, c.getOperator());
	    
	    
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

	
	static boolean deleteCustomer(int uniqueId) throws SQLException, ClassNotFoundException
	{
		Class.forName(driverinfo);
	    Connection con = DriverManager.getConnection(url, uname, pwd);
	    
	    String query = "Delete from Customer where CusID = ?";
	    pst.setInt(1, uniqueId);

	    PreparedStatement pst = con.prepareStatement(query);
	    
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
	public static ArrayList<Operator> queryOperators() throws SQLException, ClassNotFoundException
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
	    	tempOperator = new Operator(rs.getInt("OpId"),rs.getString("FName"), rs.getString("LName"),
	    			rs.getString("emailID"), rs.getString("phone#"), rs.getTimestamp("ShftStrt"),
	    			rs.getTimestamp("ShftEnd"), rs.getInt("Maximum#ofCustMnged"), rs.getDate("CreationDate"),
	    			rs.getInt("activeCus"));
	    	operators.add(tempOperator);
	    }
		
		return operators;
	}
	public static ArrayList<Customer> queryCustomers() throws SQLException, ClassNotFoundException
	{
		Class.forName(driverinfo);
	    Connection con = DriverManager.getConnection(url, uname, pwd);
	    
	    String query = "select * from Customer";
	    PreparedStatement pst = con.prepareStatement(query);
	    
	    ResultSet rs = pst.executeQuery();
	    ArrayList<Customer> customers = new ArrayList<>();
	    Customer tempCustomer;
	    
	    /*
	     * public Customer(int uniqueId, String fName, String lName, String email, String add1, String add2, String landMark, 
			String city, String state, int operator, int retailer, String p1, int zip, Date creationDate)
	     */
	    while(rs.next())
	    {
	    	//define Operator using rs.getString(1) starting at 1
	    	tempCustomer = new Customer(rs.getInt("cusId"), rs.getString("FName"), rs.getString("LName"),
	    			rs.getString("emailId"), rs.getString("Address1"), rs.getString("Address2"), rs.getString("Landmark"),
	    			rs.getString("City"), rs.getString("StateProvince"), rs.getInt("OpID"), rs.getInt("RetailerID"),
	    			rs.getString("phoneNum"), rs.getInt("PinCodeZipCode"), rs.getDate("CustomerCreationDate"));
	    	customers.add(tempCustomer);
	    }
		
		return customers;
	}
	public static ArrayList<Retailer> queryRetailers() throws SQLException, ClassNotFoundException
	{
		Class.forName(driverinfo);
	    Connection con = DriverManager.getConnection(url, uname, pwd);
	    
	    String query = "select * from Retailer";
	    PreparedStatement pst = con.prepareStatement(query);
	    
	    ResultSet rs = pst.executeQuery();
	    ArrayList<Retailer> retailers = new ArrayList<>();
	    Retailer tempRetailer;
	    
	    /*
	     * public Retailer(int uniqueId, String name, String add1, String add2, String city, String state, String p1, String p2, int zip,
			int topLimit, double creditLimit, double commisionPercent, double serviceCharge, double inventoryCost,
			ArrayList<String> inventoryList, Date creationDate) 
	     */
	    while(rs.next())
	    {
	    	//define Operator using rs.getString(1) starting at 1
	    	tempRetailer = new Retailer(rs.getInt("RetailerID"), rs.getString("Retname"), rs.getString("Addressone"), rs.getString("Addresstwo"), rs.getString("City"), 
	    			rs.getString("StateProvince"), rs.getString("contactone"), rs.getString("contacttwo"), rs.getInt("PinCodeZipCode"), rs.getInt("TopBoxLimit"),rs.getDouble("CreditLimit"), rs.getDouble("Commissionpercent"), 
	    			rs.getDouble("ServiceCharges"),0/*inventory cost not defined in db*/, rs.getDate("RetailerCreationDate"));
	    	retailers.add(tempRetailer);
	    }
		
		return retailers;
	}
	static boolean selectUsers(String username,String password) throws SQLException, ClassNotFoundException
	{
		
	    String query = "select * from Login where username=? and password=?";
	    Class.forName(driverinfo);
	    con = DriverManager.getConnection(url, uname, pwd);
	    pst = con.prepareStatement(query);
	    pst.setString(1, username);
	    pst.setString(2, password);
	    rs = pst.executeQuery();
	    if(rs.next())
	    {
	    	userpassword=rs.getString(2);
	    	role=rs.getString(3);
	        return true;
	    }
	    
	        rs.close();
	 	    pst.close();
	 	    con.close();
	 	    return false;
	}
	static boolean ChangePassword(String username,String password) throws SQLException, ClassNotFoundException
	{
		
	    String query = "update Login set password=? where username=?";
	    Class.forName(driverinfo);
	    con = DriverManager.getConnection(url, uname, pwd);
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
