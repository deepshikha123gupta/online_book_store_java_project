<%-- 
    Document   : aedit
    Created on : Jul 3, 2017, 6:57:38 PM
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
            <li class="active"><a href="admin.jsp">Home</a></li>
            <li class="active"><a href="ainsert.jsp">Insert</a></li>
		    <li class="active"><a href="aupdate.jsp">Update</a></li>		
             <li class="active"><a href="index.jsp">Logout</a></li>
            </ul>
           
            
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
        </nav>
<!---edit books---->		
<div class="container">
<div class="row">
<div class="col-md-2 ">
</div>
<div class="col-md-8 ">
<%
	String id=request.getParameter("id");
	try{
	Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pro","root","");
	Statement st=con.createStatement();
	String sql="select *  from book where id='"+id+"'";
	ResultSet rs=st.executeQuery(sql);
	rs.next();
	%>
	<form action="" method="post"  role="form" >
	<table class="table">  
            <tr>
		<td>ID</td>
		<td><input type="text" name="t1" value="<%=rs.getString(7) %>" readonly="true" /></td>
	</tr>
	<tr>
		<td>Image</td>
		<td><input type="text" name="t2" value="<%=rs.getString(1) %>"  /></td>
	</tr>  
        <tr>
		<td>Title</td>
		<td><input type="text" name="t3" value="<%=rs.getString(2) %>"  /></td>
	</tr>
        
	<tr>
		<td>Author</td>
		<td><input type="text" name="t4" value="<%=rs.getString(3) %>" /></td>
	</tr>	
	<tr>
		<td>Description</td>
		<td><input type="text" name="t5" value="<%=rs.getString(4) %>" /></td>
	</tr>   
        
        <tr>
		<td>pdf</td>
		<td><input type="text" name="t6" value="<%=rs.getString(5) %>" /></td>
	</tr>    
        
         <tr>
		<td>CATEGORY</td>
		<td><input type="text" name="t7" value="<%=rs.getString(6) %>" /></td>
	</tr>
	
        
	<tr>
		<td></td>
		<td><input type="submit" value="Update" name="btn_update" class="btn btn-success" /></td>
	</tr>
	<tr>
	<td cospan="2">
	<%
	if(request.getParameter("btn_update")!=null)
	{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pro","root","");
		st=con.createStatement();
		String idd=request.getParameter("t1");
                String img=request.getParameter("t2");
                String title=request.getParameter("t3");
                String author=request.getParameter("t4");
		String description=request.getParameter("t5");
		String pdf=request.getParameter("t6");
                String category=request.getParameter("t7");
String sq="update book set img='"+img+"',title='"+title+"',author='"+author+"',description='"+description+"',pdf='"+pdf+"',category='"+category+"' where id='"+idd+"'";
		int res=st.executeUpdate(sq);
		if(res!=0) 
                    out.println(res);
			response.sendRedirect("aupdate.jsp");
	}		
	%>
	</td>
	</tr> 
        </table>
	</form>			
	<%
	}catch(Exception e)
	{
		out.println(e.toString());
	}
%>
</div>

<div class="col-md-2 ">
</div>

</div>
</div>

    </body>
</html>
