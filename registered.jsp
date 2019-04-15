<%@page import="java.util.List" %>
<%@page import="java.sql.*" %>

<%
{
String s41=request.getParameter("Username");
String s42=request.getParameter("Email");
String s43=request.getParameter("Aadhaar Number");
String s44=request.getParameter("Mobile Number");
String s45=request.getParameter("Pan Number");
String s46=request.getParameter("GST Number");
String s47=request.getParameter("Password");
String s48=request.getParameter("Confirm Password");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into registerseller(uname,email,aadhaarno,mobno,panno,gstno,password,cpassword) values('"+s41+"','"+s42+"','"+s43+"','"+s44+"','"+s45+"','"+s46+"','"+s47+"','"+s48+"')");
st.executeUpdate("alter table registerseller alter sellerId set default 'Not Applicable'");
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
<link href="css/style.css?version=2" rel="stylesheet" type="text/css" media="all"/>
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
						    	<li><a href="tracking.html">Track My Application</a></li>			
								<li class="login" >
									<div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
						                <div id="loginBox">                
						                    <form id="loginForm" action="cc.jsp" method="post">
						                        <fieldset id="body">
						                            <fieldset>
						                                <label for="SellerId">Seller Id</label>
						                                <input type="text" name="SellerId" id="email">
						                            </fieldset>
						                            <fieldset>
						                                <label for="password">Password</label>
						                                <input type="password" name="password" id="password">
						                            </fieldset>
						                            <input type="submit" id="login" value="Sign in">
						                           
						                        </fieldset>
						                        
						                    </form>
						                </div>
						               </div>
								   </li>
								<div class="clear"></div>
							</ul>
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
            		Thanks for Submitting Request.</br>
					It will take couple of hours for us to verify and generate your Unique Seller Id</br>
					You can use link Track My Application Status to get your Unique Seller Id!!!
					</div>
                </div>  
                     
             <div class="clear"></div>
        </div>
     </div>
   </div>
</div> 
	</body>
</html>