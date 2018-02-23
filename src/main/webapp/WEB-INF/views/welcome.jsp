<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <!DOCTYPE html>
        <html lang="en">
        <head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="<c:url value="/resources/StyleSheet.css" />" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <title>Marvel CreditCard</title>
</head>
        <header>
            <div class="container-fluid">
                <img src="http://2.bp.blogspot.com/-CfcNNFkQgKg/VVA2-IZrYMI/AAAAAAAACW4/2UKFilGssf0/s1600/Marvel-comics-logo-vector.png" class="img-rounded" alt="LOGO" style="width: 150px;height: 100px;">
            </div>
        </header>

        <body bgcolor="#2D2D2D">
            <div class="container-fluid">
                <nav class="navbar navbar-default" role="navigation">
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="/marvelcreditcard">Home</a></li>
                            <li><a href="RegistrationForm">CreditCard</a></li>
                            <li><a href="/marvelcreditcard">Login</a></li>
                            <li><a href="SignIn">SignIn</a></li>
                        </ul>
                        <div class="col-sm-3 col-md-3">
                            <form class="navbar-form" role="search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search" name="q">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </nav>
                <!--End of Nav bar -->
                <div class="col-sm-3 col-md-3">
                    <form:form action="Login" method="POST">

                        <!-- Start Login  -->
                        <div class="card2" style="margin: 0 100px 0 0px;">
                            <div align="center">
                                <i class="fa fa-user-circle-o" style="font-size:80px"></i>
                            </div>
                            <br>
                            <br><input type="text" id="userID" placeholder="User Name" name="userName">
                            <br><br>
                            <input type="password" id="password" placeholder="Password" name="password"><br><br>
                            <input type="submit" value="LOGIN">
                            <hr>
                            <a href="SignIn">
                                <p>SignIn</p>
                            </a>
                            <a href="RegistrationForm">
                                <p>Apply Now</p>
                            </a>
                            <hr>
                            <a href="#">
                                <p>Learn more</p>
                            </a>

                        </div>
                        <!-- End Login -->
                    </form:form>
                </div>


                <div class="container-fluid">
                    <div class="col-md-9 pull-right">
                        <br>
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="https://ch04.rfecom.com/dualcardimages/dualcard/marvel/en/images/marvel_eservice_login.gif" alt="img-1" width="350" height="300">
                                </div>

                                <div class="item">
                                    <img src="http://i.annihil.us/u/prod/marvel/html_pages_assets/mmc-landing/images/bg-benefits-c82ed8863c.png" alt="img-2" width="350" height="300">
                                </div>
                            </div>

                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <footer>

                <div class="footer-bottom" style="margin-top: 285px;">
                    <div class="container-fluid">
                        <p align="center"> Copyright <i class="fa fa-copyright" style="font-size:20px"> </i> All right reserved.&nbsp;&nbsp;&nbsp;&nbsp; </p>
                        <div class="col-md-12 " align="center">

                            <a href="#"> <i class=" fa fa-facebook" style="font-size:20px"> &nbsp;&nbsp;  </i> </a>

                            <a href="#"> <i class="fa fa-twitter" style="font-size:20px"> &nbsp;&nbsp;  </i> </a>

                            <a href="#"> <i class="fa fa-google-plus" style="font-size:20px"> &nbsp;&nbsp;  </i> </a>

                            <a href="#"> <i class="fa fa-pinterest" style="font-size:20px"> &nbsp;&nbsp;  </i> </a>

                            <a href="#"> <i class="fa fa-youtube" style="font-size:20px"> &nbsp;&nbsp;  </i> </a>

                        </div>
                    </div>
                </div>
                <!--/.footer-bottom-->
            </footer>
        </body>

        </html>
