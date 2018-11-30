<%@attribute name="lat" type="java.lang.Double" required="true" rtexprvalue="true"%>
<%@attribute name="var" rtexprvalue="false" required="true"%>
<%@variable name-from-attribute="var"  alias="current" scope="NESTED" variable-class="java.lang.String"%>
<%@tag import="app.com.dao.TourDAO"%>
<%@tag import="app.com.entities.DetailTour"%>
<%@tag import="app.com.entities.DetailTourForm"%>
<%@tag import="java.util.List"%>
<%
	TourDAO dao=new TourDAO();
	List<DetailTour> detailTours = dao.detailTours(lat);
	DetailTourForm detailTourForm = dao.detailTourForm(lat);
	request.setAttribute("detailTours", detailTours);
	request.setAttribute("form", detailTourForm);
%>