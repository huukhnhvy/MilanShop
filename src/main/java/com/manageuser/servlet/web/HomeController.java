package com.manageuser.servlet.web;

import com.manageuser.model.*;
import com.manageuser.dao.*;
import com.manageuser.utils.FormUtil;
import com.manageuser.utils.SessionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = {"/home", "/login", "/logout"})
public class HomeController extends HttpServlet {

    private ProductDao productDao;
    private OutfitDao outfitDao;
    private CategoryDao categoryDao;
    private UserDao userDao;
    private BillDetailsDao billDetailsDao;

    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    public HomeController() {
        productDao = new ProductDao();
        outfitDao = new OutfitDao();
        categoryDao = new CategoryDao();
        userDao = new UserDao();
        billDetailsDao = new BillDetailsDao();
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action != null && action.equals("login")){
            String message = request.getParameter("message");
            String alert = request.getParameter("alert");
            if(message != null && alert != null){
                request.setAttribute("message", resourceBundle.getString(message));
                request.setAttribute("alert", alert);
            }
            RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
            rd.forward(request,response);
        }else if(action != null && action.equals("logout")){
            SessionUtil.getInstance().removeValue(request,"USER");
            response.sendRedirect(request.getContextPath()+"/home");
        }
        else {
            request.setAttribute("listProduct", productDao.listNewProduct());
            request.setAttribute("listCategory", categoryDao.findAll());
            request.setAttribute("listOutfit", outfitDao.findAll());
            RequestDispatcher dispatcher = request.getRequestDispatcher("/views/web/home.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action != null && action.equals("login")){
            User user = FormUtil.toModel(User.class, request);
            user = userDao.checkLogin(user.getUsername(), user.getPassword());
            if(user != null){
                SessionUtil.getInstance().putValue(request,"USER", user);
                if(user.getRole().getCode().equals("USER")){
                    response.sendRedirect(request.getContextPath()+"/home");
                }else if (user.getRole().getCode().equals("ADMIN")){
                    response.sendRedirect(request.getContextPath()+"/admin-home");
                }

            }else {
                response.sendRedirect(request.getContextPath()+"/login?action=login&message=username_password_invalid&alert=danger");
            }

        }else if(action != null && action.equals("search")){
            String txtProduct = request.getParameter("txtProduct");
            request.setAttribute("txtProduct", txtProduct);
            request.setAttribute("listP", productDao.findByName(txtProduct));
            request.setAttribute("listCategory", categoryDao.findAll());
            request.setAttribute("listOutfit", outfitDao.findAll());
            request.getRequestDispatcher("/views/web/product-grid.jsp").forward(request, response);
        }
    }
}
