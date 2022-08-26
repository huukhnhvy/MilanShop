package com.manageuser.servlet.web;

import com.manageuser.dao.CategoryDao;
import com.manageuser.dao.OutfitDao;
import com.manageuser.dao.ProductDao;
import com.manageuser.dao.ProductDetailDao;
import com.manageuser.model.Product;
import com.manageuser.model.ProductDetail;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/product-detail")
public class ProductDetailServlet extends HttpServlet {
    private CategoryDao categoryDao;
    private ProductDao productDao;
    private OutfitDao outfitDao;
    private ProductDetailDao productDetailDao;

    public ProductDetailServlet() {
        categoryDao = new CategoryDao();
        productDao = new ProductDao();
        outfitDao = new OutfitDao();
        productDetailDao = new ProductDetailDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        request.setAttribute("listNew", productDao.listNewProduct());
        request.setAttribute("listPD", productDetailDao.findByProduct(Integer.parseInt(pid)));
        request.setAttribute("listCategory", categoryDao.findAll());
        request.setAttribute("listOutfit", outfitDao.findAll());
        request.setAttribute("product", productDao.findOne(Integer.parseInt(pid)));
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/product-detail.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
