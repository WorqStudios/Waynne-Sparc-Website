<%@ page import="com.waynnesparc.utils.GeneralUtility" %>
<%@ page import="com.waynnesparc.enums.EUserType" %>
<%@ page import="com.waynnesparc.utils.Constants" %>
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
	<table border="1" class= "container " id="hometable" style="">
		<tr>
			<td style="background-color:#05386b">
				<a href=""><i class="fa fa-user icon"></i></a> <b style="margin-left:10px;color:#ffffff">Admin</b>
			</td>
			<td  style = "background-color:#5cdb95;">
				<div class="row">
					<div class = "col-xs-12 col-sm-12 col-md-6" >
						<h1 style="margin-left:10px;color:#ffffff"><b>Admin Home<b></h1>
					</div>
					<div class = "col-xs-12 col-sm-12 col-md-6">
						 <input type="text" placeholder="Search.." class="form-control" style= "margin-top: 20px; float: right; width: 60%; margin-right: 20px;">
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td width="25%" style="background-color:#05386b">
				<br>
				<div>
					<a href="admin_home.jsp" class="btn menu" role="button" style="background-color:#5cdb95;color: #ffffff;padding-left:62px; padding-right:62px; margin-left: 25px;">Home</a>
					<a class="activemenu" href="admin_home.jsp"><i class="fa fa-home icon"></i></a>
				</div> <br>
				<div>
					<a href="admin_add.jsp" class="btn menu" role="button">Add New</a>
					<a href="admin_add.jsp"><i class="fa fa-plus icon"></i></a>
				</div> <br>
				<div>
					<a href="index.jsp" class="btn menu" role="button" style="padding-left: 54px; padding-right: 54px;">Site</a>
					<a href="index.jsp"><i class="fa fa-cog icon"></i></a>
				</div> <br>
				<div>
					<a href="admin_registration.jsp" class="btn menu" role="button" style="padding-left: 59px; padding-right: 59px;">Register New Admin</a>
					<a href="admin_registration.jsp"><i class="fa fa-sign-out icon"></i></a>
				</div>
				<br>
			</td>
			<td width="75%">		
				<table class="table table-striped">
    				<thead>
      					<tr>
       						<th>Item ID</th>
       						<th>Item Name</th>
        					<th>Available Quantity</th>
        					<th>Price</th>
        					<th>Category</th>
      					</tr>
    				</thead>
    				<tbody>
      					<tr>
        					<td>0001</td>
        					<td>Brazillain WIG</td>
        					<td>53</td>
        					<td>Long fully lent wig</td>
        					<td>Hair</td>
      					</tr>
      					<tr>
       						<td>0001</td>
        					<td>Brazillain WIG</td>
        					<td>53</td>
        					<td>Long fully lent wig</td>
        					<td>Hair</td>
      					</tr>
      					<tr>
        					<td>0001</td>
        					<td>Brazillain WIG</td>
        					<td>53</td>
        					<td>Long fully lent wig</td>
        					<td>Hair</td>
      					</tr>
    				</tbody>
  				</table>
			</td>
		</tr>
	</table>

</body>
<footer>
	<p style="text-align:center">Copyright 2018. All Rights Reserved</p>
</footer>
</html>