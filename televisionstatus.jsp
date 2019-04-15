<%@page import="java.util.List" %>
<%@page import="java.sql.*" %>

<%
{
String s41=request.getParameter("pname");
String s42=request.getParameter("pnumber");
String s43=request.getParameter("pquantity");
String s44=request.getParameter("pmanufacturer");
String s45=request.getParameter("pprice");
String s46=request.getParameter("pdetails");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into ptelevision(pname,pnumber,pquantity,pmanufacturer,pprice,pdetails) values('"+s41+"','"+s42+"','"+s43+"','"+s44+"','"+s45+"','"+s46+"')");
session.setAttribute("Pname",s41);
session.setAttribute("Pnumber",s42);
session.setAttribute("Pquantity",s43);
session.setAttribute("Pmanufacturer",s44);
session.setAttribute("Pprice",s45);
session.setAttribute("Pdetails",s46);
st.close();
con.close();
}
%>

<!DOCTYPE HTML>
<html>
<head>
<title>CromaSeller Site</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap.css?version=3" rel='stylesheet' type='text/css' />
<link href="css/style.css?version=7" rel="stylesheet" type="text/css" media="all"/>
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
						     
						</div>							
	    		 <div class="clear"></div>
	        </div>
	    </div>
	 </div>	
<br> 
<div class="typrography">
	 <div class="container">	 
<p><div class="primary">
Your Product is Successfully added....!!!!<br>
Details are given below
</p><br>
Product Name:&nbsp;&nbsp;<%String s191=(String)session.getAttribute("Pname");
										out.println(s191);%>                                              </br>
Product Number:&nbsp;&nbsp;<%String s192=(String)session.getAttribute("Pnumber");
										out.println(s192);%>                                            </br>
Product Quantity:&nbsp;&nbsp;<%String s193=(String)session.getAttribute("Pquantity");
										out.println(s193);%>                                          </br>
Product Manufacturer:&nbsp;&nbsp;<%String s194=(String)session.getAttribute("Pmanufacturer");
										out.println(s194);%>                                      </br>
Product Price:&nbsp;&nbsp;<%String s195=(String)session.getAttribute("Pprice");
										out.println(s195);%>                              		       </br>
Product Details:&nbsp;&nbsp;<%String s196=(String)session.getAttribute("Pdetails");
										out.println(s196);%>
</div>
<center>
<form action="producttelevision.html">
 	<div class="content">	                          		
            	   <div class="banner_desc">
            		<div class="sign_up">				  	
							<input type="submit" value="Add More Product"></form></br></br>

				    </div>
                </div>         
             <div class="clear"></div>
        </div>
</center>
</div>
</div>

	</body>
</html>