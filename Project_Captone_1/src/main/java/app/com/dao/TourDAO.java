package app.com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import app.com.entities.Location;
import app.com.entities.TourType;

public class TourDAO {
	private String hostname="localhost";
	private String classdrive="com.mysql.cj.jdbc.Driver";
	private String dtbase="qlwebdulich";
	private String user="root";
	private String pass="hung255";
	PreparedStatement preparedStatement;
	ResultSet resultSet=null;
	Location location;
	TourType tourType;
	private String connecturl="jdbc:mysql://"+hostname+":3306/"+dtbase;
	Connection connection;
	public TourDAO() {
		try {
			Class.forName(classdrive);
			connection=DriverManager.getConnection(connecturl, user, pass);
			System.out.println("Success");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Error");
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
	public List<Location> locations(int tb_id){
		List<Location> list=new ArrayList<>();
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
				list.add(location);
				}
		} catch (SQLException e) {
			System.out.println("errorr"+e);
		}
		return list;
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
	public static void main(String[] args) {
		TourDAO dao=new TourDAO();
		//dao.locations(1);
		
		System.out.println(dao.tourtypeid("Đà Nẵng"));
		//System.out.println("Đà Nẵng");
		dao.lat_lng("Đà Nẵng");
		
	}
}