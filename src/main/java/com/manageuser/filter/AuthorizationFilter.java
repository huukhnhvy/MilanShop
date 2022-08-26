package com.manageuser.filter;

import com.manageuser.constant.SystemConstant;
import com.manageuser.model.User;
import com.manageuser.utils.SessionUtil;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorizationFilter implements Filter {
    private ServletContext context;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();
        if(url.startsWith(request.getContextPath()+"/admin")){
            User user = (User) SessionUtil.getInstance().getValue(request,"USER");
            if(user != null){
                if(user.getRole().getCode().equals(SystemConstant.ADMIN)){
                    filterChain.doFilter(servletRequest, servletResponse);
                }else if (user.getRole().getCode().equals(SystemConstant.USER)){
                    response.sendRedirect(request.getContextPath()+"/login?action=login&message=not_permission&alert=danger");
                }
            }else {
                response.sendRedirect(request.getContextPath() + "/login?action=login&message=not_login&alert=danger");
            }
        }else if(url.equals(request.getContextPath()+"/changePassword")){
            User user = (User) SessionUtil.getInstance().getValue(request,"USER");
            if(user != null){
                filterChain.doFilter(servletRequest, servletResponse);
            }
            else {
                response.sendRedirect(request.getContextPath() + "/login?action=login&message=not_login&alert=danger");
            }
        }
        else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
