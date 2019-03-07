<%-- 
    Document   : confirmpass
    Created on : Jun 28, 2017, 9:21:59 PM
    Author     : PRAGYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
    </head>
    <body background="book.jpg" ><title>Change Password</title>

<div class="container">
<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-5"><br><br><br><br><br><br><br><br><br>
<div class="jumbotron">


<form role="form" method="get" action=""> 
    
     <div class="form-group" ><br>
    <label for="t2">Enter Your UserName </label><br>
    <input type="password" class="form-control" id="t1" name="t1" placeholder="username">
  </div>
 
    
    
  <div class="form-group" >
    <label for="t1">Please enter your New Password</label><br>
	
    <input type="password" class="form-control" id="t1" name="t1" placeholder="Password">
  </div>
  <form role="form" method="get" action="">
  <div class="form-group" ><br>
    <label for="t2">Confirm New Password </label><br>
	
    <input type="password" class="form-control" id="t2" name="t2" placeholder="Password">
  </div>
       <div class="checkbox">
      <label>
        <input type="checkbox"> Keep me Logged in
      </label>
    </div>
   <input type="submit" class="btn btn-primary" value="Submit" name="l"/>  
   <!----jdbc start--->
   
   <%  
if(request.getParameter("l")!=null){
  Connection con=null; 
      Statement st; 
int rs;   
String un=request.getParameter("t1"); 
String pwd=request.getParameter("t2");

try{ 
    int c=0;
Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pro", "root", "");
st=con.createStatement(); 
 
 rs=st.executeUpdate("update detail set password='"+pwd+"' where email='"+un+"'");
if(rs!=0)
{
out.println("<script>alert('password updated!!')</script>");
} 
else{
out.println("<script>alert('password dont match')</script>");
}
 
} 
catch(Exception f){
out.println(f.toString());

}
}  


       %>
   
   
  <!-- ---end jdbc--->
   </form>
   </div> 
   </div> 
   <div class="col-md-10"></div> 
   </div> 
   </div>
</body>

</html>
