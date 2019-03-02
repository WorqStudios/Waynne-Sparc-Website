<%@ page import="com.waynnesparc.enums.EUserType" %>
<%@ page import="com.waynnesparc.utils.Constants" %>
<%@ page import="com.waynnesparc.utils.GeneralUtility" %>
<!DOCTYPE HTML>
<html>

<%
    if (!GeneralUtility.getCurrentUser().userType.equals(EUserType.ADMIN) &&
            !GeneralUtility.getCurrentUser().userType.equals(EUserType.SUPER_ADMIN))
    {
        response.sendRedirect(Constants.homePageName);
    }
%>

<head>
    <title>Wynne Sparc</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body text-color:#efefef>
<table border="1" class="container " id="hometable" style="">
    <tr>
        <td style="background-color:#05386b;">

        </td>
        <td style="background-color:#5cdb95;">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <h2 style="margin-left:10px;color:#ffffff"><b>REGISTRATION<b></h2>
                </div>

            </div>
            </div>
        </td>
    </tr>
    <tr>
        <td width="25%" style="background-color:#05386b">

        </td>
        <td width="75%">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-5" style="margin-left:10px">
                    <h3><b>Registration Information</b></h3>
                    <form method="post" action="createUserServlet">
                        <div class="form-group">

                            <input type="text" value="ADMIN" name="user_type" class="form-control" placeholder="user_type" hidden><br>
                            <input type="text" name="username" class="form-control" placeholder="Username" required><br>
                            <input type="text" name="fname" class="form-control" placeholder="First Name" required><br>
                            <input type="text" name="lname" class="form-control" placeholder="Last Name" required><br>
                            <input type="number" name="phone" class="form-control" placeholder="Phone Number"
                                   required><br>
                            <input type="text" name="address" class="form-control" placeholder="Address" required><br>
                            <input type="date" name="dob" class="form-control" placeholder="Date Of Birth" required><br>

                            <br>
                            <br>

                            <h2>Login information</h2>
                            <input type="email" name="email" class="form-control" placeholder="Email Address"
                                   required><br>
                            <input type="password" name="password" class="form-control" placeholder="Password" required><br>
                            <input type="password" name="re_password" class="form-control"
                                   placeholder="Confirm Password" required><br>
                            <input type="submit" name="Create Admin"/> <br/>
                        </div>
                    </form>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-5" style="float:right; margin-right: 15px;">
                </div>

            </div>
    </tr>
    <tr>
        <td width="25%" style="background-color:#05386b"></td>
        <td>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-5" style="margin-left:10px">

                    <form>

                    </form>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-5" style="float:right;margin-top:100px">

                </div>
            </div>
        </td>

        <br>
        <br>
        </td>
    </tr>
</table>
</body>
<footer>
    <p style="text-align:center">Copyright 2018. All Rights Reserved</p>
</footer>
</html>