<%@page import="java.util.List" %>
<%@page import="java.sql.*" %>

<%
{
int count=0;
String s10000=request.getParameter("Email");
String s10001=request.getParameter("Password");
String umm1="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from admin where email='"+s10000+"' and password='"+s10001+"' ");
while(rs.next())
{
umm1=rs.getString(1);
count++;
}
session.setAttribute("adminName",umm1);
st.close();
con.close();
if(count==0)
{
response.sendRedirect(request.getContextPath() + "/sellerchroma/adminfail.html");
}
}
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
	 	<div class="">	
	 		 <div class="content_top">  
	 		     <div class="wrap">                                  		
            	   <div class="banner_desc">
					<div class="primary">
            		<%
{
String umm1="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from registerseller");
while(rs.next())
{
         String id  = rs.getString("sellerId");
         String uname = rs.getString("uname");
         String email = rs.getString("email");
         String aadhaarno = rs.getString("aadhaarno");
         out.print("ID: " + id);
         out.print(", Username: " + uname);
         out.print(", Email: " + email);
         out.println(", Aadhaar No: " + aadhaarno);%>  
		 
		 <form action="idform.html" method="post">
		 <input type="submit" id="login" value="Change Id"></br></br></form><%
}
st.close();
con.close();
}
%>
 </div>
                </div>  
                     
             <div class="clear"></div>
        </div>
     </div>
   </div>
</div>
 
	</body>
</html>