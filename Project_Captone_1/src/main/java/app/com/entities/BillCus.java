package app.com.entities;


public class BillCus {
	private String date;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCountperson() {
		return countperson;
	}
	public void setCountperson(int countperson) {
		this.countperson = countperson;
	}
	private int price;
	private int countperson;
	private int customerid;
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
}
