package app.com.entities;

import java.io.Serializable;

public class TourCategory implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String tourcategoryid;
	private int total_time;
	private String vehide;
	private String tourcategoryname;
	
	public String getTourcategoryid() {
		return tourcategoryid;
	}
	public void setTourcategoryid(String tourcategoryid) {
		this.tourcategoryid = tourcategoryid;
	}
	public String getTourcategoryname() {
		return tourcategoryname;
	}
	public void setTourcategoryname(String tourcategoryname) {
		this.tourcategoryname = tourcategoryname;
	}
	public int getTotal_time() {
		return total_time;
	}
	public void setTotal_time(int total_time) {
		this.total_time = total_time;
	}
	public String getVehide() {
		return vehide;
	}
	public void setVehide(String vehide) {
		this.vehide = vehide;
	}

}
