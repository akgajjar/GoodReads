<%@page import="com.goodreads.bin.ForgotPassword"%>
<%@page import="com.goodreads.bin.user_master"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


<head>
	<meta charset="ISO-8859-1">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Title Here</title>

	<!-- Custom-Files -->
	<link href="logincss/login.css" rel="stylesheet" type="text/css"><!-- custom css -->
	<link href="logincss/register.css" rel="stylesheet" type="text/css"><!-- custom css -->
	<!-- //Custom-Files -->
	 <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <!--/ Style-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <!--// Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
  <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
    <!-- //Fonts -->
	
</head>
<body>
<%
  
  response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
  user_master user = null;
    		if(session!=null)
    		{
    			if(session.getAttribute("user")!=null)
    			{
    				response.sendRedirect("index.jsp");
    			}
    			
    		}
    		
  
  %>
<div class="form-26-mian bg bg1" style="background-color: rgba(0, 0, 0, 0); margin-top: 0px; background-image: url(&quot;loginimages/411522.jpg&quot;);">
				<div class="layer">
					<div class="wrapper">
						<div class="form-inner-cont editContent">
							<div class="forms-26-info">
								<h2 class="editContent" style="outline: none; cursor: inherit;">Change Password</h2>
								<p></p>
							</div>
							<div class="form-right-inf editContent" style="outline: none; cursor: inherit;">
								<form action="User_masterController" method="post" class="signin-form">
									<div class="forms-gds editContent" style="outline: none; cursor: inherit;">
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="text" name="otp" placeholder="OTP" required="">
										</div>
										
									<div class="form-input editContent" style="outline: none; cursor: inherit;"><input type="submit" id="enterotp" class="btn btn-primary" name="action" id="action" style="outline: none; cursor: inherit; background-color: red;border: red" value="Confirm Otp"></div>
									</div>
										</form>

							</div>
							<div class="copyright text-center">
								<p>© 2019 Merged Forms. All rights reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3Layouts</a></p>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- //form-26-section --></div><!-- /#page -->



</body>
</html>