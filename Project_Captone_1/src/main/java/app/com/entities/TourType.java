package app.com.entities;

import java.io.Serializable;

public class TourType implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String tourid;
	private String tourname;
	private String content;
	private double lat;
	private double lng;
	
	public String getTourid() {
		return tourid;
	}
	public void setTourid(String tourid) {
		this.tourid = tourid;
	}
	public String getTourname() {
		return tourname;
	}
	public void setTourname(String tourname) {
		this.tourname = tourname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
}
