﻿<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="register.aspx.cs" Inherits="Home_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="../sweetalert.min.js"></script>
    <meta charset="UTF-8" />
    <meta name="keywords" content="Yoga Lite Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

    </script>
    <!-- //Meta tag Keywords -->
    <!-- Custom-Files -->
    <link rel="stylesheet" href="Hometemp/web/css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="Hometemp/web/css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="Hometemp/web/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="Hometemp/web///fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- //header -->
    <header class="py-sm-3 pt-3 pb-2" id="home">
        <div class="container">
            <!-- nav -->
            <div class="top d-md-flex">
                <div id="logo">
                     <h1> <a href="Home.aspx"><span class="fa fa-yoast"></span>Characterizing and Predicting Early Reviewers
for Effective Product Marketing on E-Commerce
Websites
</a></h1>
                </div>
                <div class="search-form mx-md-auto">
                    <div class="form-w3layouts-grid">
                        <form action="#" method="post" class="newsletter">
                          <%--  <input class="search" type="search" placeholder="Search..." required="">
                            <button class="form-control btn" value=""><span class="fa fa-search"></span></button>--%>
                        </form>
                    </div>
                </div>
                <div class="forms mt-md-0 mt-2">
                    <a href="Login.aspx" class="btn"><span class="fa fa-user-circle-o"></span> Login</a>
                    <%--<a href="register.html" class="btn"><span class="fa fa-pencil-square-o"></span> Sign Up</a>--%>
                </div>
            </div>
            <nav class="text-center">
                <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                <input type="checkbox" id="drop" />
                <ul class="menu">
                    <li><a href="Home.aspx">Home</a></li>
                    <%--<li><a href="about.html">About Us</a></li>--%>
                    <%--<li>
                        <!-- First Tier Drop Down -->
                        <label for="drop-2" class="toggle">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span>
                        </label>
                        <a href="#">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span></a>
                        <input type="checkbox" id="drop-2" />
                        <ul>
                            <li><a href="services.html" class="drop-text">Services</a></li>
                            <li><a href="index.html" class="drop-text">Statistics</a></li>
                            <li><a href="index.html" class="drop-text">Reviews</a></li>
                            <li><a href="single.html" class="drop-text">More Info</a></li>

                        </ul>
                    </li>--%>

                   <%-- <li><a href="events.html">Events</a></li>
                    <li><a href="contact.html">Contact</a></li>--%>
                </ul>
            </nav>
            <!-- //nav -->
        </div>
    </header>
    <!-- //header -->
    <%--<div class="main-content inner">
        <%--<div class="overlay inner">

        </div>--%>
   <%-- </div>--%>
    <!--// banner -->
    <!-- banner-bottom -->
         <script type="text/javascript" >

            function success() {
                swal({
                    title: "Successfully Registered",
                    text: "Success!",
                    icon: "success",
                    button: "OK",
                });
            }
          
        </script>
    <section class="contact-main py-5" style="margin-top: -110px;">
        <div class="container py-md-5">
            <h3 class="title-w3pvt text-center">Signup Now</h3>

            <div class="login px-sm-4 mx-auto mw-100 login-wrapper" style="    width: 449px;">
             
                    <div class="form-group">
                        <label>Name</label>
                        <%--<input class="form-control" type="text" name="Name" placeholder="" required="">--%>
                        <asp:TextBox ID="txtname" class="form-control" type="text" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label>Email</label>
                        
                         <asp:TextBox ID="txtemail" class="form-control" TextMode="Email" type="text" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label class="mb-2">Username</label>
                        <asp:TextBox ID="txtusername" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                      <div class="form-group">
                        <label class="mb-2">Password</label>
                        <asp:TextBox ID="txtpassword" class="form-control" TextMode="Password"  type="text" runat="server"></asp:TextBox>
                    </div>
                    <%--<button type="submit" class="btn btn-primary submit mt-2 read-more">Sign Up</button>--%>
                    <asp:Button ID="Button1" runat="server" Text="Register"  class="btn btn-primary submit mt-2 read-more" OnClick="Button1_Click1" />
                    <p class="text-center mt-4">
                       

                    </p>
                
            </div>




        </div>
    </section>
    <!-- //banner-bottom -->
    <!--/help-line -->
    <%--<section class="help-line-w3layouts py-5">
        <div class="container">
            <div class="row help-line-grid">
                <div class="col-sm-6">
                    <h3>Contact Us</h3>
                    <p>Call us, we are 24/7 Helpline</p>
                </div>
                <div class="col-sm-6 text-sm-right mt-sm-0 mt-3">
                    <h3><span class="fa fa-phone" aria-hidden="true"></span> +11 2345 6789</h3>
                </div>
            </div>
        </div>
    </section>--%>
    <!--//help-line -->
    <!-- footer -->
    <%--<footer class="footer-content py-5">
        <div class="container-fluid py-lg-5 inner-sec-w3ls">
            <div class="row">
                <div class="col-lg-4 footer-top mt-md-0 mt-sm-5 pr-lg-5">
                    <h2>
                        <a class="navbar-brand" href="index.html">
                            <span class="fa fa-yoast"></span>oga Lite</a>
                    </h2>
                    <p class="my-3">Donec consequat sam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus</p>

                </div>
                <div class="col-lg-3 mt-md-0 mt-5">
                    <div class="footer-w3pvt">
                        <h3 class="mb-3 w3pvt_title">Navigation</h3>
                        <hr>
                        <div class="row">
                            <ul class="col-6 list-info-w3pvt links">

                                <li>
                                    <a href="events.html">
                                        Home
                                    </a>
                                </li>
                                <li>
                                    <a href="about.html">
                                        About Us
                                    </a>
                                </li>
                                <li>
                                    <a href="events.html">
                                        Events
                                    </a>
                                </li>
                                <li>
                                    <a href="services.html">
                                        Services
                                    </a>
                                </li>
                                <li>
                                    <a href="contact.html">
                                        Contact Us
                                    </a>
                                </li>

                            </ul>
                            <ul class="col-6 list-info-w3pvt links">
                                <li>
                                    <a href="about.html">
                                        Our Mission
                                    </a>
                                </li>
                                <li>
                                    <a href="events.html">
                                        Latest Posts
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        Explore
                                    </a>
                                </li>
                                <li>
                                    <a href="contact.html">
                                        Find us
                                    </a>
                                </li>
                                <li>
                                    <a href="events.html">
                                        Privacy Policy
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>

                <div class="col-lg-2 mt-lg-0 mt-5">
                    <div class="footer-w3pvt">
                        <h3 class="mb-3 w3pvt_title">Contact Us</h3>
                        <hr>
                        <div class="last-w3layouts-contact">
                            <p>
                                <a href="mailto:example@email.com">info@example.com</a>
                            </p>
                        </div>
                        <div class="last-w3layouts-contact my-2">
                            <p>+ 456 123 7890</p>
                        </div>
                        <div class="last-w3layouts-contact">
                            <p>+ 90 nsequursu dsdesdc,
                                <br>xxx Honey State 049436.</p>
                        </div>
                    </div>
                </div>
                  <div class="col-lg-3 mt-lg-0 mt-5">
                    <div class="footer-w3pvt">
                        <h3 class="mb-3 w3pvt_title">Stay up to date</h3>
                        <hr>
                        <div class="footer-text">
                            <p>By subscribing to our mailing list you will always get latest news and updates from us.</p>
                            <form action="#" method="post">
                                <input type="email" name="Email" placeholder="Enter your email..." required="">
                                <button class="btn1 btn"><span class="fa fa-paper-plane-o" aria-hidden="true"></span></button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </footer>--%>
    <!-- //footer -->
    <%--<div class="copy-right py-2">
        <div class="container-fluid inner-sec-w3ls">
            <div class="row">
                <div class="col-lg-6 copy-w3pvt">
                    <p class="copy-right-grids text-li text-left my-sm-4 my-4">© 2019 Yoga Lite. All Rights Reserved | Design by
                        <a href="http://w3layouts.com/"> W3layouts </a>
                    </p>
                </div>
                <div class="col-lg-5 w3layouts-footer text-right">
                    <ul class="social_section_1info">
                        <li class="mb-2 facebook"><a href="#"><span class="fa fa-facebook"></span> facebook</a></li>
                        <li class="mb-2 twitter"><a href="#"><span class="fa fa-twitter"></span> twitter</a></li>
                        <li class="google"><a href="#"><span class="fa fa-google-plus"></span> google</a></li>
                        <li class="linkedin"><a href="#"><span class="fa fa-linkedin"></span> linkedin</a></li>
                    </ul>
                </div>
                <div class="move-top col-1"><a href="#home" class="move-top"> <span class="fa fa-angle-up" aria-hidden="true"></span></a></div>
            </div>
            <!-- //footer bottom -->
        </div>
    </div>--%>

    </div>
    </form>
</body>
</html>