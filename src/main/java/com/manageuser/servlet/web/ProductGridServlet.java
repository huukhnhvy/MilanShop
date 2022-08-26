package com.manageuser.servlet.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.manageuser.dao.*;
import com.manageuser.model.*;
import com.manageuser.utils.FormUtil;


@WebServlet("/product-grid")
public class ProductGridServlet extends HttpServlet {
    private CategoryDao categoryDao;
    private ProductDao productDao;
    private OutfitDao outfitDao;

    public ProductGridServlet() {
        categoryDao = new CategoryDao();
        productDao = new ProductDao();
        outfitDao = new OutfitDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cid = request.getParameter("cid");
        Product model = FormUtil.toModel(Product.class, request);
        int offet = model.getPage() - 1;
        model.setPkId(Integer.parseInt(cid));
        model.setTotalItem(productDao.countByCategory(Integer.parseInt(cid)));
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/model.getMaxPageItem()));
        request.setAttribute("model", model);
        request.setAttribute("listP", productDao.findByCategory(model.getPkId(), offet, model.getMaxPageItem()));
        request.setAttribute("listCategory", categoryDao.findAll());
        request.setAttribute("listOutfit", outfitDao.findAll());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/web/product-grid.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
