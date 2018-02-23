<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

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

<body>
    <div class="container-fluid">
        <div class="col-sm-12 col-md-12">
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
            <span class="pull-right"><img src="http://vignette2.wikia.nocookie.net/avengersalliance/images/4/4a/Spider-Man_Portrait_Art.png/revision/latest?cb=20131215113439" alt="Smiley face" height="300" width="150"></span>

            <!-- Customer Information -->
            <div class="card " style="margin: 0 100px 0 200px;">
                <form:form action="submitForm" method="POST">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">CUSTOMER INFORMATION</a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <br><input type="text" id="firstName" name="firstName" placeholder="FirstName" required> &nbsp;&nbsp;
                                    <input type="text" id="LastName" name="lastName" placeholder="LastName" required> &nbsp;&nbsp;
                                    <input type="text" id="Gender" name="gender" placeholder="Gender (M/F)" required> &nbsp;&nbsp;
                                    <input type="date" id="DOB" name="dateOfBirth" placeholder="Date Of Birth" required>
                                    <br><br>
                                    <input type="text" id="Age" name="age" placeholder="Age" required>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" id="email" name="email" placeholder="E-Mail" required>&nbsp;&nbsp;
                                    <input type="text" id="ssn" name="ssn" placeholder="SSN" required>&nbsp;&nbsp;&nbsp;
                                    <input type="text" id="phoneNumber" name="phoneNumber" placeholder="Phone Number" required>
                                    <br><br>
                                </div>
                            </div>
                        </div>
                        <!-- End of Company Information -->

                        <!-- Address Details -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">ADDRESS</a>
                                </h4>
                            </div>
                            <div id="collapse2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <input type="text" id="addressline1" name="address.addressline1" placeholder="Address Line1" required> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" id="addressline2" name="address.addressline2" placeholder="Address Line2" required > &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" id="city" name="address.city" placeholder="City" required> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" id="state" name="address.state" placeholder="State" required>
                                    <br><br>
                                    <input type="text" id="zipCode" name="address.zipCode" placeholder="ZipCode" required> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" id="country" name="address.country" placeholder="Country" required>
                                </div>
                            </div>
                        </div>


                        <!--End  Address Details -->

                        <!--FINANCIAL INFORMATION-->

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">FINANCIAL INFORMATION</a>
                                </h4>
                            </div>
                            <div id="collapse3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <input type="text" id="anualincome" name="finanical.anualIncome" placeholder="Annual Income" required> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" id="companyname" name="finanical.companyName" placeholder="Company Name" required> &nbsp;&nbsp;&nbsp;&nbsp;
                                </div>
                            </div>
                        </div>

                        <!-- End FINANCIAL INFORMATION -->
                        <br>
                <input type="submit" class="btn btn-labeled btn-success" value="Submit" />
                
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    <footer>
        <div class="footer-bottom" style="margin-top: 100px;">
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
