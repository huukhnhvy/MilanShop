package com.manageuser.servlet.admin;

import com.manageuser.constant.SystemConstant;
import com.manageuser.dao.RoleDao;
import com.manageuser.dao.UserDao;
import com.manageuser.model.*;
import com.manageuser.utils.FormUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-manager","/admin-edit"})
public class ManagerControl extends HttpServlet {
    private UserDao userDao;
    private RoleDao roleDao;
    public ManagerControl() {
        userDao = new UserDao();
        roleDao = new RoleDao();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        User model = FormUtil.toModel(User.class, request);
        if(action != null ){
            if( action.equals("edit")) {
                response.sendRedirect(request.getContextPath() + "/admin-manager");
            }else if(action.equals("load")){
                request.setAttribute("role", roleDao.findAll());
                request.setAttribute("user", userDao.findOne(model.getId()));
                request.getRequestDispatcher("/views/admin/edit-user.jsp").forward(request, response);
            }
            else if(action.equals("delete")){
                userDao.delete(userDao.findOne(model.getId()));
                response.sendRedirect(request.getContextPath()+"/admin-manager?page=1&maxPageItem=10");
            }
        }else {
            int offet = model.getPage() - 1;
            model.setTotalItem(userDao.count());
            model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/model.getMaxPageItem()));
            request.setAttribute("model", model);
            request.setAttribute("listUser", userDao.findAll(offet, model.getMaxPageItem()));
            request.setAttribute("role", roleDao.findAll());
            request.getRequestDispatcher("/views/admin/manage-user.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if(action != null ){
            if(action.equals("add")) {
                User model = FormUtil.toModel(User.class, request);
                Role role = new Role();
                role.setId(model.getPkId());
                model.setRole(role);
                userDao.insert(model);
                response.sendRedirect(request.getContextPath() + "/admin-manager?page=1&maxPageItem=10");
            }else if(action.equals("edit")){
                User model = FormUtil.toModel(User.class, request);
                Role role = new Role();
                role.setId(model.getPkId());
                model.setRole(role);
                userDao.update(model);
                response.sendRedirect(request.getContextPath() + "/admin-manager?page=1&maxPageItem=10");
            }else if(action.equals("search")){
                String txt = request.getParameter("txt");
                if(txt != "") {
                    List<User> users = userDao.findListByUsername(txt);
                    request.setAttribute("txt", txt);
                    request.setAttribute("listUser", users);
                    request.getRequestDispatcher("/views/admin/manage-user.jsp").forward(request, response);
                }else {
                    response.sendRedirect(request.getContextPath() + "/admin-manager?page=1&maxPageItem=10");
                }
            }
        }

    }
}
