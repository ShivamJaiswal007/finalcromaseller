<%@page import="java.util.List" %>
<%@page import="java.sql.*" %>

<%
{
int count=0;
String s121=request.getParameter("Email");
String s131=request.getParameter("Password");
String um1="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/croma","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from registerseller where email='"+s121+"' and password='"+s131+"' ");
while(rs.next())
{
um1=rs.getString(1);
count++;
}
session.setAttribute("sellerId",um1);
st.close();
con.close();
if(count==0)
{
response.sendRedirect(request.getContextPath() + "/croma/web/loginfail.html");
}
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
						    			
								<li class="login" >
									<div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
						                <div id="loginBox">                
						                     <form action="cc.jsp" id="loginForm" method="post">
						                        <fieldset id="body">
						                            <fieldset>
						                                <label for="email">Seller Id</label>
						                                <input type="text" name="SellerId" id="SellerId">
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
            		Your Unique SellerId:&nbsp;<%String s170=(String)session.getAttribute("sellerId");
										out.println(s170);%></br>
					Use this SellerId and Password to Login!!!</br>
					</div>
                </div>  
                     
             <div class="clear"></div>
        </div>
     </div>
   </div>
</div> 
	</body>
</html>