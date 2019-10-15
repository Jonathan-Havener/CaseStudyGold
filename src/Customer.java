import java.sql.Date;

public class Customer {
	String fName, lName, email, add1, add2, landMark, city, state, operator, retailer;
	int p1, zip;
	java.sql.Date creationDate;
	
	
	public Customer(String fName, String lName, String email, String add1, String add2, String landMark, 
			String city, String state, String operator, String retailer, int p1, int zip, Date creationDate) {
		super();
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.add1 = add1;
		this.add2 = add2;
		this.landMark = landMark;
		this.city = city;
		this.state = state;
		this.operator = operator;
		this.retailer = retailer;
		this.p1 = p1;
		this.zip = zip;
		this.creationDate = creationDate;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdd1() {
		return add1;
	}
	public void setAdd1(String add1) {
		this.add1 = add1;
	}
	public String getAdd2() {
		return add2;
	}
	public void setAdd2(String add2) {
		this.add2 = add2;
	}
	public String getLandMark() {
		return landMark;
	}
	public void setLandMark(String landMark) {
		this.landMark = landMark;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public String getRetailer() {
		return retailer;
	}
	public void setRetailer(String retailer) {
		this.retailer = retailer;
	}
	public int getP1() {
		return p1;
	}
	public void setP1(int p1) {
		this.p1 = p1;
	}
	public int getZip() {
		return zip;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	public java.sql.Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(java.sql.Date creationDate) {
		this.creationDate = creationDate;
	}
	
	

}
