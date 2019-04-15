<%@page import="java.util.List" %>
<%@page import="java.sql.*" %>

<%
String s10002=request.getParameter("Email");
String s10003=request.getParameter("Id");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
int rs=st.executeUpdate("update registerseller set sellerId = '"+s10003+"' where email = '"+s10002+"' ");
st.close();
con.close();
%>

<!DOCTYPE HTML>
<html>
<head>
<title>CromaSeller Site</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css?version=5" rel="stylesheet" type="text/css" media="all"/>
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
								
	    		 <div class="clear"></div>
	        </div>
	    </div>
	 </div>			      	
     <div class="main">
	 	<div class="content">	
	 		 <div class="content_top">  
	 		     <div class="wrap">                                  		
            	   <div class="banner_desc">
            		 <div class="primary">
            		Seller Id:&nbsp;<%out.print(s10003);%> &nbsp; Assigned to Seller:&nbsp;<%out.print(s10002);%> &nbsp;
					</div> </br>
					<form action="admin.html">
                    <input type="submit" value="Logout"></form>
                </div>  
                     
             <div class="clear"></div>
        </div>
     </div>
   </div>
</div>

	</body>
</html>