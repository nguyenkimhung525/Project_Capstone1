<%@tag import="app.com.entities.ViewMap"%>
<%@tag import="app.com.entities.Location"%>
<%@tag import="java.util.List"%>
<%@tag import="app.com.dao.TourDAO"%>
<%@ attribute name="lat" required="true" rtexprvalue="true"
	type="java.lang.Double"%>
<%@ attribute name="var" rtexprvalue="false" required="true"%>
<%@ variable name-from-attribute="var" alias="current"
	variable-class="java.lang.String" scope="NESTED"%>

<%
  	TourDAO dao=new TourDAO();
  	List<ViewMap> view=dao.getimageviewmap(lat);
  	request.setAttribute(var, view);
   System.out.println(lat);
  %>