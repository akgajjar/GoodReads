<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="page">
	<div class="content-inner">
        
		<jsp:include page="header.jsp" />
		<section class="forms">
			<div class="container-fluid">
				<div class="row">
				
					<div class="card-body">
						<form class="form-horizontal">
						
						<div class="form-group row">
                          <label class="col-sm-3 form-control-label">First Name</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="fname">
                          </div>
                        </div>
                        <div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Middle Name</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="mname">
                          </div>
                        </div>
                        <div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Last Name</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="lname">
                          </div>
                        </div>
                        <div class="line"></div>
						<div class="form-group row">
                          <label class="col-sm-3 form-control-label">Mobile No</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="mobileno">
                          </div>
                        </div>
                        <div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Email Id</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="email">
                          </div>
                        </div>
						<div class="line"></div>
						<div class="form-group row">
                          <label class="col-sm-3 form-control-label">Password</label>
                          <div class="col-sm-9">
                            <input type="password" name="password" class="form-control">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Confirm Password</label>
                          <div class="col-sm-9">
                            <input type="password" name="confirmpassword" class="form-control">
                          </div>
                        </div>
						<div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label" for="address1">Address 1</label>
                          <div class="col-sm-9">
                          <textarea class="form-control" rows="5" id="address1" name="address1"></textarea>
                          </div>
                        </div>
						<div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label" for="address2">Address 2</label>
                          <div class="col-sm-9">
                          <textarea class="form-control" rows="5" id="address2" name="address2"></textarea>
                          </div>
                        </div>
						   <div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">City</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="city">
                          </div>
                        </div>
					   <div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">State</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="state">
                          </div>
                        </div>
                           <div class="line"></div>
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Pincode</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="pincode">
                          </div>
                        </div>
						<div class="line"></div>
                        <div class="form-group row">
                          <div class="col-sm-4 offset-sm-3">
                          <input type="submit" class="btn btn-primary" value="Add Admin">
                            <input type="reset" class="btn btn-secondary" value="Cancel">
                            
                          </div>
                        </div>
						

						</form>
					</div>
				</div>
			</div>
		</section>

	</div>
</div>

</body>
<jsp:include page="footer.jsp" />
</html>
		