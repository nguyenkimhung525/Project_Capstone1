<%@tag import="app.com.entities.ViewMap"%>
<%@tag import="app.com.entities.Location"%>
<%@tag import="java.util.List"%>
<%@tag import="app.com.dao.TourDAO"%>
<%@ attribute name="lng" required="true" rtexprvalue="true"
	type="java.lang.Double"%>
<%@ attribute name="var" rtexprvalue="false" required="true"%>
<%@ variable name-from-attribute="var" alias="current"
	variable-class="java.lang.String" scope="NESTED"%>

<%
  	TourDAO dao=new TourDAO();
  	List<ViewMap> list=dao.getimageviewmap(lng);
  	request.setAttribute(var, list);
   System.out.println(lng);
  %>