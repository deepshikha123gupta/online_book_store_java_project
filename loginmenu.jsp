<%-- 
    Document   : loginmenu
    Created on : Jul 5, 2017, 1:42:29 PM
    Author     : PRAGYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
             <ul>
               <div class="nav navbar-nav navbar">
                <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CATEGORIES <span class="caret"></span></a>
              <ul class="dropdown-menu">
            <li><a href="category1.jsp">ADVENTURE</a></li>
            <li><a href="category2.jsp">FICTION</a></li>
            <li><a href="category3.jsp">HORROR</a></li>
            <li><a href="category4.jsp">KIDS</a></li>
         
              </ul>
                 </div>
          <div class="nav navbar-nav navbar-right">
           
            <li class="active"><a href="puser.jsp">Home</a></li>
			<li class="active"><a href="about.jsp">AboutUs</a></li>
		    <li class="active"><a href="contact.jsp">ContactUs</a></li>		
            <li> <img src="a.jpg" class="img-circle" alt="Cinque Terre" width="1px" height="1px"> </li>
			<li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Welcome Guest <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li><a href="index.jsp">Logout</a></li>
            </ul>
            </li>
            </div>
            </ul>
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
        </nav>
 
        
    </body>
</html>
