import java.sql.Date;
import java.util.ArrayList;

public class Retailer {
	String name,  add1, add2, city, state, p1, p2;
	int zip, topLimit, uniqueId;
	double creditLimit, commisionPercent, serviceCharge, inventoryCost;
	ArrayList<String> inventoryList; 
	java.sql.Date creationDate;
	
	public Retailer(int uniqueId, String name, String add1, String add2, String city, String state, String p1, String p2, int zip,
			int topLimit, double creditLimit, double commisionPercent, double serviceCharge, double inventoryCost,
			ArrayList<String> inventoryList, Date creationDate) {
		this.uniqueId=uniqueId;
		this.name = name;
		this.add1 = add1;
		this.add2 = add2;
		this.city = city;
		this.state = state;
		this.p1 = p1;
		this.p2 = p2;
		this.zip = zip;
		this.topLimit = topLimit;
		this.creditLimit = creditLimit;
		this.commisionPercent = commisionPercent;
		this.serviceCharge = serviceCharge;
		this.inventoryCost = inventoryCost;
		this.inventoryList = inventoryList;
		this.creationDate = creationDate;
	}
	public int getUniqueId() {
		return uniqueId;
	}
	public void setUniqueId(int uniqueId) {
		this.uniqueId = uniqueId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getP1() {
		return p1;
	}
	public void setP1(String p1) {
		this.p1 = p1;
	}
	public String getP2() {
		return p2;
	}
	public void setP2(String p2) {
		this.p2 = p2;
	}
	public int getZip() {
		return zip;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	public int getTopLimit() {
		return topLimit;
	}
	public void setTopLimit(int topLimit) {
		this.topLimit = topLimit;
	}
	public double getCreditLimit() {
		return creditLimit;
	}
	public void setCreditLimit(double creditLimit) {
		this.creditLimit = creditLimit;
	}
	public double getCommisionPercent() {
		return commisionPercent;
	}
	public void setCommisionPercent(double commisionPercent) {
		this.commisionPercent = commisionPercent;
	}
	public double getServiceCharge() {
		return serviceCharge;
	}
	public void setServiceCharge(double serviceCharge) {
		this.serviceCharge = serviceCharge;
	}
	public double getInventoryCost() {
		return inventoryCost;
	}
	public void setInventoryCost(double inventoryCost) {
		this.inventoryCost = inventoryCost;
	}
	public ArrayList<String> getInventoryList() {
		return inventoryList;
	}
	public void setInventoryList(ArrayList<String> inventoryList) {
		this.inventoryList = inventoryList;
	}
	public java.sql.Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(java.sql.Date creationDate) {
		this.creationDate = creationDate;
	}
}