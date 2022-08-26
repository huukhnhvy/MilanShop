package com.manageuser.servlet.admin;

import com.manageuser.dao.*;
import com.manageuser.model.*;
import com.manageuser.utils.FormUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-bill", "/admin-bill-edit"})
public class BillControl extends HttpServlet {
    BillDao billDao;
    BillDetailsDao billDetailsDao;
    StatusDao statusDao;
    ProductDao productDao;
    public BillControl() {
        billDao = new BillDao();
        billDetailsDao = new BillDetailsDao();
        statusDao = new StatusDao();
        productDao = new ProductDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        Bill model = FormUtil.toModel(Bill.class, request);
        if(action != null ){
            if( action.equals("edit")) {
                response.sendRedirect(request.getContextPath() + "/admin-bill");
            }else if (action.equals("load")) {
                request.setAttribute("bill", billDao.findOne(model.getId()));
                request.getRequestDispatcher("/views/admin/edit-product.jsp").forward(request, response);
            }
        }else {
            int offet = model.getPage() - 1;
            model.setTotalItem(billDao.count());
            model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/model.getMaxPageItem()));
            request.setAttribute("model", model);
            request.setAttribute("listDetail", billDetailsDao.findAll());
            //request.setAttribute("listBill", billDao.findAll(offet, model.getMaxPageItem()));
            request.setAttribute("listBill", billDao.findAll());
            request.setAttribute("status", statusDao.findAll());
            request.getRequestDispatcher("/views/admin/manage-bill.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        Bill bill = new Bill();
        if(action != null ) {
            if (action.equals("edit")) {
                String id = request.getParameter("id");
                String status = request.getParameter("pkId");
                billDao.updateStatus(Integer.parseInt(id), Integer.parseInt(status));
                List<BillDetails> list = billDetailsDao.findByBill(Integer.parseInt(id));
                for(BillDetails item: list){
                    Product product = item.getProduct();
                    product.setQuantity(product.getQuantity()+item.getQuantity());
                    productDao.update(product);
                }
                response.sendRedirect(request.getContextPath() + "/admin-bill");
            }else if(action.equals("search")) {
                String txt = request.getParameter("txt");
                if(txt != ""){
                    List<Bill> list = billDao.findListByName(txt);
                    request.setAttribute("txt", txt);
                    request.setAttribute("listBill", list);
                    request.getRequestDispatcher("/views/admin/manage-bill.jsp").forward(request, response);
                }else {
                    response.sendRedirect(request.getContextPath() + "/admin-bill");
                }
            }
        }
    }
}
