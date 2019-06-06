<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Home_Login" %>

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
                        
                        </form>
                    </div>
                </div>
                <div class="forms mt-md-0 mt-2">
                    <a href="login.html" class="btn"><span class="fa fa-user-circle-o"></span> Login</a>
                   
                </div>
            </div>
            <nav class="text-center">
                <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                <input type="checkbox" id="drop" />
                <ul class="menu">
                    <li><a href="Home.aspx" style="    margin-left: -886px;">Home</a></li>
                 
                </ul>
            </nav>
            <!-- //nav -->
        </div>
    </header>
   
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
            <h3 class="title-w3pvt text-center">Login Now</h3>

            <div class="login px-sm-4 mx-auto mw-100 login-wrapper" style="    width: 449px;">
             
                   

                    <div class="form-group">
                        <label class="mb-2">Username</label>
                        <asp:TextBox ID="txtusername" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                      <div class="form-group">
                        <label class="mb-2">Password</label>
                        <asp:TextBox ID="txtpassword" class="form-control" TextMode="Password"  type="text" runat="server"></asp:TextBox>
                    </div>
                    <%--<button type="submit" class="btn btn-primary submit mt-2 read-more">Sign Up</button>--%>
                    <asp:Button ID="Button1" runat="server" Text="Login"  class="btn btn-primary submit mt-2 read-more" OnClick="Button1_Click"  />
                    <p class="text-center mt-4">
                       

                    </p>
                <asp:Label ID="Label1" Font-Bold="true" runat="server" Text="Label"></asp:Label>
            </div>




        </div>
    </section>
  
    </div>
    </form>
</body>
</html>
