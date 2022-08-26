package com.manageuser.servlet.web;

import com.manageuser.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/changePassword")
public class ChangePasswordControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/change-password.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String username = request.getParameter("username");
            String oldPassword = request.getParameter("oldPassword");
            String newPassword = request.getParameter("newPassword");
            String confPassword = request.getParameter("confPassword");
            request.setAttribute("username", username);
            if (!newPassword.equals(confPassword)) {
                request.setAttribute("error", "New password and new confirm password are not identical");
            } else {
                UserDao dao = new UserDao();
                dao.changePassword(username, oldPassword, newPassword);
                request.setAttribute("message", "Password has changed");
            }
        }catch (Exception e){
            e.printStackTrace();
            request.setAttribute("error", e.getMessage());
        }
        request.getRequestDispatcher("/views/web/change-password.jsp").forward(request,response);

    }
}
