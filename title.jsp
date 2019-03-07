<%-- 
    Document   : dExplore
    Created on : Jul 4, 2017, 4:06:01 PM
    Author     : PRAGYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
        <title>JSP Page</title>
    </head>
     <body style="background-color:" onload="setInterval('demo()',2000)">
       <div class="container-fluid" style="background-color:orange;">
       <div class="row">
       <div class="col-12" style="background-colour:#E6E6FA ;colour:orange;padding:0px;">  
             <h1 ><img src="logo1.png"/>
	   	   <big>PustaKalay</big><small style="color:green">.com</small></h1>
       </div>
       </div>
       </div>
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
            <li class="active"><a href="puser.jsp">Home</a></li>			
            <li class="active"><a href="about_1.jsp">AboutUs</a></li>
		    <li class="active"><a href="contact_1.jsp">ContactUs</a></li>		
            <li> <img src="a.jpg" class="img-circle" alt="Cinque Terre" width="1px" height="1px"> </li>
			<li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Welcome Guest <span class="caret"></span></a>
            <ul class="dropdown-menu">                        
            <li><a href="index.jsp">Logout</a></li>
            </ul>
            </li>
            </ul>
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
        </nav>

		<div class="row">
                    <div class="col-md-1"></div>  
                      <div class="col-md-5">		     
                    <%
                            
            Connection con=null; 
            Statement st; 
            ResultSet rs;    
            String id=request.getParameter("id");
            
            try{  
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pro", "root", "");
                st=con.createStatement(); 
                 
          rs=st.executeQuery("select * from book where id='"+id+"'");  
          rs.next();
      out.println("<h4><img src="+rs.getString(1)+" alt='Northern Lights' width='400' height='400'></h4>");
          %> 
          </div> 
          <div class="col-md-6">
          <%
            out.println("<h1>"+rs.getString(2)+"</h1>");
            out.println("<h4>published by:"+rs.getString(3)+"</h4>");
            out.println("<h3><i>"+rs.getString(4)+"</i></h3>"); 
            %>  
          </div>
            <div> 
               
                <% 
               out.println("<a href="+rs.getString(5)+" class='btn btn-success'>READ BOOK</a>");
                %>
            </div>
 
            <%
            } 
            catch(Exception e){
            out.println(e.toString());
            }
                    
                    %>
                
		</div>
		
</body>
</html>
