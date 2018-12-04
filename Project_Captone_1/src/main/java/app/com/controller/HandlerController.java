package app.com.controller;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.org.glassfish.gmbal.ParameterNames;

import app.com.dao.TourDAO;
import app.com.entities.DetailTour;
import app.com.entities.DetailTourForm;
import app.com.entities.Location;
import app.com.entities.TourType;
import app.com.entities.View360;
import app.com.entities.ViewMap;
import app.com.services.TourServices;

@Controller
public class HandlerController {
	private static final Log logger=LogFactory.getLog(HandlerController.class);
	
	@Autowired
	TourServices tourservice;
	
	@RequestMapping(value="/viewmap")
	public String viewmap(Model model,TourType tourType) {
		logger.info("View Map called");
		String img2="img2";
		Map<Double, Double> locations=tourservice.getlistlocal(tourservice.gettourtypeid(tourType.getTourname()));
		//List<Location> locationss=tourservice.getlistshowview(tourservice.gettourtypeid(tourType.getTourname()));
	//	List<Location> lc_image=tourservice.getlistimage();
		Location location = tourservice.getlatlng(tourType.getTourname());
		model.addAttribute("locations",locations);
		model.addAttribute("local",location);
		//model.addAttribute("lc_image",lc_image);
		model.addAttribute("img2",img2);
		return "view-map";
	}	
	@RequestMapping(value="/home")
	public String home(Model model) {
		boolean flag=true;
		model.addAttribute("userclick",flag);
		return "home";
	}
	@RequestMapping(value="/booking")
	public String booking(Model model,@RequestParam Double lat) {
		boolean flag=true;
		List<DetailTour> detailTours=tourservice.getlistdetail(lat);
		DetailTourForm detailTourForm=tourservice.getdetailform(lat);
		List<View360> view360=tourservice.getlistimage360(lat);
		System.out.println(lat);
		model.addAttribute("detailTour",detailTours);
		model.addAttribute("form",detailTourForm);
		model.addAttribute("clickview360",flag);
		model.addAttribute("view360", view360);
		return "booking";
	}
}
