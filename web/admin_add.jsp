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
            <a href=""><i class="fa fa-user icon"></i></a> <b style="margin-left:10px;color:#ffffff">Admin</b>
        </td>
        <td style="background-color:#5cdb95;">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <h2 style="margin-left:10px;color:#ffffff"><b>ADD NEW ITEM<b></h2>
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
                <a href="dmin_home.jsp"><i class="fa fa-home icon"></i></a>
            </div>
            <br>
            <div>
                <a href="dmin_home.jsp" class="btn menu" role="button" style="background-color:#5cdb95;color: #ffffff;">Add
                    Item</a>
                <a href="dmin_add.jsp" class="activemenu"><i class="fa fa-plus icon"></i></a>
            </div>
            <br>
            <div>
                <a href="index.jsp" class="btn menu" role="button"
                   style="padding-left: 54px; padding-right: 54px;">Site</a>
                <a href="index.jsp"><i class="fa fa-cog icon"></i></a>
            </div>
            <br>
            <div>
                <a href="admin_index.jsp" class="btn menu" role="button"
                   style="padding-left: 59px; padding-right: 59px;">Logout</a>
                <a href="admin_index.jsp"><i class="fa fa-sign-out icon"></i></a>
            </div>
            <br>
        </td>
        <td width="75%">
            <div class="row">
                <div>
                    <div class="col-xs-12 col-sm-12 col-md-5" style="margin-left:10px">
                        <h3><b></b></h3>
                        <div class="form-group">
                            <form action="createItemServlet" method="post">
                                <!--
                             <p><b> Item ID</b> </p><input class="form-control" name="item_uid" placeholder="Item UID" type="text" required/>
                          -->

                        </div>
                        <div class="form-group">
                            <p><b>Item Name</b></p><input class="form-control" name="item_name" placeholder="Item Name"
                                                          type="text" required/>
                        </div>

                        <div class="form-group">
                            <p><b>Item Price</b></p><input class="form-control" name="item_price"
                                                           placeholder="Item Price"
                                                           type="number" required/>
                        </div>

                    </div>
                    <div class="form-group">
                        <p><b>Available Quantity</b></p><input class="form-control" name="available_quantity"
                                                               placeholder="Available Quantity"
                                                               type="number" required/>
                    </div>

                    <div class="form-group">
                        <p><b>Item Category </b>
                            <select name="item_category">
                                <option value="clothing">Clothing</option>
                                <option value="bags_and_beauty">Bags & beauty</option>
                                <option value="accessories_and_electronics">Accesories & Electronics</option>
                                <option value="other">Others</option>
                            </select>
                    </div>
                    </p>

                    <div class="form-group">
                        <p><b>Item Category </b>
                            <select name="item_sub_category">
                                <option value="other">other</option>
                                <option value="dresses">dresses</option>
                                <option value="tops">tops</option>
                                <option value="sport_wears">sport_wears</option>
                                <option value="jeans">jeans</option>
                                <option value="shorts">shorts</option>
                                <option value="trousers_and_leggings">trousers_and_leggings</option>
                                <option value="skirt">skirt</option>
                                <option value="duo_sets">duo_sets</option>
                                <option value="jumpsuits_and_playsuits">jumpsuits_and_playsuits</option>
                                <option value="bags">bags</option>
                                <option value="african_prints">african_prints</option>
                                <option value="jewelry">jewelry</option>
                                <option value="hair">hair</option>
                                <option value="beauty">beauty</option>
                                <option value="gifts">gifts</option>
                                <option value="electronics">electronics</option>
                                <option value="tools_and_accessories">tools_and_accessories</option>
                            </select>
                    </div>
                    </p>

                </div>
                <div class="col-xs-12 col-sm-12 col-md-5" style="float:right; margin-right: 15px;">
                    <h3 style="text-align:left"><b></b></h3>
                    <div class="form-group">

                        <!--
                        <p><b>Item Prize</b></p><input class="form-control" id="title" placeholder="Price"
                                                       type="text" required/
                         -->

                    </div>
                    <div class="form-group">
                        <p><b>Is Item on sale?</b></p><input type="checkbox" name="is_on_sale"> Yes
                    </div>
                    <div class="form-group">
                        <p><b>Before Sale price</b></p><input class="form-control" type="text"
                                                              name="before_sale_price"
                                                              placeholder="Enter Initail Prize"/>
                    </div>
                    <div class="form-group">
                        <p><b>Sale Begin Date </b></p><input class="form-control" type="date" name="sale_begin_date"
                                                             placeholder="Pick a date"/>
                    </div>
                    <div class="form-group">
                        <p><b>Sale End Date </b></p><input class="form-control" name="sale_end_date"
                                                           placeholder="Enter Date" type="date"/>

                    </div>
                    <div class="form-group">
                        <p><b>Main Image </b></p><input class="form-control" name="path_to_main_image"
                                                        placeholder="Main Image" type="file" required/>

                        <p><b>Other Image </b></p><input class="form-control" name="paths_to_other_images"
                                                         placeholder="Email Address" type="file" required/>

                        <!--
                        <p><b>optional Image </b></p><input class="form-control" id="attachment"
                                                            placeholder="Email Address" type="file"/>
                        -->

                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-5" style="margin-left:10px">
                        <h3><b>Item Description</b></h3>
                        <textarea required cols="40" rows="15" name="item_description" id="item_description"> </textarea><br> <br>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5" style="float:right;margin-top:100px">

                        <input type="submit" value="Save/ Confirm Details" class="btn submit" name="save">
                    </div>
                    </form>
                </div>
            </div>
            </div>
        </td>

        <td width="25%" style="background-color:#05386b"></td>
        <td>

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