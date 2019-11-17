<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
 -->
<!-- registrationcss -->
<!-- <link rel="stylesheet" href="css/registrationcss/css/style.css">

 -->
<link href="css/registrationcss/stureg.css" rel='stylesheet'
	type='text/css' media="all" />
</head>
<jsp:include page="header.jsp"/>
<body
	style="background: url(css/image/back2.jpeg) no-repeat; background-size: cover; font-family: 'PT Sans', sans-serif; background-attachment: fixed; background-position: center;">



	<br>
	<h1>
		<b><font color="white">Add Admin</font></b>
	</h1>
	<br />
	<div class="w3l-main">
		<div class="w3l-from">
			<form action="user_masterAdminController" method="post" name="adminreg"
				id="adminreg" >

				<div class="w3l-user">
					<label class="head">First Name<span class="w3l-star">
							* </span></label> <input type="text" name="fname" id="fname" autocomplete="off">
					<span id="a1"></span>
				</div>

				<div class="w3l-user">
					<label class="head">Middle name<span class="w3l-star">
							* </span></label> <input type="text" name="mname" id="mname" autocomplete="off">
					<span id="a1"></span>
				</div>

				<div class="w3l-user">
					<label class="head">Last name<span class="w3l-star">
							* </span></label> <input type="text" name="lname" id="lname" autocomplete="off">
					<span id="a1"></span>
				</div>
				<div class="w3l-user">
					<label class="head">Mobile No<span class="w3l-star">
							* </span></label> <input type="text" name="lname" id="lname" autocomplete="off">
					<span id="a1"></span>
				</div>
				<label class="head">Gender<span class="w3l-star"> * </span></label>
				<select class="category2" name="gender">
					<option value="">Gender</option>
					<option value="male">Male</option>
					<option value="female">Female</option>

				</select>
				<div class="w3l-user">
					<label class="head">Email Id<span class="w3l-star">
							* </span></label> <input type="text" name="emailid" id="emailid"
						autocomplete="off"> <span id="a1"></span>
				</div>

				<div class="w3l-user">
					<label class="head">Password<span class="w3l-star">
							* </span></label> <input type="password" name="password" id="password">
				</div>

				<div class="w3l-user">
					<label class="head">Confirm Password<span class="w3l-star">
							* </span></label> <input type="password" name="confirmpassword">
				</div>

				<div class="w3l-user">
					<label class="head">Address 1<span class="w3l-star">
							* </span></label> <input type="text" name="address1" id="address2"
						autocomplete="off"> <span id="a1"></span>
				</div>
				<div class="w3l-user">
					<label class="head">Address 2<span class="w3l-star">
							* </span></label> <input type="text" name="address2" id="address2"
						autocomplete="off"> <span id="a1"></span>
				</div>

				<div class="w3l-user">
					<label class="head">City<span class="w3l-star"> * </span></label> <input
						type="text" name="city" id="city" autocomplete="off"> <span
						id="a1"></span>
				</div>
				<div class="w3l-user">
					<label class="head">State<span class="w3l-star"> * </span></label>
					<input type="text" name="State" id="State" autocomplete="off">
					<span id="a1"></span>
				</div>
				<div class="w3l-user">
					<label class="head">Pincode<span class="w3l-star"> *
					</span></label> <input type="text" name="pincode" id="pincode" autocomplete="off">
					<span id="a1"></span>
				</div>

				<center>
					<div class="btn">
						<input type="submit" name="action" id="btnform"
							value="Add Admin" />
					</div>
				</center>

				<center>
					<div class="btn">
						<input type="reset" name="action" value="Reset" />
					</div>
				</center>

			</form>

		</div>

	</div>


</body>
</html>