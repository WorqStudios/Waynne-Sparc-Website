<%@ page import="com.waynnesparc.utils.GeneralUtility" %>
<%@ page import="com.waynnesparc.enums.EUserType" %>
<%@ page import="com.waynnesparc.utils.Constants" %>
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
<div class= "container classjumbotron" style="margin: 100px; padding-bottom: 130px;border-radius: 4px;">
	<h3 align="center">Forgot Password</h3>
			<div class = "col-xs-12 col-sm-12 col-md-6 formdiv" style="margin-left:25%;">
					<form>
						<div class="form-group"> 
   							<p>Agent Name: </p><input class="form-control" id="agentname" placeholder="Agent Name:" type="text" required/>
 						</div>
 						<div class="form-group">
   							<p>Agent ID: </p><input class="form-control" id="agentid" placeholder="Agent ID" type="text" required/>
 						</div>
 						<div class="form-group">
   							<p>Agent Company Email: </p><input class="form-control" id="agentemail" placeholder="Agent Company Email" type="text" required/>
 						</div>
 						<br/>
						<div>
							<input type="submit" value="Reset Password" class="btn submit" id="resetpassword">
						</div>
						
					</form>
			</div>
</div>
</body>
<footer>
	<p style="text-align:center">Copyright 2018. All Rights Reserved</p>
</footer>
</html>