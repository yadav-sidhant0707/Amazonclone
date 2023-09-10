<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Item |amazon</title>
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>




<script type="text/javascript">

	function myfunction()
	{
		var a=document.getElementById("catnm").value;
		var b=document.getElementById("catid").value;
		
		
		

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
					<h2 class="title text-center">Item  List </h2>    			 
				</div>			 		
			</div>


<%! String catId="", catNm="";  ResultSet rs;Statement st; %>
<%!
 public int GetNewId() throws SQLException, ClassNotFoundException
 {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");
	 st = con.createStatement();
	 rs=st.executeQuery("select max(catid) from itemcat");
	 
	int maxid=0;
	
		 if(rs.next())
		{
			
		maxid=rs.getInt(1);
		maxid=maxid+1;
		
		}
return (maxid);
 }
%>
<%
   boolean flag=true;
  if(request.getQueryString()!=null)
  {
	  flag=false;
	  catId=request.getParameter("t1");
	  
	  catNm=request.getParameter("t2");
	  
  }
  else
  {
	  catId=String.valueOf(GetNewId());
  }

%>
<form action="ItemCategorycode.jsp"    onsubmit=" return myfunction()">
 <div class="form-group col-md-12">
<input type="number"  name="t1" id="catid"  placeholder= "Category ID"    class="form-control" value=<%=catId%>><br>
<span id="msg1"  style="color: red"></span>
</div>
<br>
 <div class="form-group col-md-12">
<input type="text" name="t2" id="catnm"  placeholder="Category Name"    class="form-control" value=<%=catNm%>><br>
<span id="msg"  style="color: red"></span>
	</div>
<br><br>

<%
 if(flag==true)
 {
%>
<div class="form-group col-md-3">
<input type="submit" value="Insert"   class="btn btn-primary pull-rightc center"  name="b1">
</div>
<div class="form-group col-md-3">
<input type="submit" name="b1"    class="btn btn-primary pull-rightc center" disabled value="Update">
</div>
<div class="form-group col-md-3">
<input type="submit" name="b1"   class="btn btn-primary pull-rightc center"  disabled value="Delete">
</div>

<%
 }
 else
 {
%>
<div class="form-group col-md-3"><input type="submit" value="Insert"   class="btn btn-primary pull-rightc center"  disabled name="b1">
</div>


<div class="form-group col-md-3">
<input type="submit" name="b1"     class="btn btn-primary pull-rightc center" value="Update">
</div>
<div class="form-group col-md-3"><input type="submit" name="b1"    class="btn btn-primary pull-rightc center" value="Delete">
</div>
<%} %>

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
		 rs = st.executeQuery("select * from  ItemCat");
		out.println("<table border='3px;' class='table'>");
		out.println("<tr><th>Category ID</th><th>Category Name</th><th>Select</th></tr>");

		while (rs.next()) {

			out.println(
			"<tr><th>" + rs.getInt(1) + "</th><th>" + rs.getString(2) + "</th><th><a href='Itemdesign.jsp?t1="
					+ rs.getInt(1) + "&t2=" + rs.getString(2) + "'>Select</a></th></tr>");

		}

	}

	catch (Exception e) {

		out.println(e);

	}
%>


</body>
</html>