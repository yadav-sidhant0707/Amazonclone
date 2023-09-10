<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*" import="java.sql.*" import ="java.util.Date" import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">



<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Payment | amazon</title>
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


<script type="text/javascript">





function myfunction()
{
	var e=document.getElementById("payId").value;
	 var b=document.getElementById("payDate").value;
	 var c=document.getElementById("orderId").value;
	var d=document.getElementById("orderGrandTot").value;
	
	
	if(e=="")
	{


		document.getElementById("ms5252").innerHTML="*** Please fill  Payment ID ";
		return false;
	}
	
	if(b=="")
	{


		document.getElementById("msg1").innerHTML="*** Please fill   Payment Date ";
		return false;
	}
		

	if(c=="")
	{


		document.getElementById("msg2").innerHTML="*** Please fill  Order ID ";
		return false;
	}
	
	if(d=="")
	{


		document.getElementById("msg3").innerHTML="*** Please fill  Order Grand Total";
		return false;
	}

	
}

</script>




<title>Insert title here</title>
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
					<h2 class="title text-center">Payment  </h2>    			 
				</div>			 		
			</div>
			
			
			



	<%! String payId="",payDate="",orderId="",orderGrandTot="";  float grandtot;  

	
	%>
	
			<%!
			
			Connection con;
			Statement st;
			ResultSet rs;
			
			
			
			%>
	
	
		<%!
		public int GetNewId() throws SQLException , ClassNotFoundException
		{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");

			Statement st=con.createStatement();
			rs=st.executeQuery("select max(payId) from  payment");
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
	Float grandtot = (Float)session.getAttribute("grandtot");
	
   /*  Date date = new Date();
    String pattern = "EEE MMM dd HH:mm:ss zzz yyyy";

					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
					java.util.Date utilDate = dateFormat.parse(date.toString());
					//java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
 */					
					
					Date date = new Date();
			        String pattern = "yyyy/MM/dd";

			        SimpleDateFormat dateFormat = new SimpleDateFormat(pattern);
			        String formattedDate = dateFormat.format(date);
					
	
   %>

<%	
					
    boolean flag=true;
    if(request.getQueryString()!=null)
  {
	flag=false;

	payId  = request.getParameter("t1");
	payDate = request.getParameter("t2");
	orderId=request.getParameter("t3");
	orderGrandTot=request.getParameter("t4");

  }
    else
    {
    	payId=String.valueOf(GetNewId());
    }
%>



	<form action="Paymentcode.jsp" method="Post"  onsubmit="return myfunction()">
	 <div class="form-group col-md-12">
		<input type="number" name="t1"   class="form-control"    placeholder ="Payment ID"  id="payId"   value=<%=payId%>><br>
		
		<span style="color: red;" id="ms5252"></span>
		</div>
	 <div class="form-group col-md-12">
	 
		<input type="text" name="t2"  id="payDate"    class="form-control"    placeholder ="Payment Date"  value=<%=formattedDate%>><br>
		<span style="color: red;" id="msg1"></span></div>
		
		 <div class="form-group col-md-12">
<input type="text" name="t3"  value="<%=session.getAttribute("cnm") %>"  id="orderId"   placeholder="Order ID"    class="form-control"     ><br>
		<span style="color: red;" id="msg2"></span>
		
		</div>
		<div class="form-group col-md-12">
	<input type="number" name="t4" id="orderGrandTot"     value=<%=grandtot%>   placeholder="Order Grand Total"   class="form-control"  value=<%=orderGrandTot%> ><br>
	
	<span style="color: red;" id="msg3"></span></div>
	 
		<div class="form-group col-md-3">
			<input type="submit"    class="btn btn-primary pull-rightc center"  value="Buy"  name="b1"><br>
			</div>	
			  
		
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
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");
	 st = con.createStatement();
	 rs = st.executeQuery("select * from  Payment");
		out.println("<table border='3px'>");

		/* out.println("<table border='3px;' class='table' style='background-color:lightcyan;' >");
		out.println("<tr><th>Payment ID</th><th>Payment Date</th><th>	Order ID</th><th>Order Grand Total</th><th>Select</th></tr>");
 */
		while (rs.next()) {

			/* out.println(
			"<tr><th>" + rs.getInt(1) + "</th><th>" + rs.getString(2) +"</th><th>"+rs.getString(3)+"</th><th>"+rs.getString(4)+"<th><a href='Paymentdesign.jsp?t1="
					+ rs.getInt(1) + "&t2=" + rs.getString(2) +"&t3="+rs.getString(3)+"&t4="+rs.getString(4)+"'>Select</a></th></tr>");

		 */
		}
		
	}

	catch (Exception e) {

		out.println(e);

	}
%>



</body>
</html>