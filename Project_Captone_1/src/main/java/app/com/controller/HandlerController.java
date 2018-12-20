package app.com.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.javafx.sg.prism.NGShape.Mode;
import com.sun.org.apache.bcel.internal.generic.AALOAD;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.sun.org.glassfish.gmbal.ParameterNames;

import app.com.dao.TourDAO;
import app.com.entities.BillCus;
import app.com.entities.Customer;
import app.com.entities.DetailTour;
import app.com.entities.DetailTourForm;
import app.com.entities.Location;
import app.com.entities.Login;
import app.com.entities.TourType;
import app.com.entities.View360;
import app.com.entities.ViewMap;
import app.com.services.TourServices;
import app.com.validator.ProcessValidator;
import app.com.validator.ValidatorLogin;

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
		System.out.println("Image: "+detailTourForm.getImage());
		model.addAttribute("detailTour",detailTours);
		model.addAttribute("form",detailTourForm);
		model.addAttribute("clickview360",flag);
		model.addAttribute("view360", view360);
		model.addAttribute("customers", new Customer());
		return "booking";
	}
	@RequestMapping(value="/form-customer")
	public String inCustomer(Model model,DetailTourForm detailTourForm,HttpSession session) {
		 boolean formcus=false;
		 boolean formsub=false;
		 boolean formtt=false;
		 boolean formht=false;
		 boolean formdetails=false;
		 session.setAttribute("id", detailTourForm.getId());
		 System.out.println(detailTourForm.getId());
	    DetailTourForm form=tourservice.getFormcus(detailTourForm.getId());
		formdetails=true;
		formcus=true;
    	formsub=false;
    	formtt=true;
    	formht=false;
    	model.addAttribute("formtt", formtt);
		model.addAttribute("formht", formht);
    	model.addAttribute("formcust", formcus);
		model.addAttribute("formsub", formsub);
    	model.addAttribute("forms", form);
		model.addAttribute("formdetails", formdetails);
		model.addAttribute("customer", new Customer());
    	model.addAttribute("counttiny", 0);
		model.addAttribute("countperson", 1);
		return "formcustomer";
	}

	
	 @RequestMapping(value = "/add-customer")
	 public String saveCustomer(@Valid @ModelAttribute Customer customer,
	            BindingResult bindingResult, Model model,DetailTourForm detailTourForm,HttpSession session) {
		 boolean formcus=false;
		 boolean formsub=false;
		 boolean formtt=false;
		 boolean formht=false;
		 boolean formdetails=false;
		 List<String> style=new ArrayList<>();
		 System.out.println("count person: "+detailTourForm.getCountperson());
		 System.out.println("price 2: "+detailTourForm.getId());
		  String booking="";
		  if(session.getAttribute("id")!=null) {
			  booking=(String)session.getAttribute("id");
		 }
			 System.out.println("id: "+booking);

		 int countperson = detailTourForm.getCountperson();
		 int counttiny = detailTourForm.getCounttiny();
	        ProcessValidator  productValidator = new ProcessValidator();
	    	DetailTourForm form=tourservice.getFormcus(detailTourForm.getId());
	        productValidator.validate(customer, bindingResult);
	        if (bindingResult.hasErrors()) {
	        	formcus=true;
	        	formsub=false;
	        	formdetails=true;
	        	formtt=true;
	        	formht=false;
	            FieldError error = bindingResult.getFieldError();
				logger.debug("code: "+error.getCode()+", field: "+error.getField());
				model.addAttribute("formcust", formcus);
				model.addAttribute("formsubb", formsub);	
				model.addAttribute("formtt", formtt);
				model.addAttribute("formht", formht);
		    	model.addAttribute("forms", form);
				model.addAttribute("formdetails", formdetails);
		    	model.addAttribute("counttiny", counttiny);
				model.addAttribute("countperson", countperson);
	            return "formcustomer";
	        }
	        System.out.println(tourservice.addCustomer(customer)?"insert thanh cong":"that bai");
	        formcus=false;
        	formdetails=false;
        	formsub=true;
        	formht=true;
        	formtt=false;
        	int count=detailTourForm.getCountchild()+detailTourForm.getCountperson()+detailTourForm.getCounttiny();
        	BillCus billCus=tourservice.getBillCus();
        	billCus.setCountperson(count);
        	billCus.setPrice(Integer.parseInt(detailTourForm.getPrice2()));
        	billCus.setCustomerid(tourservice.getcusID(customer.getName()));
        	tourservice.INSERT_BILL(billCus);
        	int id=tourservice.getcusID(customer.getName());
	        System.out.println(tourservice.INSERT_BOOK(booking,id)?"insert thanh cong":"that bai");
        	model.addAttribute("formtt", formtt);
			model.addAttribute("formht", formht);
        	model.addAttribute("formcust", formcus);
			model.addAttribute("formsubb", formsub);
			model.addAttribute("formdetails", formdetails);
			model.addAttribute("formdetails", formdetails);
            return "formcustomer";
	 }
	 @RequestMapping(value="/login")
	 public String login(Model model) {
		 boolean visibility=false;
		 model.addAttribute("visibility",visibility);
		 model.addAttribute("login", new Login());
		 return "login";
	 }
	 @RequestMapping(value="/form-admin")
	 public String admin(Model model,@ModelAttribute Login login,BindingResult bindingResult) {
		 ValidatorLogin validatorLogin=new ValidatorLogin();
		 boolean visibility=false;
		 validatorLogin.validate(login, bindingResult);
		 System.out.println("Username: "+login.getUsername());
		 if(bindingResult.hasErrors()) {
			 visibility=true;
			 FieldError error = bindingResult.getFieldError();
				logger.debug("code: "+error.getCode()+", field: "+error.getField());
			 model.addAttribute("visibility",visibility);
			return "login";
		 }
		 visibility=false;
		 model.addAttribute("visibility",visibility);
		 model.addAttribute("login", new Login());
		 return "home";
	 }
}
