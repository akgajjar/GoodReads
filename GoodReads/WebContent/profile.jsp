<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Personal Profile Form Widget Flat Responsive Widget Template :: w3layouts</title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Personal Profile Form Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="profilecss/j-forms.css">
<link href="profilecss/style.css" rel="stylesheet" type="text/css" media="all" />
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

  <!-- header -->
            <header class="header">
                <div class="container-fluid px-lg-5">
                    <!-- nav -->
                    <nav class="py-4">
                        <div id="logo">
                            <h1> <a href="index.html" class="editContent" style="color: rgb(204, 0, 0); font-size: 40px; background-color: rgba(0, 0, 0, 0); font-family: &quot;Source Sans Pro&quot;, sans-serif; outline: none; outline-offset: -2px; cursor: inherit;" src="bundles/best1.gif">Goodreads</a></h1>
                        </div>

                        <label for="drop" class="toggle">Menu</label>
                        <input type="checkbox" id="drop">
                        <ul class="menu mt-2">
                            <li class="active"><a href="index.html" style="color: rgb(0, 0, 0); font-weight: 700; text-transform: uppercase; outline: none; cursor: inherit;">HOME</a></li>
                            <li><a href="about.html" style="outline: none; cursor: inherit;">About</a></li>
                            <li><a href="blog.html" style="outline: none; cursor: inherit;">Blog</a></li>
                            <li>
                                <!-- First Tier Drop Down -->
                                <label for="drop-2" class="toggle">Drop Down <span class="fa fa-angle-down" aria-hidden="true" style="outline: none; cursor: inherit;"></span> </label>
                                <a href="#" style="outline: none; cursor: inherit;">Drop Down <span class="fa fa-angle-down" aria-hidden="true" style="outline: none; cursor: inherit;"></span></a>
                                <input type="checkbox" id="drop-2">
                                <ul>
                                    <li><a href="blog.html" style="outline: none; cursor: inherit;">Blog</a></li>
                                    <li><a href="shop.html" style="outline: none; cursor: inherit;">Shop Now</a></li>
                                    <li><a href="shop-single.html" style="outline: none; cursor: inherit;">Single Page</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.html" style="outline: none; cursor: inherit;">Contact</a></li>
                            <li><a href="login.jsp" style="outline: none; cursor: inherit;">Login</a></li>
                            <li><a href="admin/login.jsp" style="outline: none; cursor: inherit;">Admin Login</a></li>
                        </ul>
                    </nav>
                    <!-- //nav -->
                </div>
            </header>

<div class="content">
		
		<div class="main w3l">
		
			<div class="im-g">
				<img src="profileimages/img1.jpg" alt="">
			</div>
			
			<form class="contact-forms wthree">
				<!-- end /.header-->

					<!-- start name -->
					<div class="first-line agileits">
						<div class="span6 main-row">
							<div class="input">
								
								<input type="text" id="first_name" name="fname" placeholder="First name" required="">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								<input type="text" id="last_name" name="mname" placeholder="Middle name" required="">
								
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								<input type="text" id="last_name" name="lname" placeholder="Last name" required="">
								
							</div>
						</div>
					</div>
					<!-- end name -->

					<!-- start email phone -->
					<div class="first-line agileits">
						<div class="span6 main-row">
							<div class="input">
								
								<input type="email" placeholder="Email" id="email" name="email" required="">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								<input type="text" placeholder="Phone" id="mobile" name="phone" required="">
							</div>
						</div>
					</div>
				<div class="main-row">
						<label class="input select">
							<select name="position">
								<option value="none" selected disabled="">Gender</option>
								<option value="male">Male</option>
								<option value="female"> Female</option>
							</select>
							<i></i>
						</label>
					</div>

					<!-- <!-- start country -->
					<div class="main-row">
						<label class="input select">
							<select name="country">
								<option value="none" selected="" disabled="">Select country</option>
								
								<option value="Australia">Australia</option>
								<option value="China">China</option>
								<option value="New Jersey">New Jersey</option>
								<option value="Spain">Spain</option>
								<option value="Switzerland">Switzerland</option>
							</select>
							<i></i>
						</label>
					</div>
					end country -->
				<!-- 	<!-- start position -->
					<div class="main-row">
						<label class="input select">
							<select name="position">
								<option value="none" selected disabled="">Choose position</option>
								<option value="student">Student</option>
								<option value="employee"> Employee</option>
								<option value="business"> Business</option>
							</select>
							<i></i>
						</label>
					</div>
					end position -->
					<!-- start city post code -->
					<div class="first-line agileits">
						<div class="span8 main-row">
							<div class="input">
								
								<input type="text" id="city" placeholder="City" name="city" required="">
							</div>
						</div>
						
					</div>
					<!-- end city post code -->

					<!-- start address -->
					<div class="main-row">
						<div class="input">
							
							<input type="text" id="address" placeholder="Address" name="address" required="">
						</div>
					</div>
					<!-- end address -->


					

					<!-- start message -->
					<div class="main-row">
						<div class="input">
							<textarea placeholder="Additional info" spellcheck="false" name="message"></textarea>
								<span class="tooltip tooltip-right-top">Key Skills</span>
						</div>
					</div>
					<!-- end message -->

					<!-- start files -->
					
						
						
					
					<!-- end files -->

			
				<!-- end /.content -->

				<div class="footer">
					<button type="submit" class="primary-btn">Send</button>
					<button type="reset" class="secondary-btn">Reset</button>
				</div>
				<!-- end /.footer -->

			</form>
		</div>
		<p class="copy_rights">&copy; 2016 Personal Profile Form Widget. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
</div>
		<!-- Scripts -->
		<script src="profilejs/jquery.1.11.1.min.js"></script>

		<!--[if lt IE 10]>
				<script src="j-folder/js/jquery.placeholder.min.js"></script>
			<![endif]-->

		<script>
			$(document).ready(function(){

				// Phone masking
				$('#phone').mask('(999) 999-9999', {placeholder:'x'});

				// Post code masking
				$('#post').mask('999-9999', {placeholder:'x'});

			});
		</script>
</body>
</html>