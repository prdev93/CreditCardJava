<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>CreditCard Application</title>
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
        </div>
        <!--End of Nav bar -->
        <div class="container-fluid" align="center">
        <div class="card3" style="margin-top: 50px;align="center">
        <h3>Failed to submit.Please enter valid information</h3>
        <br>
        <i class="fa fa-frown-o" style="font-size:100px"></i>
        </div>
        </div>
        <footer>
        <div class="footer-bottom" style="margin-top: 160px;">
            <div class="container-fluid">
                <p align="center"> Copyright <i class="fa fa-copyright"> </i> All right reserved.&nbsp;&nbsp;&nbsp;&nbsp; </p>
                <div class="col-md-12 " align="center">

                    <a href="#"> <i class=" fa fa-facebook"> &nbsp;&nbsp;  </i> </a>
                    <a href="#"> <i class="fa fa-twitter"> &nbsp;&nbsp;  </i> </a>
                    <a href="#"> <i class="fa fa-google-plus"> &nbsp;&nbsp;  </i> </a>
                    <a href="#"> <i class="fa fa-pinterest"> &nbsp;&nbsp;  </i> </a>
                    <a href="#"> <i class="fa fa-youtube"> &nbsp;&nbsp;  </i> </a>

                </div>
            </div>
        </div>
        <!--/.footer-bottom-->
    </footer>
    </body>
</html>
