package com.manageuser.servlet.admin;

import com.manageuser.dao.CategoryDao;
import com.manageuser.dao.OutfitDao;
import com.manageuser.dao.ProductDao;
import com.manageuser.dao.ProductDetailDao;
import com.manageuser.model.Category;
import com.manageuser.model.Outfit;
import com.manageuser.model.Product;
import com.manageuser.model.User;
import com.manageuser.utils.FormUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-product", "/admin-edit-product"})
public class ProductControl extends HttpServlet {
    CategoryDao categoryDao;
    ProductDao productDao;
    public ProductControl() {
        categoryDao = new CategoryDao();
        productDao = new ProductDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        Product model = FormUtil.toModel(Product.class, request);
        if(action != null ){
            if( action.equals("edit")) {
                response.sendRedirect(request.getContextPath() + "/admin-product");
            }else if(action.equals("load")) {
                request.setAttribute("category", categoryDao.findAll());
                request.setAttribute("product", productDao.findOne(model.getId()));
                request.getRequestDispatcher("/views/admin/edit-product.jsp").forward(request, response);
            }
            else if(action.equals("delete")){
                productDao.delete(productDao.findOne(model.getId()));
                response.sendRedirect(request.getContextPath()+"/admin-product?page=1&maxPageItem=5");
            }
        }else {
            int offet = model.getPage() - 1;
            model.setTotalItem(productDao.count());
            model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/model.getMaxPageItem()));
            request.setAttribute("model", model);
            request.setAttribute("category", categoryDao.findAll());
            request.setAttribute("listProduct", productDao.findAll(offet, model.getMaxPageItem()));
            request.getRequestDispatcher("/views/admin/manage-product.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        Product model = FormUtil.toModel(Product.class, request);
        if(action != null ){
            if(action.equals("add")) {
                Category category = new Category();
                category.setId(model.getPkId());
                model.setCategory(category);
                productDao.insert(model);
                response.sendRedirect(request.getContextPath() + "/admin-product?page=1&maxPageItem=5");
            }else if(action.equals("edit")){
                Category category = new Category();
                category.setId(model.getPkId());
                model.setCategory(category);
                productDao.update(model);
                response.sendRedirect(request.getContextPath() + "/admin-product?page=1&maxPageItem=5");
            }else if(action.equals("search")) {
                String txt = request.getParameter("txt");
                if(txt != ""){
                List<Product> list = productDao.findListByName(txt);
                request.setAttribute("txt", txt);
                request.setAttribute("listProduct", list);
                request.getRequestDispatcher("/views/admin/manage-product.jsp").forward(request, response);
                }else {
                    response.sendRedirect(request.getContextPath() + "/admin-product?page=1&maxPageItem=5");
                }
            }
        }

    }
}
