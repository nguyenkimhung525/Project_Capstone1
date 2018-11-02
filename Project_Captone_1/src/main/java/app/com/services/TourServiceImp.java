package app.com.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import app.com.dao.TourDAO;
import app.com.entities.Location;

@Service
public class TourServiceImp implements TourServices{
	TourDAO dao;
	public TourServiceImp() {
		// TODO Auto-generated constructor stub
		dao=new TourDAO();
	}
	@Override
	public List<Location> getlistlocal(int id) {
		// TODO Auto-generated method stub
		return dao.locations(id);
	}

	@Override
	public int gettourtypeid(String name) {
	
		return dao.tourtypeid(name);
	}
	@Override
	public Location getlatlng(String tourname) {
		// TODO Auto-generated method stub
		return dao.lat_lng(tourname);
	}

}
