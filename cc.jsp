<%@page import="java.util.List" %>
<%@page import="java.sql.*" %>

<%
{
int count=0;
String s22=request.getParameter("SellerId");
String s40="Not Applicable";
String s23=request.getParameter("password");
session.setAttribute("sellerid",s22);
if(s22.equals(s40))
{	
s22=s22+"Hello";
out.print(s22);
}
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from registerseller where sellerId='"+s22+"' and password='"+s23+"' ");
while(rs.next())
{
count++;
}
st.close();
con.close();
if(count==0)
{
response.sendRedirect(request.getContextPath() + "/sellerchroma/loginfail.html");
}
}
%>
<!DOCTYPE HTML>
<html>
<head>
<title>CromaSeller Site </title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700,500,900' rel='stylesheet' type='text/css'>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/script.js" type="text/javascript"></script>
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="js/jquery.fancybox.js"></script>
	<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css" media="screen" />
	<script type="text/javascript" src="js/jquery.fancybox-media.js"></script>	
</head>
<body>

<div class="header" id="home">
  	  <div class="header_top">
	   <div class="wrap">
		 	     <div class="logo">
						<a href="#"><img src="images/seller.png" alt="" /></a>
					</div>	
						<div class="menu">
						    <ul>
								<li><div class="primary"><%String s100=(String)session.getAttribute("sellerid");
										out.println(s100);%></div></li>
								<div class="clear"></div>
							</ul>
						</div>							
	    		 <div class="clear"></div>
	        </div>
	    </div>
	 </div>			      	
           <div class="features" id="features">
                 <div class="wrap">                             	
                 		  <h2>Start accepting orders <span>today</span></h2>
                 		    <h4>Setup a professional storefront within minutes</h4>
                 		        <div class="features_grids">
							     <div class="section group">
									<div class="grid_1_of_4 images_1_of_4">
										 <a href="productmobile.html"><img src="images/mobile.jpg" alt="" />
										 <h3>Mobile</h3></a>
										 <p>Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt Lorem Ipsum available, in some form .</p>
									</div>
									<div class="grid_1_of_4 images_1_of_4">
										 <a href="producttelevision.html"><img src="images/tv.jpg" alt="" />
										 <h3>Television</h3></a>
										 <p>Lorem ipsum dolor sit amet, sed do eiusmod tempor velit esse cillum dolore eu fugiat nulla pariatur .</p>
									</div>
									<div class="grid_1_of_4 images_1_of_4">
										 <a href="productfurniture.html"><img src="images/furniture.jpg" alt="" />
										  <h3>Furniture</h3></a>
										  <p>Lorem ipsum dolor sit amet, sed do eiusmod tempor sed do eiusmod tempor incididunt .</p>
									</div>
									<div class="grid_1_of_4 images_1_of_4">
										 <a href="productsb.html"><img src="images/book.jpg" alt="" />
										  <h3>Sports & Books</h3></a>
										  <p>Lorem ipsum dolor sit amet, sed do velit esse cillum dolore eu fugiat nulla pariatur.</p>
									</div>
					              </div>
			
					        </div>
						</div>
           			</div>
           			 
           	  
                       
          	 
	</body>
</html>

