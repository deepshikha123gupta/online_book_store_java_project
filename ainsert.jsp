<%-- 
    Document   : ainsert
    Created on : Jul 3, 2017, 6:43:35 PM
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
            </li>
            </ul>
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
        </nav>
<!---Insert books---->
<div class="container">
<div class="row">
<div class="col-md-3 ">

</div>
<div class="col-md-6 ">
<form role="form">
<table class="table">
<tr>
	<td>Category</td>
	<td>
	<select  class="form-control" name="t6" type="text">
		<option value="adventure">Adventure</option>
		<option value="fiction">Fiction</option>
		<option value="horror">Horror</option>
                <option value="kids">Kids</option>
		</select>
	</td>
</tr>
<tr>
	<td>Image</td>
	<td><input type="text" name="t1" class="form-control" /></td>
</tr>

<tr>
	<td>Title</td>
	<td><input type="text" name="t2" class="form-control" /></td>
</tr>
<tr>
	<td>Author</td>
	<td><input type="text" name="t3" class="form-control" /></td>
</tr>
<tr>
	<td>description</td>
	<td><input type="text" name="t4" class="form-control" /></td>
</tr>  
<tr>
	<td>PDF</td>
	<td><input type="text" name="t5" class="form-control" /></td>
</tr>

<tr>
	<td></td>
	<td><input type="submit" value="Insert" class="btn btn-success" name="btn_reg" />
</tr>
</table>
<%
if(request.getParameter("btn_reg")!=null)
{
	String title,author,description,img,pdf,category;
        img=request.getParameter("t1");
	title=request.getParameter("t2");
	author=request.getParameter("t3");
	description=request.getParameter("t4"); 
        pdf=request.getParameter("t5");
        category=request.getParameter("t6");
	try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pro","root","");
		Statement st=con.createStatement();
 String sql="insert into book values('"+img+"','"+title+"','"+author+"','"+description+"','"+pdf+"','"+category+"',NULL)";
		int res=st.executeUpdate(sql); 
                out.println(res);
		if(res!=0)
			out.println("<br>Record Inserted");
		else
			out.println("<br>Record Not Inserted");
	}catch(Exception e)
	{
		out.println(e.toString());
	}
}
%>

</form>
</div>
<div class="col-md-3 ">

</div>
</div>
</div>

    </body>
</html>
