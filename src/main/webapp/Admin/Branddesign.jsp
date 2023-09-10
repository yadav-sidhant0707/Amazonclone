<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">




 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Brand | amazon</title>
    <link href="../Eshopper/css/bootstrap.min.css" rel="stylesheet">
    <link href="../Eshopper/css/font-awesome.min.css" rel="stylesheet">
    <link href="../Eshopper/css/prettyPhoto.css" rel="stylesheet">
    <link href="../Eshopper/css/price-range.css" rel="stylesheet">
    <link href="../Eshopper/css/animate.css" rel="stylesheet">
	<link href="../Eshopper/css/main.css" rel="stylesheet">
	<link href="../Eshopper/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

<title>brand </title>
<script type="text/javascript">

	function myfunction()
	{
		var a=document.getElementById("username").value;
		var b=document.getElementById("bid").value;
		
		
		

		if(b=="")
		{


			document.getElementById("msg1").innerHTML="*** Please fill Brand ID";
			return false;
		}
			
		
	
		
		
		
		
		if(a=="")
		{


			document.getElementById("msg").innerHTML="*** Please fill username";
			return false;
		}
		
		
		
		
		if((a.length < 3) || (a.length > 20))
		{
			document.getElementById("msg").innerHTML="**** BrandName must be between  3-20 Character";
			return false;
		}
		
		if(!isNaN(a))
		{
			
			
			document.getElementById("msg").innerHTML="*** Please Enter only character ";
			return false;
		}

}

	</script>

</head>
<body>


<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="../Eshopper/js/index.html"><img src="../Eshopper/images/home/logo1.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								
								<ul class="dropdown-menu">
									
								</ul>
							</div>
							
							<div class="btn-group">
													</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								
									<li><a href="http://localhost:8080/Amazon/Eshopper/index.html" class="active">Home</a></li>
									<li><a href="http://localhost:8080/Amazon/Dashboard/AdminDashboard.html" class="active">Dashboard</a></li>
									<li><a href="http://localhost:8080/Amazon/Eshopper/index.html" class="active">Logout</a></li>
								
							
							
									
                                </li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
					
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	 
	 <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">    			   			
					<h2 class="title text-center">Brand  </h2>    			 
				</div>			 		
			</div>






	<%! String brandId="",brandNm=""; ResultSet rs; %>
 <%!  public int GetNewId()throws SQLException,ClassNotFoundException
    {
        
      
		 Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");
			Statement st = con.createStatement();
			

   
     int maxid=0;
     st=con.createStatement();
     rs=st.executeQuery("select max(brandid) from Brand" );
     if(rs.next())
     {
        maxid=rs.getInt(1);
        maxid=maxid+1;
     }
     return (maxid);
    }  %>
	
	

<%
    boolean flag=true;
    if(request.getQueryString()!=null)
  {
	flag=false;

	brandId = request.getParameter("t1");
	brandNm = request.getParameter("t2");

  }
    else
    {
    	brandId=String.valueOf(GetNewId());
         
    	
    	
    }
    
   
%>
	

	<form action="Brandcode.jsp" method="Post"     onsubmit=" return myfunction()">

            <div class="form-group col-md-12">
		<input type="number" name="t1" id="bid"    class="form-control"  placeholder="Brand ID" value=<%=brandId%>><br>
		<span id="msg1"  style="color: red"></span>
		</div>
		<br> <br>
		<div class="form-group col-md-12">
		<input type="text" name="t2" id="username"   class="form-control"   placeholder="Brand Name:" value=<%=brandNm%>>
		<br>
	<span id="msg"  style="color: red"></span>
	</div>
	<br> <br>
		
		
		<%
				  if(flag==true)
				  {
				%>
			
				<div class="form-group col-md-3">
				<input type="submit" value="Insert"   class="btn btn-primary pull-rightc center"  name="b1">
				</div>
				<div class="form-group col-md-3">
				
				<input type="submit" value="Update"   class="btn btn-primary pull-rightc center"   disabled name="b1">
				</div>
				<div class="form-group col-md-3">
				<input type="submit" value="Delete"   class="btn btn-primary pull-rightc center"  disabled name="b1">
				</div>
				
				<br><br><br><br>
			  
			   <% 
				  }
				
			   else
			   {
			   
			   %>
			  <div class="form-group col-md-3">
			     <input type="submit" value="Insert"    class="btn btn-primary pull-rightc center"  disabled name="b1">
			   </div>
			    
			    <div class="form-group col-md-3">
				<input type="submit" value="Update"   class="btn btn-primary pull-rightc center" name="b1">
				</div>
				
				<div class="form-group col-md-3">
				<input type="submit" value="Delete"  class="btn btn-primary pull-rightc center"   name="b1">
				</div>
				<br><br><br><br>
			 
			  <% 
			   }
		       %>
		       
		       
		       
		       
		       
		       
 <script type="text/javascript">

function myfunction()
{
	{
		var a=document.getElementById("username").value;

		if(a=="")
		{


			document.getElementById("msg").innerHTML="*** Please fill username";
			return false;


		}
}




</script>



    </form><br><br>
    
    
      <script src="jquery.js"></script>
	<script src="bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="gmaps.js"></script>
	<script src="contact.js"></script>
	<script src="price-range.js"></script>
    <script src="jquery.scrollUp.min.js"></script>
    <script src="jquery.prettyPhoto.js"></script>
    <script src="main.js"></script>
      
	
	
<% 
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");
		Statement st = con.createStatement();
		 rs = st.executeQuery("select * from  Brand");
		out.println("<table border='3px;' class='table' >");
		out.println("<tr><th>Brand ID</th><th>Brand Name</th><th>Select</th></tr>");

		while (rs.next()) {

			out.println(
			"<tr><th>" + rs.getInt(1) + "</th><th>" + rs.getString(2) + "</th><th><a href='Branddesign.jsp?t1="
					+ rs.getInt(1) + "&t2=" + rs.getString(2) + "'>Select</a></th></tr>");

		}

	}

	catch (Exception e) {

		out.println(e);

	}
%>



</body>
</html>