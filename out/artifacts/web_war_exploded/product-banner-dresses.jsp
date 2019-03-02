<%@ page import="com.waynnesparc.structs.ItemEntry" %>
<%@ page import="com.waynnesparc.utils.Constants" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="static com.waynnesparc.utils.GeneralUtility.getAllItems" %>

<%@ include file="product-banner-header.html" %>

<%
    try
    {
        getAllItems();
    } catch (SQLException e)
    {
        e.printStackTrace();
    }
    try
    {
        for (ItemEntry item : getAllItems())
        {
            if (item.subCategory.equals(Constants.subCategoryDresses))
            {
                out.print(
                        "<div class=\"col-6 col-md-4 col-xl-3\">\n" +
                                "                        <div class=\"product\">\n" +
                                "                            <figure class=\"product-image-container\">\n" +


//                                                    "                                <a href=\"product.jsp\" class=\"product-image\">\n" +



                    "                                    <img src=\"");

                out.print(item.pathToMainImage);

                out.print("alt=\"product\">\n" +
                        "                                </a>\n" +
                        "                                <span class=\"product-label label-hot\">Hot</span>\n" +
                        "                            </figure>\n" +
                        "                            <div class=\"product-details action-inner\">\n" +
                        "                                <h2 class=\"product-title\">\n" +

                        "<form method=\"post\" action=\"product.jsp\">" +
                        "                                    <input type=\"submit\" value=\"VIEW\" name=\"link\""
                );
                out.print(
                        item.name
                );
                out.print(
                        " </input>\n" +

                                "\n" +
                                " <Input type=\"text\" name=\"item_uid\" value=\""
                );
                out.print(item.uid);
                out.print("\" hidden>" +
                        "                                </h2>\n" +
                        "</form>" +
                        "                                <div class=\"product-action\">\n" +
                        "                                </div><!-- End .product-action -->\n" +
                        "                                <div class=\"price-box\">\n" +
                        "                                    <span class=\"product-price\">"
                );
                out.print(
                        "CD" + item.price
                );
                out.print(
                        "</span>\n" +
                                "                                </div><!-- End .price-box -->\n" +

                                "                            </div><!-- End .product-details -->\n" +
                                "                        </div><!-- End .product -->\n" +
                                "                    </div><!-- End .col-xl-3 -->\n"
                );
            }
        }
    } catch (SQLException e)
    {
        e.printStackTrace();
    }
%>

<%@ include file="product-banner-footer.html" %>