package app.com.services;

import java.util.List;
import java.util.Map;

import app.com.entities.Location;

public interface TourServices {

	public Map<Double, Double> getlistlocal(int id);

	public int gettourtypeid(String name);

	public Location getlatlng(String tourname);

	public List<Location> getlistimage();

}
