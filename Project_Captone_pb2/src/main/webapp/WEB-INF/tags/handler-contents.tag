<%@tag import="app.com.dao.TourDAO"%>
<%@tag import="app.com.entities.ViewMap"%>
<%@attribute name="lat" type="java.lang.Double" required="true" rtexprvalue="true"%>
<%@attribute name="var" rtexprvalue="false" required="true"%>
<%@variable name-from-attribute="var"  alias="current" scope="NESTED" variable-class="java.lang.String"%>
<%
	TourDAO dao=new TourDAO();
	ViewMap viewMap = dao.listcontent(lat);
	System.out.println("LAT: "+lat);
	request.setAttribute(var, viewMap);
%>