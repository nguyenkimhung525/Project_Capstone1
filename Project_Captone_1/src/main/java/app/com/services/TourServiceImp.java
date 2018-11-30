package app.com.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import app.com.dao.TourDAO;
import app.com.entities.DetailTour;
import app.com.entities.DetailTourForm;
import app.com.entities.Location;

@Service
public class TourServiceImp implements TourServices{
	TourDAO dao;
	public TourServiceImp() {
		// TODO Auto-generated constructor stub
		dao=new TourDAO();
	}
	@Override
	public Map<Double,Double> getlistlocal(int id) {
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
	@Override
	public List<Location> getlistimage() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Location> getlistshowview(int gettourtypeid) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<DetailTour> getlistdetail(Double lat) {
		// TODO Auto-generated method stub
		return dao.detailTours(lat);
	}
	@Override
	public DetailTourForm getdetailform(Double lat) {
		// TODO Auto-generated method stub
		return dao.detailTourForm(lat);
	}

}
