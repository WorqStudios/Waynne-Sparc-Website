package com.waynnesparc.servlets.database;

import com.waynnesparc.enums.EDatabases;
import com.waynnesparc.enums.EDispatchType;
import com.waynnesparc.enums.ETables;
import com.waynnesparc.enums.TaskStatus;
import com.waynnesparc.structs.ItemEntry;
import com.waynnesparc.utils.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;

/**
 * Created by Khalil Kabara khalilkabara@gmail.com on 1/22/2019.
 */

@WebServlet(name = "createItemServlet", urlPatterns = {"/createItemServlet"})
public class CreateItemServlet extends DatabaseServletBase
{
    PreparedStatement preparedInsert;
    
    @Override
    public void defineDbAndTable()
    {
        database = EDatabases.MAIN_DB;
        table = ETables.ITEMS;
    }
    
    public void init()
    {
        super.init();
        
        try
        {
            preparedInsert = SQLUtility.createPreparedInsert(table);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            super.doPost(request, response);
        } catch (ServletException | IOException e)
        {
            e.printStackTrace();
        }
        String UID;
        //debugPassedParams(request, response);
        
        if (request.getParameter(Constants.itemsTableUidColumn) == null ||
                request.getParameter(Constants.itemsTableUidColumn).equals(""))
        {
            UID = GeneralUtility.generateRandomUID();
        } else
        {
            UID = request.getParameter(Constants.itemsTableUidColumn);
        }
        
        boolean isOnSale = false;
        if (request.getParameter(Constants.itemsTableIsOnSaleColumn) != null &&
                request.getParameter(Constants.itemsTableIsOnSaleColumn).equalsIgnoreCase(Constants.checkboxOnName))
        {
            isOnSale = true;
        }
        
        double beforeSalePrice = 0;
        String saleBeginDate = Constants.defaultDateValue;
        String saleEndDate = Constants.defaultDateValue;
        
        String pathToMainImage = request.getParameter(Constants.itemsTablePathToMainImageColumn);
        String pathToOtherImages = request.getParameter(Constants.itemsPathsToOtherImagesColumn);
        
        if (isOnSale)
        {
            beforeSalePrice = Double.parseDouble(request.getParameter(Constants.itemsTableBeforeSalePriceColumn));
            
            saleBeginDate = request.getParameter(Constants.itemsTableSaleBeginDateColumn);
            saleEndDate = request.getParameter(Constants.itemsTableSaleEndDateColumn);
        }
        
        if (pathToMainImage == null)
        {
            pathToMainImage = Constants.pathToGenericItemImage;
        }
        
        if (pathToOtherImages == null)
        {
            pathToOtherImages = Constants.pathToGenericItemImage;
        }
        
        String dateTimeNow = LocalDateTime.now().toString();
        
        ItemEntry item = new ItemEntry(
                UID,
                request.getParameter(Constants.itemsTableNameColumn),
                request.getParameter(Constants.itemsTableDescriptionColumn),
                Integer.parseInt(request.getParameter(Constants.itemsTableAvailableQuantityColumn)),
                Double.parseDouble(request.getParameter(Constants.itemsTableItemPriceColumn)),
                request.getParameter(Constants.itemsTableItemCategoryColumn),
                request.getParameter(Constants.itemsTableItemSubCategoryColumn),
                isOnSale ? 1 : 0,
                beforeSalePrice,
                saleBeginDate,
                saleEndDate,
                pathToMainImage,
                pathToOtherImages,
                dateTimeNow
        );
        
        int executionResult = 0;
        try
        {
            executionResult = SQLUtility.insertEntry(table, item, preparedInsert);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        
        
        if (executionResult > 0)
        {
            Toast.makeText("Successfully added item to db", TaskStatus.SUCCESS);
            
            try
            {
                ItemsUtil.loadAllStoreItems();
            } catch (SQLException e)
            {
                e.printStackTrace();
            }
            
            dispatch(Constants.adminHomePageName, null, request, response, EDispatchType.FORWARD);
        }
    }
    
    public void destroy()
    {
        try
        {
            preparedInsert.close();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        super.destroy();
    }
}
