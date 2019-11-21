<%@page import="com.goodreads.bin.user_master"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    
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
    				user=(user_master) session.getAttribute("user");
    			}
    			else
    			{

    				response.sendRedirect("login.jsp");
    			}
    			
    		}
    		else
    		{

				response.sendRedirect("login.jsp");
    		}
    		
  
  %>
<jsp:include page="header.jsp" />
<div class="content-inner">
	<header class="page-header">
		<div class="container-fluid">
			<h2 class="no-margin-bottom">Add Admin</h2>
		</div>
	</header>

	<!-- Breadcrumb-->
	<div class="breadcrumb-holder container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="admin/index.jsp">Home</a></li>
			<li class="breadcrumb-item active">Add Admin</li>
		</ul>
	</div>

	<section class="forms">
		<div class="container-fluid">
			 <div class="col-lg-12">
                  <div class="card">
			<div class="card-header d-flex align-items-center">
					<h3 class="h4">Add admin</h3>
				</div>
			<div class="row">
				
				
				<div class="card-body">
					<form class="form-horizontal" method="post"
						action="../user_masterAdminController">

						<div class="form-group row">
							<label class="col-sm-3 form-control-label" >First Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="fname"
									style="width: 50%">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label">Middle Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="mname"
									style="width: 50%">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label">Last Name</label>
							<div class="col-sm-9">
								<input type="text" style="width: 50%" class="form-control"
									name="lname">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label">Gender</label>
							<div class="col-sm-9">
								<select name="gender" class="form-control mb-3"
									style="width: 50%">
									<option value="">--Select Gender--</option>
									<option value="MALE">Male</option>
									<option value="FEMALE">Female</option>
								</select>
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label">Mobile No</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" style="width: 50%"
									name="mobileno">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label">Email Id</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="email"
									style="width: 50%">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label">Password</label>
							<div class="col-sm-9">
								<input type="password" name="password" class="form-control"
									style="width: 50%">
							</div>
						</div>
						<br />
						<br />
						<div class="form-group row">
							<label class="col-sm-3 form-control-label">Confirm
								Password</label>
							<div class="col-sm-9">
								<input type="password" name="confirmpassword"
									class="form-control" style="width: 50%">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label" for="address1">Address
								1</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="address1"
									style="width: 50%">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label" for="address2">Address
								2</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="address2"
									style="width: 50%">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label">City</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="city"
									style="width: 50%">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label" style="width: 50%">State</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="state"
									style="width: 50%">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<label class="col-sm-3 form-control-label">Pincode</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="pincode"
									style="width: 50%">
							</div>
						</div>
						<div class="line"></div>
						<div class="form-group row">
							<div class="col-sm-4 offset-sm-3">
								<input type="submit" class="btn btn-primary" name="action"
									value="Add Admin"> <input type="reset"
									class="btn btn-secondary" name="action" value="Cancel">

							</div>
						</div>


					</form>
					</div>
				</div>
				</div>
			</div>
		</div>
	</section>
</div>

<jsp:include page="footer.jsp"></jsp:include>