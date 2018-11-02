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

import app.com.dao.TourDAO;
import app.com.entities.Location;
import app.com.entities.TourType;
import app.com.services.TourServices;

@Controller
public class HandlerController {
	private static final Log logger=LogFactory.getLog(HandlerController.class);
	
	@Autowired
	TourServices tourservice;
	
	@RequestMapping(value="/viewmap")
	public String viewmap(Model model,TourType tourType) {
		logger.info("View Map called");
		List<Location> locations=tourservice.getlistlocal(tourservice.gettourtypeid(tourType.getTourname()));
		Location location = tourservice.getlatlng(tourType.getTourname());
		model.addAttribute("locations",locations);
		model.addAttribute("local",location);
		return "view-map";
	}	
}
