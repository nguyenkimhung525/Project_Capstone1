package app.com.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import app.com.dao.TourDAO;
import app.com.entities.BillCus;
import app.com.entities.Customer;
import app.com.entities.DetailTour;
import app.com.entities.DetailTourForm;
import app.com.entities.Location;
import app.com.entities.View360;

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
	@Override
	public List<View360> getlistimage360(Double lat) {
		// TODO Auto-generated method stub
		return dao.image360(lat);
	}
	@Override
	public boolean addCustomer(@Valid Customer customer) {
		// TODO Auto-generated method stub
		System.out.println("Email: "+customer.getEmail());
		return dao.INSERT_CUS(customer);
	}
	@Override
	public DetailTourForm getFormcus(String id) {
		// TODO Auto-generated method stub
		return dao.FORM_CUS(id);
	}
	@Override
	public BillCus getBillCus() {
		// TODO Auto-generated method stub
		return new BillCus();
	}
	@Override
	public boolean INSERT_BILL(BillCus billCus) {
		// TODO Auto-generated method stub
		return dao.INSERT_BIll(billCus);
	}
	@Override
	public int getcusID(String name) {
		// TODO Auto-generated method stub
		return dao.GETID(name);
	}
	@Override
	public boolean INSERT_BOOK(String idtour, int idcus) {
		// TODO Auto-generated method stub
		return dao.INSERT_BOOK(idtour, idcus);
	}

}
