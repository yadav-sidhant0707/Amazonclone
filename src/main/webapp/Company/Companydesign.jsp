<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
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

<title>Company  List</title>


<script type="text/javascript">



function myfunction()
	{
	
	

	  var a=document.getElementById("companyname").value;
	   var b=document.getElementById("companyid").value;
		var c=document.getElementById("companyaddress").value;
		var d=document.getElementById("companyphone").value;
		var e=document.getElementById("companyemail").value;
		var f =document.getElementById("companycity").value;
		var g=document.getElementById("companydesc").value;
		var h =document.getElementById("companypassword").value;

		if(b=="")
		{
			document.getElementById("msg1").innerHTML="*** Please fill Company ID";
			return false;
		}
		
		

		if(a=="")
		{


			document.getElementById("msg").innerHTML="*** Please fill Company name";
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
		
		
		if(c=="")
		{


			document.getElementById("msg2").innerHTML="*** Please fill Company Addresss";
			return false;
		}
		

		if(d=="")
		{


			document.getElementById("msg3").innerHTML="*** Please fill Company Phone  ";
			return false;
		}
		
		
		if(isNaN(d))
			{
			
			
			document.getElementById("msg3").innerHTML="***  Muser write digits only not characters ";
			return false;
			
			}

			

			if((d.charAt(0)!=9) && (d.charAt(0)!=8) && (d.charAt(0)!=7))
			{


				document.getElementById("msg3").innerHTML="*** Please fill Phone number Start with 9,8,7 ";
				return false;
			}
		
		
			
		if(d.length!=10){
			document.getElementById("msg3").innerHTML =" ** Phone Number must be 10 digits only";
			return false;
		}
	
		if(e=="")
		{


			document.getElementById("msg4").innerHTML="*** Please fill Company Email ";
			return false;
		}
			
		if(e.indexOf('@')<=0)
		{


			document.getElementById("msg4").innerHTML="*** @ Invalid Position";
			return false;
		}
		
		
		if((e.charAt(e.length-4)!='.') && (e.charAt(e.length-3)!='.'))
		{


			document.getElementById("msg4").innerHTML="***  ** . Invalid Position";
			return false;
		}
		
		
		
		
		
		
		if(f=="")
		{


			document.getElementById("msg5").innerHTML="*** Please fill Company City";
			return false;
		}
			
		
		
		

		if(!isNaN(f))
		{


			document.getElementById("msg5").innerHTML="*** Please  Enter only character ";
			return false;
		}
			
		
		
		if(g=="")
		{


			document.getElementById("msg6").innerHTML="*** Please fill Company Description";
			return false;
		}
			
			if(h=="")
		{


			document.getElementById("msg7").innerHTML="*** Please fill Company Password";
			return false;
		}
		
			
			if((h.length <= 5) || (h.length > 20)) {
				document.getElementById("msg7").innerHTML =" ** Passwords lenght must be between  5 and 20";
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
					<h2 class="title text-center">Company Registration >    			 
				</div>			 		
			</div>



	<%!String compId = "", compNm = "", compAddr ="", compPhone = "", compEmail = "", compCity = "", compDesc = "",
			compPassword = ""; ResultSet rs;Statement st ;  %>
	<%! 
	
	public int GetNewId() throws SQLException,ClassNotFoundException
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");
	 st = con.createStatement();
	int maxid=0;
	rs=st.executeQuery("select max(compId) from  Company");
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
	if (request.getQueryString()!= null) {
		flag=false;
		compId = request.getParameter("t1");
		compNm = request.getParameter("t2");
		compAddr = request.getParameter("t3");
		compPhone = request.getParameter("t4");
		compEmail = request.getParameter("t5");
		compCity = request.getParameter("t6");
		compDesc = request.getParameter("t7");
		compPassword = request.getParameter("t8");
	}
	else
		compId=String.valueOf(GetNewId());
	%>
	<form action="Companycode.jsp" method="post" onsubmit="return  myfunction()">
	
	 <div class="form-group col-md-12">
		<input type="Number" name="t1"   id="companyid" placeholder="Company ID"   class="form-control"  value=<%=compId%>>
		<span style="color: red;" id="msg1"></span><br>
		</div>  
		<br>
		<br> 
		 <div class="form-group col-md-12">
		<input type=text name="t2"   id="companyname" placeholder="Company Name"    class="form-control"  value=<%=compNm%>>
		<span style="color: red;" id="msg"></span><br>
		</div>
		<br>
		<br> 
		 <div class="form-group col-md-12">
		<input type="text" name="t3" id="companyaddress"  class="form-control"  placeholder="Company Address"
			value=<%=compAddr%>>
			<span style="color: red;" id="msg2"></span><br>
			</div>
			
	<br> <br> 
	
	 <div class="form-group col-md-12">
<input
			type="text" name="t4"    id="companyphone"     class="form-control"  placeholder="Company Phone" value=<%=compPhone%>>
			<span style="color: red;" id="msg3"></span><br>
			</div>
			<br> <br>
			 <div class="form-group col-md-12">
		<input type="text" name="t5"  id="companyemail"      class="form-control"  placeholder="Company Email" value=<%=compEmail%>>
		<span style="color: red;" id="msg4"></span><br>
		</div>
		<br>
		<br> 
		 <div class="form-group col-md-12">
		<input type="text"     placeholder="Company City"   class="form-control"   name="t6" id="companycity"
			value=<%=compCity%>>
			<span style="color: red;" id="msg5"></span><br>
			</div>
			
			
			<br> <br> 
			 <div class="form-group col-md-12">
			<input
			type="text" name="t7"     id="companydesc"       class="form-control" placeholder=" Company Description" value=<%=compDesc%>>
			<span style="color: red;" id="msg6"></span><br>
			</div>
			<br> <br>  
			 <div class="form-group col-md-12">
		<input type="text" name="t8"    id="companypassword"      class="form-control"  placeholder="Company Password"    value=<%=compPassword%>>
		<span style="color: red;" id="msg7"></span><br>
		</div>
		<br>
		<br> 
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
       
       
		
	</form>
	<br>
	<br>
	
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
	try

	{

		 rs = st.executeQuery("select * from Company");

		out.println("<table border='3px;' class='table'>");
		out.println(
		"<tr><th>Company ID</th><th>Company Name</th><th>Company Address</th><th>Company Phone</th><th>Company Email</th><th>Company City</th><th>Company Description</th><th>Company Password</th><th>Select</th></tr>");

		while (rs.next()) {

			out.println("<tr><th>" + rs.getInt(1) + "</th><th>" + rs.getString(2) + "</th><th>" + rs.getString(3)
			+ "</th><th>" + rs.getString(4) + "</th><th>" + rs.getString(5) + "</th><th>" + rs.getString(6)
			+ "</th><th>" + rs.getString(7) + "</th><th>" + rs.getString(8)
			+ "</th><th><a href='Companydesign.jsp?t1=" + rs.getInt(1) + "&t2=" + rs.getString(2) + "&t3="
			+ rs.getString(3) + "&t4=" + rs.getString(4) + "&t5=" + rs.getString(5) + "&t6=" + rs.getString(6)
			+ "&t7=" + rs.getString(7) + "&t8=" + rs.getString(8) + "'>Select</a></th></tr>");

		}

	}

	catch (Exception e) {
		out.println(e);
		
		

	}
	%>
</body>
</html>