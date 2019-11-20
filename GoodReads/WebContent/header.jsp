<%@page import="com.goodreads.bin.user_master"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <!--// Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
  <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
    <!-- //Fonts -->
<title>Insert title here</title>
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
                            <li><a href="profile.jsp" style="outline: none; cursor: inherit;">Profile</a></li>
                            <li>
                                <!-- First Tier Drop Down -->
                                <label for="drop-2" class="toggle">Drop Down <span class="fa fa-angle-down" aria-hidden="true" style="outline: none; cursor: inherit;"></span> </label>
                                <a href="#" style="outline: none; cursor: inherit;">Drop Down <span class="fa fa-angle-down" aria-hidden="true" style="outline: none; cursor: inherit;"></span></a>
                                <input type="checkbox" id="drop-2">
                                <ul>
                                    <li><a href="blog.html" style="outline: none; cursor: inherit;">Profile</a></li>
                                    <li><a href="shop.html" style="outline: none; cursor: inherit;">Shop Now</a></li>
                                    <li><a href="shop-single.html" style="outline: none; cursor: inherit;">Single Page</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.html" style="outline: none; cursor: inherit;">Contact</a></li>
                              

  <%
							
							if(session.getAttribute("email")==null) { 
							%>
							 
							 <li><a href="login.jsp" style="outline: none; cursor: inherit;">Login</a></li>
							</li>
									<%}
					
							else
							{
								user_master u=null;
								if(session.getAttribute("user")!=null)
								{
								 u = (user_master)session.getAttribute("user");
								
								}
								
							%>
							
							<li ><a href="logout.jsp">logout</a>
							</li>
							<%
							
							} %>
							</ul>




                            
                            
                            
                           
                            
                      
                           
                        </ul>
                    </nav>
                    <!-- //nav -->
                </div>
            </header>
            <!-- //header -->
                            
                            
</body>
</html>