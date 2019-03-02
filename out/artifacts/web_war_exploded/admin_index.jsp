<%@ page import="com.waynnesparc.enums.EUserType" %>
<%@ page import="com.waynnesparc.utils.Constants" %>
<%@ page import="com.waynnesparc.utils.GeneralUtility" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE HTML>
<html>

<%
    try
    {
        GeneralUtility.loadAllItemsIfNull();
    } catch (SQLException e)
    {
        e.printStackTrace();
    }

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
<div class="container" style="padding-top:110px">
    <div class="jumbotron classjumbotron">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6">
                <h1 align="center">Wynne Sparc <br> Admin<br> Portal<br></h1>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 formdiv">
                <form>
                    <div class="form-group">
                        <input class="form-control" id="username" placeholder="Username" type="text" required/>
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="password" placeholder="Password" type="password" required/>
                    </div>
                    <div>

                        <a href="admin_registration.jsp" id="forgotpass">Add new Admin</a>

                        <input type="submit" id="login" value="LOG IN" class="btn submit">
                        <a href="admin_forgotpassword.jsp" id="forgotpass">Forgot Password?</a>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
</div>
</body>
<footer>
    <p style="text-align:center">Copyright 2018. All Rights Reserved</p>
</footer>
</html>
