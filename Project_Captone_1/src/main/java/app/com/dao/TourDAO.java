package app.com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import app.com.business.HandlerDate;
import app.com.entities.BillCus;
import app.com.entities.Customer;
import app.com.entities.DetailTour;
import app.com.entities.DetailTourForm;
import app.com.entities.Location;
import app.com.entities.TourType;
import app.com.entities.View360;
import app.com.entities.ViewMap;

public class TourDAO {
	private String hostname="localhost";
	private String classdrive="com.mysql.cj.jdbc.Driver";
	private String dtbase="qlwebdulich";
	private String user="root";
	private String pass="hung255";
	PreparedStatement preparedStatement;
	ResultSet resultSet=null;
	Location location;
	Customer customer;
	HandlerDate date;
	TourType tourType;
	DetailTour detailTour;
	DetailTourForm detailTourForm;
	View360 view360;
	private String connecturl="jdbc:mysql://"+hostname+":3306/"+dtbase;
	Connection connection;
	public TourDAO() {
		try {
			Class.forName(classdrive);
			connection=DriverManager.getConnection(connecturl, user, pass);
			System.out.println("Success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Error"+e);
			e.printStackTrace();
		}
	}
	
	public PreparedStatement prepared(String sql) {
			try {
				preparedStatement=connection.prepareStatement(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return preparedStatement;
	}
	//get list location
	public Map<Double,Double> locations(int tb_id){
		Map<Double,Double> map=new HashMap<>();
		String sql="select lat_number,lng_number from tb_location"+
					" where TourcategoryID=any(SELECT tourcategoryid"+" "
					+" from tb_tourcategory tb where tb.tourtypeid=?)";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setInt(1, tb_id);
			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				location=new Location();
				location.setLat_number(resultSet.getDouble(1));
				location.setLng_number(resultSet.getDouble(2));
				map.put(location.getLat_number(), location.getLng_number());
				}
		} catch (SQLException e) {
			System.out.println("errorr"+e);
		}
		return map;
	}
	//get id of tourtype
	public int tourtypeid(String name) {
		int id=0;
		String sql="select tourid from tb_tourtype where tourname=?";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setNString(1, name);
			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				id=resultSet.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
	}
	
	public Location lat_lng(String name){
		
		String sql="select lat,lng from tb_tourtype where tourname=?";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setNString(1, name);
			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				location=new Location();
				location.setLat_number(resultSet.getDouble(1));
				location.setLng_number(resultSet.getDouble(2));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error: "+e);
		}
		
		return location;
	}
	ViewMap viewMap;
	public List<ViewMap> getimageviewmap(double lng) {
		List<ViewMap> list=new ArrayList<>();
		String sql="select image from tb_svimage ts where ts.lat_number=?";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setDouble(1, lng);

			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				viewMap = new ViewMap();
				viewMap.setImage(resultSet.getString(1));
				list.add(viewMap);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error: "+e);
		}
		
		return list;
	}
	
	public ViewMap listcontent(double lng){
		List<ViewMap> list=new ArrayList<>();
		String sql=	"select tourcategoryname,content_gt from "+
					" tb_tourcategory tt join tb_location tl on"+
					" tt.tourcategoryid=tl.tourcategoryid where tl.lat_number=?";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setDouble(1, lng);
			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				viewMap = new ViewMap();
				viewMap.setName(resultSet.getString(1));
				viewMap.setContent(resultSet.getString(2));
				list.add(viewMap);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error: "+e);
		}
		
		return viewMap;
	}
	public List<DetailTour> detailTours(double lat){
		List<DetailTour> list=new ArrayList<>();
		String sql = "select d2_id,title_hd,content,attach,image from tb_detail2 "+
					 "where  detatil_id=any(select detatil_id "+
					 "from tb_detail join tb_tourcategory on "+
					 " tb_detail.tourcategory_id=tb_tourcategory.tourcategoryid join tb_location USING (tourcategoryid) "+
					 "where lat_number=?)";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setDouble(1, lat);
			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				detailTour = new DetailTour();
				detailTour.setId(resultSet.getInt(1));
				detailTour.setHeader_ct(resultSet.getString(2));
				detailTour.setContent(resultSet.getString(3));
				detailTour.setAttach(resultSet.getString(4));
				detailTour.setImage(resultSet.getString(5));
				list.add(detailTour);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error"+"\n"+e);
			e.printStackTrace();
		}
		return list;
	}
	public DetailTourForm detailTourForm(double lat) {
		date=new HandlerDate();
		String sql = "select tourcategory_id,startdate,enddate,price,tourcategoryname,title,image from "+ 
					 "tb_detail join tb_tourcategory on tb_detail.tourcategory_id=tb_tourcategory.tourcategoryid "+
					 "where tourcategory_id=any(select tourcategoryid from  tb_location " + 
					 "where lat_number=?)";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setDouble(1, lat);
			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				detailTourForm = new DetailTourForm();
				detailTourForm.setId(resultSet.getString(1));
				detailTourForm.setStartdate(date.CONVERT_DATE(resultSet.getString(2)));
				detailTourForm.setEnddate(date.CONVERT_DATE(resultSet.getString(3)));
				detailTourForm.setTotaldate(date.NUMBER_DATE(resultSet.getString(3), resultSet.getString(2)));
				detailTourForm.setPrice(resultSet.getInt(4));
				detailTourForm.setHead(resultSet.getString(5));
				detailTourForm.setTitle(resultSet.getString(6));
				detailTourForm.setImage(resultSet.getString(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error"+"\n"+e);
			e.printStackTrace();
		}
		return detailTourForm;
	}
	public DetailTourForm FORM_CUS(String id) {
		date=new HandlerDate();
		String sql = "select tourcategory_id,startdate,enddate,price,tourcategoryname,title,image from "+ 
					 "tb_detail join tb_tourcategory on tb_detail.tourcategory_id=tb_tourcategory.tourcategoryid "+
					 "where tourcategory_id=?";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				detailTourForm = new DetailTourForm();
				detailTourForm.setId(resultSet.getString(1));
				detailTourForm.setStartdate(date.CONVERT_DATE(resultSet.getString(2)));
				detailTourForm.setEnddate(date.CONVERT_DATE(resultSet.getString(3)));
				detailTourForm.setTotaldate(date.NUMBER_DATE(resultSet.getString(3), resultSet.getString(2)));
				detailTourForm.setPrice(resultSet.getInt(4));
				detailTourForm.setHead(resultSet.getString(5));
				detailTourForm.setTitle(resultSet.getString(6));
				detailTourForm.setImage(resultSet.getString(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error"+"\n"+e);
			e.printStackTrace();
		}
		return detailTourForm;
	}
	public List<View360> image360(double lat) {
		List<View360> list = new ArrayList<>();
		String sql="select id_img,image " + 
				"from tb_ttimage join tb_location using(lat_number) " + 
				"where lat_number=?";
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setDouble(1, lat);
			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				view360 = new View360();
				view360.setId(resultSet.getInt(1));
				view360.setImage(resultSet.getString(2));
				list.add(view360);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public boolean INSERT_CUS(Customer customer) {
		String sql="insert into tb_customer(`name`,`email`,`phone`,`address`)values(?,?,?,?)";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, customer.getName());
			preparedStatement.setString(2, customer.getEmail());
			preparedStatement.setString(3, customer.getPhone());
			preparedStatement.setString(4, customer.getAddress());
			int kq=preparedStatement.executeUpdate();
			if(kq==1)return true;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	public boolean INSERT_BOOK(String idtour,int idcus) {
		String sql="insert into tb_bookingtour(`tourcategoryid`,`customerid`)values(?,?)";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, idtour);
			preparedStatement.setInt(2, idcus);
			int kq=preparedStatement.executeUpdate();
			if(kq==1)return true;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	public boolean INSERT_BIll(BillCus billCus) {
		date = new HandlerDate();
		String sql="insert into tb_bill(`createdate`,`totalprice`,`count_person`,customerid)values(?,?,?,?)";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,date.DATE_NOW());
			preparedStatement.setInt(2, billCus.getPrice());
			preparedStatement.setInt(3, billCus.getCountperson());
			preparedStatement.setInt(4, billCus.getCustomerid());
			int kq=preparedStatement.executeUpdate();
			if(kq==1)return true;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	public int GETID(String name) {
		date = new HandlerDate();
		int id=0;
		String sql="select customerid from tb_customer where name=?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,name);
			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				id=resultSet.getInt(1);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return id;
	}
	public static void main(
		String[] args) {
		TourDAO dao=new TourDAO();
		System.out.println(new java.util.Date());
		System.out.println(dao.INSERT_BOOK("WSTC0004", 8)?"Thanh cong":"that bai");

		System.out.println("image: "+dao.FORM_CUS("WSTC0004").getImage());
		//dao.locations(1);
		Map<Double,Double> maps=new HashMap<>();
		for (Map.Entry<Double, Double> entry : dao.locations(1).entrySet()) {
			System.out.println(entry.getKey()+" : "+entry.getValue());
		}
		Customer customer =new Customer();
		customer.setName("Nguyen Kim Hung");
		customer.setEmail("nguyenkimhung252525@gmail.com");
		customer.setPhone("0165400641");
		customer.setAddress("Đà Nẵng");
		System.out.println(dao.INSERT_CUS(customer)==true?"insert thanh cong":"that bai");
		System.out.println(customer.getName());
		System.out.println(dao.tourtypeid("Đà Nẵng"));
		//System.out.println("Đà Nẵng");
		dao.lat_lng("Đà Nẵng");
		for (DetailTour detailTour : dao.detailTours(15.997486)) {
			System.out.println(detailTour.getHeader_ct());
		}
		for (View360 view360 : dao.image360(16.070451)) {
			System.out.println(view360.getId()+":"+view360.getImage());
		}
		System.out.println(dao.detailTourForm(15.997486).getTotaldate()+"\nNGày bắt đầu: "+dao.detailTourForm(15.997486).getStartdate()+dao.detailTourForm(15.997486).getEnddate()+dao.detailTourForm(15.997486).getImage());
	}
}