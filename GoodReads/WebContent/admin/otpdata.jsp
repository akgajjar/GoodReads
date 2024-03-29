
<%@page import="com.goodreads.bin.user_master"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>GoodReads</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.premium.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
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
  
    <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
            <!-- Logo & Information Panel-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <h1>GoodReads</h1>
                  </div>
                  <p>Goodreads is like an e- bookstore website where books can be bought from the
comfort of home through the Internet. This Website aims to provide books to
needy person on rent and also buy it .Seller can sell used or new books on this
platform. An online bookstore is a virtual store on the Internet where customers
can browse the catalogue and select books of interest. User can select many books
and those books stored in cart.</p>
                  
                </div>
              </div>
            </div>
            <!-- Form Panel    -->
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                  <form method="post" class="form-validate" action="../user_masterAdminController">
                    <%
                    if(session.getAttribute("error")!=null)
                    {
                    	String error = (String) session.getAttribute("error");
                    	session.removeAttribute("error");
                    	%>
                   		 <div class="form-group">
                      <label for="login-username" class="label-material" id="error"><%=error %></label>
                    </div>
                    	
                    	<%
                    }
                    %>
                    <div class="form-group">
                      <input id="login-username" type="text" name="otp" required data-msg="Please enter your Otp" class="input-material">
                      <label for="login-username" class="label-material">Otp</label>
                    </div>
                    <input type="submit" id="enterotp" name="action" class="btn btn-primary" value="Confirm Otp">
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>