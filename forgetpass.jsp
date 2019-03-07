<%-- 
    Document   : forgetpass
    Created on : Jun 28, 2017, 8:01:49 PM
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
    <body background="book.jpg"> <title>Forgot Password</title>

<div class="container">
<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-5"><br><br><br><br><br><br><br><br>
<div class="jumbotron">


<form role="form" method="get" action="">
  <div class="form-group" ><br><br>
    <label for="t1">Please enter your Email address or User Name to search for your acccount</label><br><br>
	
    <input type="text" class="form-control" id="t1" name="t1" placeholder="Enter Email address or User Name">
  </div>
   <input type="submit" class="btn btn-primary" value="Search" name="search" />
   <input type="submit" class="btn btn-default" value="Cancel" />   
   
   <% 

if(request.getParameter("search")!=null){
  Connection con=null; 
      Statement st; 
ResultSet rs;   
String email=request.getParameter("t1"); 

try{ 
   
Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pro", "root", "");
st=con.createStatement(); 
 
 rs=st.executeQuery("select * from detail where email='"+email+"'");
if(rs.next())
{
response.sendRedirect("confirmpass.jsp");
} 
else
{
out.println("<script>alert('your email id could not found!!')</script>");

}
 
} 
catch(Exception f){
out.println(f.toString());

}
}  

       
       %>
   
   
   </form>
   </div> 
   </div> 
   <div class="col-md-10"></div> 
   </div> 
   </div>

 </body>

</html>
