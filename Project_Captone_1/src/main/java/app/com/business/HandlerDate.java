package app.com.business;

import java.text.SimpleDateFormat;
import java.util.Date;

public class HandlerDate {
	public String CONVERT_DATE(String date) {
		String strdate = null;
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		Date dt=new Date();
		try {
			dt=dateFormat.parse(date);
			strdate=new SimpleDateFormat("dd-MM-yyyy").format(dt);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return strdate;
	}
	public String DATE_NOW() {
		Date date=new Date();
		return new SimpleDateFormat("yyyy-MM-dd").format(date);
	}
	public String NUMBER_DATE(String date,String date2) {
		int value1=Integer.valueOf(date.substring(date.length()-2));
		System.out.println(value1);
		int value2=Integer.valueOf(date2.substring(date2.length()-2));
		System.out.println(value2);
		return (value1-value2)+" ngày "+(value1-value2-1)+" đêm";
	}
	public static void main(String[] args) {
		HandlerDate date=new HandlerDate();
		System.out.println(date.CONVERT_DATE("2018-12-19"));
		System.out.println(date.NUMBER_DATE("2018-12-29","2018-12-19"));
		Date date2=new Date();
		SimpleDateFormat dateFormat=new SimpleDateFormat("dd-MM-yyyy");
		System.out.println(dateFormat.format(date2));
		String str=dateFormat.format(date2);
		System.out.println(str);
		
		System.out.println("NGay: hien tai: "+date.DATE_NOW());
	}
}
