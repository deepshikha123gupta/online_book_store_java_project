<%-- 
    Document   : dynamicAd
    Created on : Jul 4, 2017, 10:40:53 AM
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
   <style>#rcorners1
        {
            border-radius: 10px;
            background: gray;

            width: 198px;
            height: 30px;    
        }
        </style>
        
        <style>
           div.gallery 
           {
                margin: 10px;
                border: 1px solid black;
                float: left;
                width: 200px;
                height: 300px;
           }

           div.gallery:hover 
           {
                 border: 3px solid white;
           }

           div.gallery img
           {
                width: 100%;
                height: 200px;
           }

            div.desc
           {
                padding: 15px;
                text-align: center;

           }
          </style>
   
    </head>
     <div class="container-fluid" style="background-color:orange;">
       <div class="row">
       <div class="col-12" style="background-colour:#E6E6FA ;colour:orange;padding:0px;">  
           <h1><img src="logo1.png"/>
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
            
           <ul>
                 <div class="nav navbar-nav navbar">
                <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CATEGORIES <span class="caret"></span></a>
              <ul class="dropdown-menu">
            <li><a href="adventure.jsp">ADVENTURE</a></li>
            <li><a href="fiction.jsp">FICTION</a></li>
            <li><a href="horror.jsp">HORROR</a></li>
            <li><a href="kids.jsp">KIDS</a></li>
         
              </ul>
                 </div>
          <div class="nav navbar-nav navbar-right">
           
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
            </div>
            </ul>
           
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
        </nav> 
     
           <h1 align="middle">ADVENTURE BOOKS</h1>
   <!-- background image--->
                     <div class="container-fluid" style="height:350px">
                     <div class=" row">
                      <!--<div class="col-md-1"></div>  -->                
     <%
                            
            Connection con=null; 
            Statement st; 
            ResultSet rs;   
            try{  
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pro", "root", "");
                st=con.createStatement(); 
                 
                rs=st.executeQuery("select * from book where category='adventure'"); 
                
                int i=0; 
                
                 while(rs.next()){ 
              if(i==4 ){
              i=0;
             %> 
                     </div>
             <div class="row">
             <%
              }
             %>
             <div class="col-md-2">
                     <div class="gallery ">                                 
                         <%    
                  String gid=rs.getString(7); 
                 
        out.println("  <a href='title.jsp?id="+gid+"'> <img src="+rs.getString(1)+" alt='Fjords' width='200' height='200'></a> "); 
            out.println(" <div class='desc'>PUBLISHED BY:"+rs.getString(2)+"</div>"); 
                   i++;
          %> 
                     </div>
                     </div>
            
                     <div class="col-md-1"></div> 
               <%
            }  
         
           } 
              catch(Exception e){
              out.println(e.toString());
                                 }
                  %> 
              </div>  <br>
               
          
                   
  

<!---footer-->
       <div class="container-fluid"><div class="row">
       <div class="footer-social" style="background-color:black;height:200px;">
            <span><h1 align="center"><font color="white">follow us on:</font>
            <a href="#"><img src='facebook.png'/></a>
            <a href="#"><img src='icon_twitter24.jpg'/></a></h1></span>
       </div>
	   </div>
	   </div>

   
   
	   </body>

</html>
