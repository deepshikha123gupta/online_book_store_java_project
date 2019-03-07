<%-- 
    Document   : contact
    Created on : Jun 29, 2017, 4:16:59 PM
    Author     : PRAGYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title> 
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
    </head>
     <body background="11.jpg">
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
            <li ><a href="index.jsp">Log Out</a> <br></li>
      
            </li>
            </ul>    
            </li>
            </ul> 
                  
           
           
           <!----   --->
		  </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
        </nav>     

<br><br><br>
<h1><i><center>Contact Us</i></h1>
<br>
<form>
<div class="container">
<div class="row">
 <p align="center">
 <h3>  ADDRESS</h3>: UNITED COLLEGE OF ENGINEERING AND RESEARCH 
               NAINI ALLAHABAD U.P.(486335)<br>
 <h3>     EMAIL </h3> :   unitednoida@gmail.com
                unitedallahabad@gmail.com<br>
 <h3>PHONE </h3> :987654310,<br>8953111607,<br>9696895570
 </p>  
</div>
</div>
              
     
     
     
     
 <!-- <div class="form-group">
<div class="form-group col-lg-200">
    <label for="exampleInputText" width="600">What can we help you with?</label>
    <input type="text" class="form-control" id="exampleInputText" placeholder="enter the topic">
  </div>
</div>
  <div class="form-group">
    <label for="exampleInputEmail">Your Email</label>
    <input type="email" class="form-control" id="exampleInputEmail" placeholder="your email">
  </div>
<div class="form-group">
<label for="exampleInputText">Please describe your problem</label>
<textarea class="form-control" rows="3"></textarea>
</div>

<button type="submit" class="btn btn-primary">Submit</button>
</div>
</div>
</div>
</form> -->
    </body>
</html>
