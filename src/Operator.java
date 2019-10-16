import java.sql.Timestamp;

public class Operator {
	String fName, lName, email,pNum;
	int  maxCustomers, activeCustomers; 
	Timestamp shiftStart, shiftEnd;
	java.sql.Date creationDate;
	
	public Operator()
	{
		
	}
	public Operator(String fName, String lName, String email, 
			String pNum, Timestamp shiftStart, Timestamp shiftEnd, int maxCustomers, java.sql.Date creationDate, int activeCustomers)
	{
		this.fName=fName;
		this.lName=lName;
		this.email=email;
		this.pNum=pNum;
		this.shiftStart=shiftStart;
		this.shiftEnd=shiftEnd;
		this.maxCustomers=maxCustomers;
		this.creationDate=creationDate;
		this.activeCustomers=activeCustomers;
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
	public String getpNum() {
		return pNum;
	}
	public void setpNum(String pNum) {
		this.pNum = pNum;
	}
	public Timestamp getShiftStart() {
		return shiftStart;
	}
	public void setShiftStart(Timestamp shiftStart) {
		this.shiftStart = shiftStart;
	}
	public Timestamp getShiftEnd() {
		return shiftEnd;
	}
	public void setShiftEnd(Timestamp shiftEnd) {
		this.shiftEnd = shiftEnd;
	}
	public int getMaxCustomers() {
		return maxCustomers;
	}
	public void setMaxCustomers(int maxCustomers) {
		this.maxCustomers = maxCustomers;
	}
	public int getActiveCustomers() {
		return activeCustomers;
	}
	public void setActiveCustomers(int activeCustomers) {
		this.activeCustomers = activeCustomers;
	}
	public java.sql.Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(java.sql.Date creationDate) {
		this.creationDate = creationDate;
	}
	
}
