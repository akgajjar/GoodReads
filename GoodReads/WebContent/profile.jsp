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
    <style type="text/css">
   #imageUpload
{
    display: none;
}

#profileImage
{
    cursor: pointer;
}

#profile-container {

    width: 150px;
    height: 150px;
    overflow: hidden;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
  
    
   
}

#profile-container img {
	
    width: 150px;
    height: 150px;
}
    </style>
    
</head>
<body>
<div class="form-26-mian bg bg1" style="background-color: rgba(0, 0, 0, 0); margin-top: 0px; background-image: url(&quot;loginimages/411522.jpg&quot;); background-size: 150%;">
			
<div class="header">
  <div >
        <%@include file="header.jsp" %>
        </div>
</div>
<div class="content">
		
		<div class="main w3l">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<div id="profile-container">
   <image id="profileImage" src="http://lorempixel.com/100/100" />
</div>
<input id="imageUpload" type="file" 
       name="profile_photo" placeholder="Photo" required="" capture>
			<br>
			<form class="contact-forms wthree" action="User_masterController" method="post">
				<!-- end /.header-->

					<!-- start name -->
					<div class="first-line agileits">
						<div class="span6 main-row">
							<div class="input">
								
									<%
								user_master u=new user_master();
							if(session.getAttribute("user")==null   ) 
							{
								response.sendRedirect("login.jsp");
							}
							else
							{
							u=(user_master)session.getAttribute("user");
							%>
							<input type="hidden" name="uid" value="<%=u.getU_Id()%>">
								
								<input type="text" id="first_name" name="fname" placeholder="First name" required="" value="<%=u.getU_Fname()%>">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								<input type="text" id="last_name" name="mname" placeholder="Middle name" required="" value="<%=u.getU_Mname()%>">
								
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								<input type="text" id="last_name" name="lname" placeholder="Last name" required="" value="<%=u.getU_Lname()%>">
								
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								<input type="email" placeholder="Email" id="email" name="email" required="" value="<%=u.getU_Email()%>">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								<input type="text" placeholder="Phone" id="mobile" name="mobile" required="" value="<%=u.getU_Mobile()%>">
							</div>
						</div>
							<div class="span6 main-row">
							<div class="input">
								
								<input type="text" placeholder="Pincode" id="pincode" name="pincode" required="" value="<%=u.getU_Pincode()%>">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
							</div>
						</div>
						
					</div>
					<!-- end name -->

					<!-- start email phone -->
					<div class="first-line agileits">
						
						
					</div>
					<div class="main-row">
						<div class="input">
							
							<input type="text" id="address" placeholder="Address1" name="add1" required="" value="<%=u.getU_Address1()%>">
						</div>
					</div>
					<div class="main-row">
						<div class="input">
							
							<input type="text" id="address" placeholder="Address2" name="add2" required="" value="<%=u.getU_Address2()%>">
						</div>
					</div>
				

				
					<!-- start city post code -->
					<div class="first-line agileits">
						<div class="span8 main-row">
							<div class="input">
								
								<input type="text" id="city" placeholder="City" name="city" required="" value="<%=u.getU_city()%>">
							</div>
						</div>
						<div class="span8 main-row">
							<div class="input">
								
								<input type="text" id="state" placeholder="State" name="state" required="" value="<%=u.getU_State()%>">
							</div>
						</div>
						
						<div class="main-row">
						<label class="input select">
							<select name="gender" value="<%=u.getU_Gender()%>">>
								<option value="none" selected disabled="">Gender</option>
								<option value="male">Male</option>
								<option value="female"> Female</option>
								
							</select>
							<i></i>
						</label>
					</div>
					</div>
				<%}%>
					<!-- end city post code -->

					<!-- start address -->
					
					<!-- end address -->


					

				

					<!-- start files -->
					
						
						
					
					<!-- end files -->

			
				<!-- end /.content -->

				<div class="footer">
					<input type="submit" class="primary-btn" color="red" name="action" value="update">
					
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
			$("#profileImage").click(function(e) {
			    $("#imageUpload").click();
			});

			function fasterPreview( uploader ) {
			    if ( uploader.files && uploader.files[0] ){
			          $('#profileImage').attr('src', 
			             window.URL.createObjectURL(uploader.files[0]) );
			    }
			}

			$("#imageUpload").change(function(){
			    fasterPreview( this );
			});
		</script>
		</div>
</body>
</html>
