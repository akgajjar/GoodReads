<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style> 
            select { 
                appearance: none; 
                outline: 0; 
                background: rgb(240, 240, 240); 
                background-image: none; 
                width: 100%; 
                height: 100%; 
                color: black; 
                cursor: pointer; 
                border:1px solid white; 
                border-radius:3px; 
                 color:grey;
                  padding-left: 20px;
              
                
            } 
            .select { 
                position: relative; 
                display: block; 
                width: 15em; 
                height: 2.7em; 
                line-height: 3; 
                overflow: hidden; 
                border-radius: .25em; 
                padding-bottom:12px; 
               
                  
            } 
            h1 { 
                color:grey;
                justify-content: center;
            } 
        </style> 
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
	<!-- page -->
	<div id="page" class="page">

	
		<!-- //form-26-section --><!-- /form-26-section -->
		<section class="form-26-1">
		 <div>
        <%@include file="header.jsp" %>
        </div>
			<div class="form-26-mian bg bg1" style="background-color: rgba(0, 0, 0, 0); margin-top: 0px; background-image: url(&quot;loginimages/411522.jpg&quot;); outline: none; cursor: inherit;">
				<div class="layer">
					<div class="wrapper">
						<div class="form-inner-cont">
							<div class="forms-26-info">
								<h2 class="editContent" style="outline: none; cursor: inherit;">Register</h2>
								<p></p>
							</div>
							<div class="form-right-inf editContent" style="outline: none; cursor: inherit; outline-offset: -2px;">
								<form action="User_masterController" method="post" class="signin-form">
									<div class="forms-gds editContent" style="outline: none; outline-offset: -2px; cursor: inherit;">
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="text" name="fname" placeholder="Firstname" required="">
										</div>
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="text" name="mname" placeholder="Middlename" required="">
										</div>
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="text" name="lname" placeholder="Lastname" required="">
										</div>
										<div class="form-input editContent" style="outline: none; outline-offset: -2px; cursor: inherit;">
											<input type="text" name="mobile" placeholder="Mobile no" required="">
											
										</div><div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="email" name="email" placeholder="Email" required="">
										</div>
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="text" name="add1" placeholder="Address1" required="">
										</div>
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="text" name="add2" placeholder="Address2" required="">
										</div>
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="text" name="city" placeholder="City" required="">
										</div>
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="text" name="state" placeholder="State" required="">
										</div>
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="text" name="pincode" placeholder="Pincode" required="">
										</div>
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="password" name="password" placeholder="Password" required="">
										</div>
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="password" name="cpassword" placeholder="Confirm Password" required="">
										</div>
										<div class="select">
										<div id="select">
												<select name="Gender">
		<option value="Gender">Gender	</option>
		<option value="male">Male</option>
		<option value="female">Female</option>
		<option value="other">Others</option>
	</select>
						</div>					</div>

										<div class="form-input editContent" style="outline: none; cursor: inherit;">
										
										

										<div class="form-input editContent" style="outline: none; cursor: inherit;"><input type="submit" class="btn btn-primary" name="action" id="action" style="outline: none; cursor: inherit; background-color: red;border: red" value="Signup"></div>
								</div>
									<h6 class="already editContent" style="outline: none; cursor: inherit;"><br><br>Already have an account? <a href="login.jsp"><span class="editContent" style="outline: none; cursor: inherit;">Login Here<span></span></span></a></h6>
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