<%-- 
    Document   : navbar
    Created on : Jun 29, 2017, 9:30:34 AM
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
<!-- navbar---->
       <nav class="navbar navbar-inverse">
       <div class="container-fluid" >
<!-- Brand and toggle get grouped for better mobile display -->
       <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
       </div>
<!-- Collect the nav links, forms, and other content for toggling -->
       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="#">Home</a></li>
            <li class="active"><a href="#">AboutUs</a></li>
		    <li class="active"><a href="#">ContactUs</a></li>		
            <li> <img src="a.jpg" class="img-circle" alt="Cinque Terre" width="1px" height="1px"> </li>
			<li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Welcome Guest <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li ><a href="signup.jsp">SignUp</a>  </li>
            <li> <button type="button"  data-toggle="modal" data-target="#myModal">
  Log In
</button>  
            </li>
            </ul>    
            </li>
            </ul> 
                  
           
           
             <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
           
	   	  <h4>  PustaKalay<small style="color:green">.com</small></h4>

        </div>
        <div class="modal-body">  
            <div class="row"> 
                <div class="col-md-3">
                    </div >
            <div class="imgcontainer">
            <img src="red book closed-min-min.png" alt="Responsive image" class="img-circle" >
            </div> 
                      <div class="col-md-2">
                    </div >
            
            </div>
            <form method="post" action=""> 
             
              <div class="form-group">
          <label for="t3">Username</label> 
          <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input type="text" class="form-control" id="t1" name="t1" placeholder="username" required="">
  </div> 
          </div>
             
  <div class="form-group">
    <label for="t4">Password</label> 
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
  <input type="password" class="form-control" id="t2" name="t2" placeholder="Password" required > 
  </div>  
  </div> 
                 <span class="psw"> <a href="forgetpass.jsp">forgotten password?</a></span> <br>
             
            <input type="submit" value="login" class="btn btn-info btn-md" name="l">  
                  
   
              
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
response.sendRedirect("puser.jsp");
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
      <div class="modal-footer" >
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>


                
               <!-- Button trigger modal -->

             
           

           <!----   --->
		  </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
        </nav>     



    </body>
</html>
