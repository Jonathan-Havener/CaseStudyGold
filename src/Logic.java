import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
//import java.time.Instant;
public class Logic {
	
	
	// This function will instantiate the current time and calculate the endOfShift time and pass all relevant
	// information to the JDBCConnectionClass to add the operator into the database.
	// If the information is successfully added into the database, true is returned. False otherwise.
	static Boolean addOperator(String fName, String lName, String email, int pNum, Timestamp shiftStart, int maxCustomers)
	{
		// the results of adding the operator into the db
		boolean isSuccessful;
		
		
		
		//int shiftEnd = (shiftStart+8)%24;
		Timestamp shiftEnd=shiftStart;
		//Instant creationDate = Instant.now();
		
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date creationDate = new java.sql.Date(utilDate.getTime());
		
		int activeCustomers = 0;
		
		Operator operator = new Operator(fName,lName,email,pNum,shiftStart,shiftEnd,
				maxCustomers, creationDate, activeCustomers);
		
		// Try to add the information into the database and return false if the operation fails.
		try {
			isSuccessful = JDBCConnectionClass.createOpperator(operator);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			// The operation failed!
			isSuccessful = false;
		}
		
		return isSuccessful;
	}
	

	// This function will create a start time and calculate the cost of the inventory assigned to
	// a retailer and pass it to jdbc to create the retailer
	static boolean addRetailer(String name, int p1, int p2, String add1, String add2, int zip,
			String city, String state, int topLimit, double creditLimit, double commisionPercent,
			double serviceCharge, ArrayList<String> inventoryList )
	{
		boolean isSuccessful;
		
		/* To do
		* Assign inventory status to AssignedToRetailer
		*/
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date creationDate = new java.sql.Date(utilDate.getTime());
		
		double inventoryCost = 0;
		
		Retailer retailer = new Retailer(name, add1, add2, city, state, p1, p2, zip,
			topLimit, creditLimit, commisionPercent, serviceCharge, inventoryCost,
			inventoryList, creationDate);
		
		try {
			isSuccessful = JDBCConnectionClass.createRetailer(retailer);
			// if we're successful, we should assign the inventory in the inventory table to the retailer
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			isSuccessful = false;
		}
		
		
		//if isSuccessful
		//assign inventory to Retailer
		return isSuccessful;
	}
	
	/*
	 3.3.6 Customer Creation Date(auto-filled as current date, non-editable)
	All the above fields are mandatory.
	 3.3.7 Operator Name (In case Customer is created by Operator it will be
	filled automatically. Otherwise by default it will be empty, then Admin can
	update any Operator's name here by selection.)
	 3.3.8 Retailer Name (To be updated later by Admin/Operator by selection.
	Once done, Retailer name and contact details both should be visible.)
	*/
	static boolean addCustomer(String fName, String lName, String email, int p1, String add1, 
			String add2, String landMark, int zip, String city, String state, String operator,
			String retailer)
	{
		boolean isSuccessful;
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date creationDate = new java.sql.Date(utilDate.getTime());
		
		Customer c = new Customer(fName, lName, email, add1, add2, landMark, city,
				state, operator, retailer, p1, zip, creationDate);
		
		try {
			isSuccessful = JDBCConnectionClass.createCustomer(c);
			// if we're successful, we should assign the inventory in the inventory table to the retailer
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			isSuccessful = false;
		}
		
		return isSuccessful;
	}
	
	static ArrayList<Operator> findOperators()
	{
		try {
			return JDBCConnectionClass.queryOperators();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}
	
}
