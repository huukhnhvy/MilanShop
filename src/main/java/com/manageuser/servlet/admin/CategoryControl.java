package com.manageuser.servlet.admin;

import com.manageuser.dao.CategoryDao;
import com.manageuser.dao.OutfitDao;
import com.manageuser.dao.RoleDao;
import com.manageuser.dao.UserDao;
import com.manageuser.model.Category;
import com.manageuser.model.Outfit;
import com.manageuser.model.Role;
import com.manageuser.model.User;
import com.manageuser.utils.FormUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-category","/admin-category-edit"})
public class CategoryControl extends HttpServlet {
    CategoryDao categoryDao;
    OutfitDao outfitDao;
    public CategoryControl() {
        categoryDao = new CategoryDao();
        outfitDao = new OutfitDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if(action != null ){
            if( action.equals("edit")) {
                response.sendRedirect(request.getContextPath() + "/admin-category");
            }else if(action.equals("delete")){
                Category model = FormUtil.toModel(Category.class, request);
                model = categoryDao.findOne(model.getId());
                categoryDao.delete(model);
                response.sendRedirect(request.getContextPath()+"/admin-category");
            }
        }else {
            request.setAttribute("category", categoryDao.findAll());
            request.setAttribute("outfit", outfitDao.findAll());
            request.getRequestDispatcher("/views/admin/manage-category.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        Category model = FormUtil.toModel(Category.class, request);
        Outfit outfit = new Outfit();
        if(action != null ){
            if(action.equals("add")) {
                outfit.setId(model.getPkId());
                model.setOutfit(outfit);
                categoryDao.insert(model);
                response.sendRedirect(request.getContextPath() + "/admin-category");
            }else if(action.equals("edit")){
                outfit.setId(model.getPkId());
                model.setOutfit(outfit);
                categoryDao.update(model);
                response.sendRedirect(request.getContextPath() + "/admin-category");
            }else if(action.equals("load")){
                request.setAttribute("outfit",outfitDao.findAll());
                request.setAttribute("category", categoryDao.findOne(model.getId()));
                request.getRequestDispatcher("/views/admin/edit-category.jsp").forward(request, response);
            }
        }

    }
}
