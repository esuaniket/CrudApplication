<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="com.conn.DBConnect" %>
      <%@page import ="com.dao.StudentDAO" %>
     <%@page import="com.entity.Student" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_css.jsp" %>
</head>
<body style="background-color:gray">

<%@include file="navbar.jsp" %>

<div class="container p-4">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">

<div style="background-color:orange">

<p class="fs-3 text-center">Edit Student</p>

<%
int id=Integer.parseInt(request.getParameter("id"));
StudentDAO dao=new StudentDAO(DBConnect.getConn());

Student s = dao.getStudentById(id);

%>

<form action="update" method="post">


<div class="mb-3">
 <label class="form-label">FullName</label><input type="text" value="<%=s.getFullName()%>"name="name" class="form-control" > 
     
   </div> 
   
    
<div class="mb-3">
    <label class="form-label">Date of Birth</label><input type="date" value=<%=s.getDob() %> name="dob" class="form-control" >
   </div> 
  
<div class="mb-3">
    <label class="form-label">Address</label><input type="text" value="<%=s.getAddress()%>"name="address" class="form-control" > 
   </div>
  
 

  <div class="mb-3">
   <label class="form-label">Qualification</label><input value="<%=s.getQualification()%>"name="qualification" type="text" class="form-control" > 
   </div>
  
<div class="mb-3">
    <label class="form-label">Email</label><input type="email" value="<%=s.getEmail()%>" name="email"class="form-control" > 
    
   </div>
  
  <input type="hidden" name="id" value="<%=s.getId()%>">
  
   
  
  <button type="submit" class="btn btn-primary col-md-12">Update</button>
</form>


</div>

</div>


</div>




</div>



</div>



</body>
</html>