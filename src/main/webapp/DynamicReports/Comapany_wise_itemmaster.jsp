<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>company Wise Item | amazon</title>
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
					<h2 class="title text-center">Company List  </h2>    			 
				</div>			 		
			</div>

<form>

					<% 
					Class.forName("com.mysql.cj.jdbc.Driver");
				  Connection con=DriverManager.getConnection
				 ("jdbc:mysql://localhost:3306/AmazonDB","root","Sidhant#07");
					%>						  
				
				<% 
				  Statement st =con.createStatement();
				PreparedStatement ps=con.prepareStatement("select * from company");
				ResultSet rs=ps.executeQuery();
				
				%>
				
				<p>Select company name:
				<select name="cid">
				<%
				while(rs.next())
				{
				  
				   String compNm=rs.getString(2);
				   String compId=rs.getString(1);
				%> 
				<option value=<%=compId%> ><%=compNm%></option>
				
				<%
				}
				%>
				</select>
				<br>
				 
	    <div class="form-group col-md-3">
				<input type="submit" value="SHow"        class="btn btn-primary pull-rightc center"  name="b1"><br><br> 
				</div>			
				
				</p>








				<%

					if(request.getParameter("b1")!=null)
					{

						 try
							{	
							   
							     rs=st.executeQuery("SELECT itemmaster.itemId,itemmaster.itemNm,itemmaster.itemRate,itemmaster.itemStock,itemmaster.itemDescr,itemmaster.itemPhoto,company.compNm,itemcat.catNm,brand.brandNm FROM itemmaster INNER JOIN company ON itemmaster.compId = company.compId INNER JOIN itemcat ON itemmaster.catId = itemcat.catId INNER JOIN brand ON itemmaster.brandId =brand.brandId and  itemmaster.itemId="+request.getParameter("cid"));


							     out.println("<table border='3px;' class='table' >");
									out.println("<tr><th>Item ID</th><th>Item Name</th><th>Item Rate</th><th>Item Stock</th><th>Item Description</th><th>Item Photo</th><th>  Category Name</th><th>Company Name</th><th>Brand Name</th></tr>");

									while (rs.next()) {

										out.println(
										"<tr><th>" + rs.getInt(1) + "</th><th>" + rs.getString(2) +"</th><th>"+rs.getString(3)+"</th><th>"+rs.getString(4)+"</th><th>"+rs.getString(5)+"</th><th>"+rs.getString(6)+"</th><th>"+rs.getString(7)+"</th><th>"+rs.getString(8)+"</th><th>"+rs.getString(9)+"</th></tr>");

									}
									
									
							}
						 
                       catch(Exception ex){
                    	   
                    	   out.print(ex);
                       }
						   
						   
						   
					}
					
					



			%>
</form>

 <script src="jquery.js"></script>
	<script src="bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="gmaps.js"></script>
	<script src="contact.js"></script>
	<script src="price-range.js"></script>
    <script src="jquery.scrollUp.min.js"></script>
    <script src="jquery.prettyPhoto.js"></script>
    <script src="main.js"></script>
</body>
</html>