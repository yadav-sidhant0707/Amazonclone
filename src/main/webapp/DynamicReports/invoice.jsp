<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*" import="java.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>





<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<script type="text/javascript">
    function Export() {
        html2canvas(document.getElementById('bill'), {
            onrendered: function (canvas) {
                var data = canvas.toDataURL();
                var docDefinition = {
                    content: [{
                        image: data,
                        width: 500
                    }]
                };
                pdfMake.createPdf(docDefinition).download("Payment.pdf");
            }
        });
    }
    </script>



<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Search by Brand</title>
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

<title>Invoice </title>
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
					<h2 class="title text-center">Invoice </h2>    			 
				</div></div>

<div class="container" id="bill" >
<%!String orderId1,orderDate1,orderId,orderDate,
  orderGrandTot,custNm,custAddr,custPhone,custEmail,
  custPincode,orderDetId;
ArrayList itemNm=new ArrayList();
//,itemRate,itemQty,itemAmt;
ArrayList itemRate=new ArrayList();
ArrayList itemQty=new ArrayList();
ArrayList itemAmt=new ArrayList();



%>
 
    <%
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");
			Statement st = con.createStatement();
			PreparedStatement ps;
			ResultSet rs = st.executeQuery("select orderMaster.orderId,orderMaster.orderDate,orderMaster.orderGrandTot,customer.custNm,customer.custAddr,customer.custPhone,customer.custEmail,customer.custPincode,orderDetails.orderDetId,itemmaster.itemNm,orderDetails.itemRate,orderDetails.itemQty,orderDetails.itemAmt from orderMaster,customer,orderDetails,itemMaster where orderMaster.orderCustId =customer.custId and orderMaster.orderId=orderDetails.orderId and orderDetails.ItemId=itemMaster.itemId and orderMaster.orderId="+session.getAttribute("ordid"));
			//out.println("<table border='3px' class='table'style='background-color:yellow'>");
			//out.print("select orderMaster.orderId,orderMaster.orderDate,orderMaster.orderGrandTot,customer.custNm,customer.custAddr,customer.custPhone,customer.custEmail,customer.custPincode,orderDetails.orderDetId,itemmaster.itemNm,orderDetails.itemRate,orderDetails.itemQty,orderDetails.itemAmt from orderMaster,customer,orderDetails,itemMaster where orderMaster.orderCustId =customer.custId and orderMaster.orderId=orderDetails.orderId and orderDetails.ItemId=itemMaster.itemId and orderMaster.orderId="+session.getAttribute("ordid"));

while(rs.next()) {
	orderId1=rs.getString("orderId");
	orderDate=rs.getString("orderDate");
	orderId=rs.getString("orderGrandTot");
	custNm=rs.getString("custNm");
	custAddr=rs.getString("custAddr");
	custPhone=rs.getString("custPhone");
	custEmail=rs.getString("custEmail");
	custPincode=rs.getString("custPincode");
	orderDetId=rs.getString("orderDetId");
	itemNm.add(rs.getString("itemNm"));
	itemRate.add(rs.getString("itemRate"));
	itemQty.add(rs.getString("itemQty"));
	itemAmt.add(rs.getString("itemAmt"));
	
	
	
	
	

		}

		}
catch(Exception e)
{
	out.println(e);
}

%>
				
			
			
  <div class="row">
    <div class="col-sm-6" style="background-color:orange; height:150px">
   <table>
   <tr><th>Customer Name:-</th><th><%=custNm %></th></tr>
    <tr><th>Customer  Address:-</th><th><%=custAddr %></th></tr>
    <tr><th>Customer  Email :-<th><%=custEmail %></th></tr>
    <tr><th>Customer Phone :-</th><th><%=custPhone %></th></tr><br>
    <tr><th>Customer Pincode :-</th><th><%=custPincode %></th></tr>
   
    </table>
    
   
	
  
     
    </div>
    <div class="col-sm-6"   style="background-color:black;color:white; height:150px">
    <table  style="text-align:right;">
   <tr style='margin-left:100px'><td>Invoice no:-</td><td style="text-align:left"><%=orderId1 %></td></tr>
    <%-- <tr><td  style="padding-left:400px;">Date:-</td><td><%=orderDate%></td></tr>
   --%>
   <tr><td>Order Date:-</td><td style="text-align:right"><%=orderDate%></td></tr>
    </table>
   
   
    </div>
    
    
  </div>
  
  
   
<br>




 <div class="row">
 <div class="col-md-12">

<table class="table"  style="border:2px solid orange; background-color:cyna">
<%
out.println("<tr><th>Sr no</th><th>Name</th><th>Rate</th>"
		+"<th>Qty</th><th>Amount</th></tr>");

for(int i=0;i<itemNm.size();i++){
	out.println("<tr><th>" +(i+1)+ "</th><th>" + itemNm.get(i)
+ "</th><th>"+itemRate.get(i)+"</th><th>"+ itemQty.get(i)+"</th><th>"+itemAmt.get(i)+"</th></tr>");
}
%>

<tr>
	<td colspan=4 align=right >Total</td><td><%=session.getAttribute("total") %></td>
</tr>
<tr>
	<td colspan=4 align=right >GST</td><td><%=session.getAttribute("gstamt") %></td>
</tr>
<tr>
	<td colspan=4 align=right >Grand Total</td><td><%=session.getAttribute("grandtot") %></td>
</tr>
</table>

</div>
</div>
 


   
  <div class="row">
    <div class="col-sm-6"   style="background-color:white;color:black;height:200px">
    <button onclick="Export()"  class="btn btn btn-info">Export to PDF</button>
     
    </div>
    <div class="col-sm-6" style="background-color:white;color:black; height:200px"> <hr><div>
  
</div>

</div>






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