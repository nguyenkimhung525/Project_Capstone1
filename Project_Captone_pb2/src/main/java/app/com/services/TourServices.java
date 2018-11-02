package app.com.services;

import java.util.List;
import java.util.Map;

import app.com.entities.Location;

public interface TourServices {

	public List<Location> getlistlocal(int id);

	public int gettourtypeid(String name);

	public Location getlatlng(String tourname);

}
