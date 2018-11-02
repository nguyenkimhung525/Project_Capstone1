package app.com.entities;

import java.io.Serializable;

public class Location implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private double lat_number;
	public double getLat_number() {
		return lat_number;
	}
	public void setLat_number(double lat_number) {
		this.lat_number = lat_number;
	}
	public double getLng_number() {
		return lng_number;
	}
	public void setLng_number(double lng_number) {
		this.lng_number = lng_number;
	}
	private double lng_number;
}
