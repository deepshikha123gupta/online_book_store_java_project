<%-- 
    Document   : dropdown
    Created on : Jun 28, 2017, 9:49:25 PM
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
    <body>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
       <form method="post" action="">  
              email<input type="text" name="t1"><br>
              password<input type="password" name="t2"><br > 
              <span class="psw"> <a href="forgetpass.jsp">forgotten password?</a></span> <br>
        <input type="submit" value="bhai lag la plzz" name="l"> 
        
        <!---jdbc---->
  
        <%  
     if(request.getParameter("l")!=null){
  Connection con=null; 
      Statement st; 
ResultSet rs;   
String un=request.getParameter("t1"); 
String pwd=request.getParameter("t2");

try{ 
    int c=0;
Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pro", "root", "");
st=con.createStatement(); 
 
 rs=st.executeQuery("select * from detail where email='"+un+"' and  password='"+pwd+"'");
if(rs.next())
{
response.sendRedirect("index.jsp");
} 
else
{
if(un.equals("admin")&&pwd.equals("pragya123"))
{
response.sendRedirect("admin.jsp");
} 
else{
 out.println("<script>alert('email or passowrd incorrect')</script>");
}

}
 
} 
catch(Exception f){
out.println(f.toString());

}
}  
%>  
 
        
        
        
        
        
        
    <!--jdbc end        ---> 
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
    </body>
</html>
