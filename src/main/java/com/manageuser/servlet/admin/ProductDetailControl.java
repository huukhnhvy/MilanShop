package com.manageuser.servlet.admin;

import com.manageuser.dao.OutfitDao;
import com.manageuser.dao.ProductDao;
import com.manageuser.dao.ProductDetailDao;
import com.manageuser.dao.RoleDao;
import com.manageuser.model.Outfit;
import com.manageuser.model.Product;
import com.manageuser.model.ProductDetail;
import com.manageuser.model.Role;
import com.manageuser.utils.FormUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-outfit", "/admin-edit-outfit"})
public class ProductDetailControl extends HttpServlet {
    private ProductDetailDao dao;
    private ProductDao productDao;
    public ProductDetailControl() {
        dao = new ProductDetailDao();
        productDao = new ProductDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        ProductDetail model = FormUtil.toModel(ProductDetail.class, request);
        if(action != null ){
            if( action.equals("edit")) {
                response.sendRedirect(request.getContextPath() + "/admin-outfit");
            }else if(action.equals("delete")){
                model = dao.findOne(model.getId());
                dao.delete(model);
                response.sendRedirect(request.getContextPath()+"/admin-outfit?page=1&maxPageItem=5");
            }else if(action.equals("load")){
                request.setAttribute("pDetail", dao.findOne(model.getId()));
                request.getRequestDispatcher("/views/admin/edit-details.jsp").forward(request, response);
            }
        }else {
            int offet = model.getPage() - 1;
            model.setTotalItem(dao.count());
            model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/model.getMaxPageItem()));
            request.setAttribute("model", model);
            request.setAttribute("listPD", dao.findAll(offet, model.getMaxPageItem()));
            request.getRequestDispatcher("/views/admin/manage-details.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        ProductDetail model = FormUtil.toModel(ProductDetail.class, request);
        Product product = new Product();
        if(action != null ){
            if(action.equals("add")) {
                product.setId(model.getPkId());
                model.setProduct(product);
                dao.insert(model);
                response.sendRedirect(request.getContextPath() + "/admin-outfit?page=1&maxPageItem=5");
            }else if(action.equals("edit")){
                product.setId(model.getPkId());
                model.setProduct(product);
                dao.update(model);
                response.sendRedirect(request.getContextPath() + "/admin-outfit?page=1&maxPageItem=5");
            }else if(action.equals("search")) {
                String txt = request.getParameter("txt");
                if(txt != ""){
                    List<ProductDetail> list = dao.findByName(txt);
                    request.setAttribute("txt", txt);
                    request.setAttribute("listPD", list);
                    request.getRequestDispatcher("/views/admin/manage-details.jsp").forward(request, response);
                }else {
                    response.sendRedirect(request.getContextPath() + "/admin-outfit?page=1&maxPageItem=5");
                }
            }
        }

    }
}
