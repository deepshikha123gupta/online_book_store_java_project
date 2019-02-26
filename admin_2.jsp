<%-- 
    Document   : admin
    Created on : Jun 29, 2017, 12:45:50 AM
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
            <li class="active"><a href="#">Home</a></li>
            <li class="active"><a href="ainsert.jsp">Insert</a></li>
		    <li class="active"><a href="aupdate.jsp">Update</a></li>		
             <li class="active"><a href="index.jsp">Logout</a></li>
            </ul>
            </li>
            </ul>
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
        </nav>
<!--table for user---->
<h1 align=center>USER INFORMATION</h1><hr>
<div class="container">
<div class="row">
<div class="col-md-3 ">
</div>
<div class="col-md-6 ">
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pro","root","");
		Statement st=con.createStatement();
		String sql="select *  from detail";
		ResultSet rs=st.executeQuery(sql);
		out.println("<table class='table table-hover'>");	
		out.println("<tr><td>Name</td>");
		out.println("<td>Email</td>");
		out.println("<td>Username</td>");
		out.println("<td>Password</td>");
		out.println("<td></td>");
		while(rs.next())
		{
			String gid=rs.getString(1);
			out.println("<tr><td>"+gid+"</td>");
			out.println("<td>"+rs.getString(2)+"</td>");
			out.println("<td>"+rs.getString(3)+"</td>");
			out.println("<td>"+rs.getString(4)+"</td>");	
			out.println("</tr>");		
		}	
		out.println("</table>");
	}catch(Exception e)
	{
		out.println(e.toString());
	}
%>
</div>
<div class="col-md-3 ">
</div>
</div>
</div>
<!---table for admin--->
<h1 align=center>ADMIN INFORMATION</h1><hr>
<div class="container">
<div class="row">
<div class="col-md-3 ">
</div>
<div class="col-md-6 ">
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pro","root","");
		Statement st=con.createStatement();
		String sql="select *  from admin";
		ResultSet rs=st.executeQuery(sql);
		out.println("<table class='table table-hover'>");	
		out.println("<tr><td>Admin</td>");		
		out.println("<td>Password</td>");
		while(rs.next())
		{
			String gid=rs.getString(1);
			out.println("<tr><td>"+gid+"</td>");
			out.println("<td>"+rs.getString(2)+"</td>");
			out.println("</tr>");		
		}	
		out.println("</table>");
	}catch(Exception e)
	{
		out.println(e.toString());
	}
%>
</div>
<div class="col-md-3 ">
</div>
</div>
</div>


        
        
        
    </body>
</html>
