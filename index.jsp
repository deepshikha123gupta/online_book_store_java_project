<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>home</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="script/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  
  <script language="javascript">
	         arr=new Array("quotesMaker.jpg","b.jpg","c.jpg");
	         var i=0;
	         function demo()
	         {
		        document.getElementById("im").src=arr[i];
		        if(i==2)
			    i=0;
		        else
			    ++i;
	         }
      </script>
   
	  <style>#rcorners1 
	         {
                border-radius: 10px;
                background: gray;
                width: 198px;
                height: 30px;    
             }
	  </style>
      <style type="text/css">
            #search 
			{
                float: left;
                margin-top: 20px;
                width: 250px;
            }
           .search 
		    {
                padding: 5px 0;
                width: 230px;
                height: 40px;
                position: relative;
                left: 10px;
                float: left;
                line-height: 22px;
            }
            .search input 
			{
                position: absolute;
                width: 0px;
                float: Left;
                margin-left: 210px;
                -webkit-transition: all 0.7s ease-in-out;
                -moz-transition: all 0.7s ease-in-out;
                -o-transition: all 0.7s ease-in-out;
                transition: all 0.7s ease-in-out;
                height: 40px;
                line-height: 30px;
                padding: 0 2px 0 2px;
                border-radius:10px;
            }
            .search:hover input, .search input:focus 
			{
                width: 200px;
                margin-left: 0px;
            }
            .btn 
			{
                height: 40px;
                position: absolute;
                right: 0;
                top: 5px;
                border-radius:10px;
	            width:100px;
            }
      </style>
	  <script type="text/javascript">
            window.alert = function(){};
            var defaultCSS = document.getElementById('bootstrap-css');
            function changeCSS(css)
			{
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
            }
            $( document ).ready(function() 
			{
            var iframe_height = parseInt($('html').height()); 
            window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
            });
      </script>
      <style>
            div.gallery 
			{
                  margin: 5px;
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
            <span class="icon-bar"></span>
            </button>
       </div>
<!-- Collect the nav links, forms, and other content for toggling -->
       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="index.jsp">Home</a></li>
            <li class="active"><a href="about.jsp">AboutUs</a></li>
		    <li class="active"><a href="contact.jsp">ContactUs</a></li>	
                     
            <li class="active"><a href="#" data-toggle="modal" data-target="#Modal">Admin Login</a></li>                 
			<li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Welcome Guest <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li ><a href="signup.jsp">SignUp</a>  </li>
            <li>   <button type="button" class="btn btn-link"  data-toggle="modal" data-target="#myModal"> Log In</button>
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
	   	    <h4> PustaKalay<small style="color:green">.com</small></h4>  
       </div>
       <div class="modal-body">  
       <div class="row"> 
       <div class="col-md-3"></div>
       <div class="imgcontainer">
            <img src="red book closed-min-min.png" alt="Responsive image" class="img-circle" >
       </div> 
       <div class="col-md-2"></div >
       </div>
       <form method="post" action=""> 
       <div class="form-group">
            <label for="t3">Email</label> 
       <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input type="text" class="form-control" id="t1" name="t1" placeholder="email" required="">
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
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pro", "root", "");
            st=con.createStatement(); 
            rs=st.executeQuery("select * from detail where email='"+un+"' and  password='"+pwd+"'");
            if(rs.next()){  
                session.setAttribute("username", un);
            response.sendRedirect("puser.jsp");
            } 
            else{
            out.println("<script>alert('email or passowrd incorrect')</script>");
            }
            }
             
        catch(Exception f){
            out.println(f.toString());
            }
            }  
%>        
<!--jdbc end ---> 
          </form>
      </div> 
      <div class="modal-footer" >
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
      </div>
      </div>
      </div>  


<!-- Modal -->
       <div class="modal fade" id="Modal" role="dialog">
       <div class="modal-dialog">
<!-- Modal content-->
       <div class="modal-content">
       <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>        
	   	    <h4> PustaKalay<small style="color:green">.com</small></h4>  
       </div>
       <div class="modal-body">  
       <div class="row"> 
       <div class="col-md-3"></div>
       <div class="imgcontainer">
            <img src="red book closed-min-min.png" alt="Responsive image" class="img-circle" >
       </div> 
       <div class="col-md-2"></div >
       </div>
       <form method="post" action=""> 
       <div class="form-group">
            <label for="t3">Email</label> 
       <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input type="text" class="form-control" id="t1" name="t1" placeholder="email" required="">
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
            rs=st.executeQuery("select * from admin where username='"+un+"' and  password='"+pwd+"'");
            if(rs.next()){
            response.sendRedirect("admin.jsp");
            } 
            
            else{
            out.println("<script>alert('email or passowrd incorrect')</script>");
            }
            
            } 
        catch(Exception f){
            out.println(f.toString());
            }
            }  
%>        
<!--jdbc end ---> 
          </form>
      </div> 
      <div class="modal-footer" >
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
      </div>
      </div>
      </div>

	  </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
      </nav> 
        
<!-- background image--->
       <img  id="im" src="d.jpg" class="img-responsive" alt="Responsive image"  ><br>
<!--search--
	    <div class="container-fluid">
	    <div class="row">
        <div class="col-md-4"></div>   
        <div class="col-md-4">
		<div class="search">
             <input type="text" class="form-control input-sm" maxlength="64" placeholder="Search"  />
             <button type="submit" class="btn btn-primary btn-sm" >Search</button> 
        </div>
	    </div>
		</div>
        </div><br><br>  --->
<!--recent books--->
	   

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
                 
                rs=st.executeQuery(" SELECT * from book order by id desc"); 
                
                int i=0, j=0; 
                
                 while(rs.next() && j<=7){ j++;
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
        out.println("   <img src="+rs.getString(1)+" alt='Fjords' width='200' height='200' data-toggle='modal' data-target='#myModal'> ");  
        out.println(" <p align='middle'id='rcorners1'><big><big>Recent addition</big></big></p>");
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
       <div class="footer-social" style="background-color:black;height:200px;width:1300px">
            <span><h1 align="center"><font color="white">follow us on:</font>
            <a href="#"><img src='facebook.png'/></a>
            <a href="#"><img src='icon_twitter24.jpg'/></a></h1></span>
       </div>
	   </div>
	   </div>  
</div>

    </body>
</html>
