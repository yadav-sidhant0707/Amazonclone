<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Itemmaster | amazon</title>
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

<title>Company </title>

<script type="text/javascript">

	function myfunction()
	{
		var a=document.getElementById("categoryname").value;
		var b=document.getElementById("iid").value;
		var c=document.getElementById("itemrate").value;
		var d=document.getElementById("itemstock").value;
		var e=document.getElementById("itemdesc").value;
		var f =document.getElementById("itemphoto").value;

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
		
		
		
		
		
		
		if(c=="")
		{


			document.getElementById("msg2").innerHTML="*** Please fill Item Rate";
			return false;
		}
			
		if(d=="")
		{


			document.getElementById("msg3").innerHTML="*** Please fill Item Stock  ";
			return false;
		}
			
		if(e=="")
		{


			document.getElementById("msg4").innerHTML="*** Please fill Item Description ";
			return false;
		}
		
		
		
		
		
		
		
			
		if(f=="")
		{


			document.getElementById("msg5").innerHTML="*** Please fill Item Photo";
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
								<
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
					<h2 class="title text-center">Itemmaster List </h2>    			 
				</div>			 		
			</div>


		<%!
		
	//
Connection con;
Statement st;
ResultSet rs;
		%>
<%! String itemId,
itemNm="",
compId,
catId,
brandId,
itemRate, 
itemStock="", 
itemDescr="",
itemPhoto="";%>
<%!	 public int GetNewId() throws SQLException,ClassNotFoundException
{
 Class.forName("com.mysql.cj.jdbc.Driver");
  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");
 st = con.createStatement();

ResultSet rs;
int maxid=0;
rs=st.executeQuery("select max(itemId) from ItemMaster");
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

	 itemId=request.getParameter("t1");
	  itemNm=request.getParameter("t2");
	 compId=request.getParameter("cid");
	 catId=request.getParameter("cid1");
	 brandId=request.getParameter("cid2");
	 itemRate=request.getParameter("t6");
	 itemStock=request.getParameter("t7");
	 itemDescr=request.getParameter("t8");
	 itemPhoto=request.getParameter("t9");




}
else
{
	itemId=String.valueOf(GetNewId());
}



%>


<form action="ItemMastercode.jsp"  method="post" onsubmit="return  myfunction()">
 <div class="form-group col-md-12">
<input type="Number" name="t1"  id="iid"    class="form-control" placeholder="Item ID" value="<%=itemId%>">
</div>
<span style="color: red;" id="msg1"></span><br>
 



<br><br>
 <div class="form-group col-md-12">
<input type="text" id="categoryname"     placeholder="Item Name"  class="form-control"    name="t2"  value=<%=itemNm %>>
<span style="color: red;" id="msg"></span><br>
</div>
<br><br>




					
				<% 
				  
				PreparedStatement ps=con.prepareStatement("select * from company");
				ResultSet rs=ps.executeQuery();
				
				%>
				<p>Select company name:<select name="cid">
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
		      
				
				<% 
				  
				 ps=con.prepareStatement("select * from ItemCat");
				 rs=ps.executeQuery();
				
				%>
				 <p> Select Category name:
				<select name="cid1">
				<%
				while(rs.next())
				{
				  
				   String catNm=rs.getString(2);
				   String catId=rs.getString(1);
				%> 
				<option value=<%=catId%> ><%=catNm%></option>
				
				<%
				}
				%>
				</select>
				</p>
				<% 
				  
				 ps=con.prepareStatement("select * from  brand");
				 rs=ps.executeQuery();
				
				%>
				
				<p>Select Brand name
				<select name="cid2">
				<%
				while(rs.next())
				{
				  
				   String brandNm=rs.getString(2);
				   String brandId=rs.getString(1);
				%> 
				<option value=<%=brandId%>><%=brandNm%></option>
				
				<%
				}
				%>
				</select>
				</p>
 <div class="form-group col-md-12">
<input type="number" id="itemrate" name="t6"   placeholder="Item Rate"    class="form-control"  value=<%=itemRate%>>
<span style="color: red;" id="msg2"></span><br>
</div>
 <br><br>
  <div class="form-group col-md-12">
<input type="number" id="itemstock" name="t7"    placeholder="Item Stock"  class="form-control"  value=<%=itemStock %>>
<span style="color: red;" id="msg3"></span><br>
</div>
 <br><br>
  <div class="form-group col-md-12">
<input type="text" id="itemdesc" name="t8"   placeholder="Item Description"     class="form-control" value=<%=itemDescr %>>
<span style="color: red;" id="msg4"></span><br>
</div>
 <br><br>
 
  <div class="form-group col-md-12">
<input type="file" id="itemphoto" name="t9"   placeholder="Item Photo" class="form-control" value=<%=itemPhoto%>>
<span style="color: red;" id="msg5"></span><br>
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
		
		<input type="submit" value="Update"   class="btn btn-primary pull-rightc center"   disabled name="b1">
		</div>
		<div class="form-group col-md-3">
		<input type="submit" value="Delete"   class="btn btn-primary pull-rightc center"  disabled name="b1">
		</div>
		
<br><br>

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

}
%>
<%

    try
			
		{
    	
    	
    	
    	
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");
    	 st = con.createStatement();

    	
	 rs=st.executeQuery("select * from ItemMaster");
		
	 out.println("<table border='3px;' class='table'>");
		out.println("<tr><th>Item ID</th><th>Item Name</th><th>Company ID</th><th> Category ID</th><th> Brand ID</th><th>Item Rate</th><th>Item Stock</th><th>Item Description</th><th>Item Photo</th><th>Select</th></tr>");

		while (rs.next()) {

			out.println(
			"<tr><th>" + rs.getInt(1) + "</th><th>" + rs.getString(2) +"</th><th>"+rs.getString(3)+"</th><th>"+rs.getString(4)+"</th><th>"+rs.getString(5)+"</th><th>"+rs.getString(6)+"</th><th>"+rs.getString(7)+"</th><th>"+rs.getString(8)+"</th><th>"+rs.getString(9)+"</th></th><th><a href='ItemMasterdesign.jsp?t1="
					+ rs.getInt(1) + "&t2=" + rs.getString(2) +"&t3"+rs.getString(3)+"&t4="+rs.getString(4)+"&t5="+rs.getString(5)+"&t6="+rs.getString(6)+"&t7="+rs.getString(7)+"&t8="+rs.getString(8)+"&t9=t"+rs.getString(9)+"'>Select</a></th></tr>");

		}
		
		
		
		}

	catch(Exception e)
		{
		 out.println(e);
		}
%>

</body>
</html>