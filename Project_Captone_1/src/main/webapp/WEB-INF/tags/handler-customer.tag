<%@tag import="app.com.entities.Customer"%>
<%@tag import="app.com.dao.TourDAO"%>
<%@attribute name="name" type="java.lang.String" required="true" rtexprvalue="true"%>
<%@attribute name="email" type="java.lang.String" required="true" rtexprvalue="true"%>
<%@attribute name="phone" type="java.lang.String" required="true" rtexprvalue="true"%>
<%@attribute name="state" type="java.lang.String" required="true" rtexprvalue="true"%>
<%@attribute name="var" rtexprvalue="false" required="true"%>
<%@variable name-from-attribute="var"  alias="current" scope="NESTED" variable-class="java.lang.String"%>

<%
	TourDAO dao=new TourDAO();
	Customer customer=new Customer();
	customer.setName(name);
	System.out.print("name: "+name+phone);
	customer.setEmail(email);
	customer.setPhone(phone);
	boolean checked=false;
			checked=dao.INSERT_CUS(customer);
			request.setAttribute(var, checked);
%>