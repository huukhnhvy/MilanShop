package com.manageuser.servlet.web;

import com.manageuser.dao.CategoryDao;
import com.manageuser.dao.OutfitDao;
import com.manageuser.dao.ProductDao;
import com.manageuser.dao.UserDao;
import com.manageuser.model.*;
import com.manageuser.utils.SessionUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.ResourceBundle;

@WebServlet("/register")
public class RegisterControl extends HttpServlet {
    private UserDao userDao;
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
    public RegisterControl() {
        userDao = new UserDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action != null && action.equals("register")) {
            String message = request.getParameter("message");
            String alert = request.getParameter("alert");
            if (message != null && alert != null) {
                request.setAttribute("message", resourceBundle.getString(message));
                request.setAttribute("alert", alert);
            }
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
            rd.forward(request, response);
        }
        else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/views/login.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String error = "";
        if(action != null && action.equals("register")){
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String password2 = request.getParameter("confirm-password");
            User user = new User();
            user.setUsername(username);
            user.setEmail(email);
            user.setPassword(password);
            try{
                if(password.equals(password2))
                {
                    Role role = new Role();
                    role.setId(1);
                    user.setRole(role);
                    UserDao dao = new UserDao();
                    dao.insert(user);
                    response.sendRedirect(request.getContextPath()+"/login?action=login");
                }else {
                    request.setAttribute("message", "Passwords are not matching, please try again");
                    request.setAttribute("alert", "danger");
                    request.setAttribute("user", user);
                    request.getRequestDispatcher("/views/web/register.jsp").forward(request,response);
                    //response.sendRedirect(request.getContextPath()+"/register?action=register&message=password_error&alert=danger");
                }

            }catch (Exception e){
                if(userDao.checkEmail(email)){
                    String error_email = "Email is not available";
                    request.setAttribute("error_email", error_email);
                }
                if(userDao.checkUsername(username)){
                    String error_username = "Username is not available";
                    request.setAttribute("error_username", error_username);
                }
                request.getRequestDispatcher("/views/web/register.jsp").forward(request,response);
            }
        }
    }
}
