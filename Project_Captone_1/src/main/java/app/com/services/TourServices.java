package app.com.services;

import java.util.List;
import java.util.Map;

import app.com.entities.DetailTour;
import app.com.entities.DetailTourForm;
import app.com.entities.Location;
import app.com.entities.View360;

public interface TourServices {

	public Map<Double, Double> getlistlocal(int id);

	public int gettourtypeid(String name);

	public Location getlatlng(String tourname);

	public List<Location> getlistimage();

	public List<Location> getlistshowview(int gettourtypeid);

	public List<DetailTour> getlistdetail(Double lat);

	public DetailTourForm getdetailform(Double lat);

	public List<View360> getlistimage360(Double lat);

}
