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
	<!-- page -->
	<div id="page" class="page">
	
	<section class="form-26">
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
                        </ul>
                    </nav>
                    <!-- //nav -->
                </div>
            </header>
            <!-- //header -->
			<div class="form-26-mian bg bg1" style="background-color: rgba(0, 0, 0, 0); margin-top: 0px; background-image: url(&quot;loginimages/411522.jpg&quot;);">
				<div class="layer">
					<div class="wrapper">
						<div class="form-inner-cont editContent">
							<div class="forms-26-info">
								<h2 class="editContent" style="outline: none; cursor: inherit;">Forgot Password</h2>
								<p></p>
							</div>
							<div class="form-right-inf editContent" style="outline: none; cursor: inherit;">
								<form action="User_masterController" method="post" class="signin-form">
									<div class="forms-gds editContent" style="outline: none; cursor: inherit;">
										<div class="form-input editContent" style="outline: none; cursor: inherit;">
											<input type="email" name="email" placeholder="Email" required="">
										</div>
						
										<div class="form-input editContent" style="outline: none; cursor: inherit;"><input type="submit" id="confirm" class="btn btn-primary" name="action" id="action" style="outline: none; cursor: inherit; background-color: red;border: red" value="Send OTP"></div>
									</div>
									<h6 class="already editContent" style="outline: none; cursor: inherit;"> Dont have an account? <a href="register.jsp"><span class="editContent" style="outline: none; cursor: inherit;">Register Here<span></span></span></a></h6>
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