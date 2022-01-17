<%@page import="java.util.List"%>
<%@page import="com.entities.Note" %>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session" %>
<%@page import="com.helper.FactoryProvider" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.entities.Note" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show notes:Note taker</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
 
  <div class="container" >
    <%@include file="navbar.jsp" %>
    <br>
    <h1>show notes</h1>
    <div class="row">
    <div class="col-12">
    
    
    
    </div>
    </div>
    <%
    
    Session s= FactoryProvider.getFactory().openSession();
   Query q= s.createQuery("from Note");
   List<Note> l=q.list();
   for(Note n:l)
   {
	   %>
	   
	   <div class="card">
    <div class="card-body">
    <h5 class="card-title"><%=n.getTitle() %></h5>
    <p class="card-text"><%=n.getContent() %>
    </p>
	<div class="container text center mx-2">
	    <a href="DeleteServlet?note_id=<%= n.getId() %>" class="btn btn-danger">Delete</a>
	    <a href="Edit.jsp?note_id=<%= n.getId()%>" class="btn btn-primary">Update</a>
	
	</div>
  </div>
</div>
	   
	   <% 
	      }
   s.close();
   
   %>
    </div>
</body>
</html>