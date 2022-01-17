<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Page</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
	 <div class="container-fluid p-0 m-0" >
    <%@include file="navbar.jsp" %>
    <br>
  <h1>This is Edit page</h1>
  <%
  int noteid=Integer.parseInt(request.getParameter("note_id"));
  Session s=FactoryProvider.getFactory().openSession();
  
  Note n=(Note)s.get(Note.class,noteid);
  
  %>
  <form action="AddNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note title</label>
    <input name="titlename"
    required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here">
   
  </div>
  <div class="form-group">
    <label for="noteContent">Note Content</label>
    <textarea name="contentname"
     required id="note-content" 
     placeholder="enter your notes here!" 
     class="form-control" 
    style="height:300px"></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary">AddNotes</button>
</form>
  
  
  
    </div>
</body>
</html>