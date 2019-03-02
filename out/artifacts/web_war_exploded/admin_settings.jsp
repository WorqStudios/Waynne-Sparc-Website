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
            <a href=""><i class="fa fa-user icon"></i></a> <b style="margin-left:10px;color:#ffffff">Agent</b>
        </td>
        <td style="background-color:#5cdb95;">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <h1 style="margin-left:10px;color:#ffffff"><b>VERIFICATION PANEL<b></h1>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <input type="text" placeholder="Search.." class="form-control"
                           style="margin-top: 20px; float: right; width: 60%; margin-right: 20px;">
                </div>

            </div>
        </td>
    </tr>
    <tr>
        <td width="25%" style="background-color:#05386b">
            <br>
            <div>
                <a href="admin_home.jsp" class="btn menu" role="button"
                   style="padding-left:62px; padding-right:62px; margin-left: 25px;">Home</a>
                <a class="activemenu" href="admin_home.html"><i class="fa fa-home icon"></i></a>
            </div>
            <br>
            <div>
                <a href="add.html" class="btn menu" role="button">Add New</a>
                <a href="add.html"><i class="fa fa-plus icon"></i></a>
            </div>
            <br>
            <div>
                <a href="admin_settings.html" class="btn menu" role="button"
                   style="background-color:#5cdb95;color: #ffffff;padding-left: 54px; padding-right: 54px;">Settings</a>
                <a href="admin_settings.html" class="activemenu"><i class="fa fa-cog icon"></i></a>

            </div>
            <br>
            <br>
        </td>
        <td width="75%">
            <table align="left">
                <tr>
                    <td align="center">
                        <a href=""><i style="font-size: 200px; margin-left: 15px;" class="fa fa-user icon"></i></a>
                    </td>
                    <td><h3 style="float:left">Abdulrahman Musa</h3></td>
                    <br>
                </tr>
                <tr>
                    <td align="">
                    <td style="background-color:#05386b;" width="40%">
                        <h3 style="color:#ffffff;">DETAILS</h3>
                        <p style="text-align:center;color:#ffffff;">Role: Registration Admin <br>Name: Abdulrahman Garba
                            <br>ID Number: A0015834 <br>Email:abdulmusa@gmail.com <br>Mobile: +44078949473</p>
                    </td>
                    <td style="background-color:#5cdb95;" width="40%">
                        <form action="changePasswordServlet" method="post">
                            <h2>Change Password</h2>
                            <div class="form-group">
                                <p style="text-align:center"><b>Enter Old Password:</b></p><input class="form-control"
                                                                                                  style="width:80%; margin-left: 30px;"
                                                                                                  placeholder="Enter Old Password:"
                                                                                                  type="text"
                                                                                                  name="old_password"
                                                                                                  required/>
                            </div>
                            <div class="form-group">
                                <p style="text-align:center"><b>Enter New Password:</b></p><input class="form-control"
                                                                                                  style="width:80%; margin-left: 30px;"
                                                                                                  placeholder="Enter New Password:"
                                                                                                  type="text"
                                                                                                  name="new_password"
                                                                                                  required/>
                            </div>
                            <div class="form-group">
                                <p style="text-align:center"><b>Re-Enter New Password:</b></p><input
                                    class="form-control" style="width:80%; margin-left: 30px;"
                                    placeholder="Re-Enter New Password:" type="text" name="re_new_password" required/>
                            </div>
                            <div>
                                <input type="submit" id="changepassword" value="Change Password" class="btn"
                                       style="background-color:#05386b;color:#ffffff;">
                            </div>
                            <br>
                        </form>
                    <td>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

</body>
<footer>
    <p style="text-align:center">Copyright 2018. All Rights Reserved</p>
</footer>
</html>