package com.manageuser.servlet.web;

import com.manageuser.dao.*;
import com.manageuser.model.*;
import com.manageuser.utils.FormUtil;
import com.manageuser.utils.SessionUtil;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.NumberFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = {"/cart","/checkout"})
public class CartServlet extends HttpServlet {
    private ProductDao productDao;
    private BillDao billDao;
    private BillDetailsDao billDetailsDao;
    private CategoryDao categoryDao;
    private OutfitDao outfitDao;

    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    public CartServlet() {
        productDao = new ProductDao();
        billDao = new BillDao();
        billDetailsDao = new BillDetailsDao();
        categoryDao = new CategoryDao();
        outfitDao = new OutfitDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if(action != null && action.equals("cart")){
            doGet_Buy(request,response);
            response.sendRedirect(request.getContextPath()+"/cart");
        }
        else if(action != null && action.equals("checkout")){
            String total = request.getParameter("total");
            String message = request.getParameter("message");
            String alert = request.getParameter("alert");
            if(message != null && alert != null){
                request.setAttribute("message", resourceBundle.getString(message));
                request.setAttribute("alert", alert);
            }
            request.setAttribute("total", total);
            request.setAttribute("listCategory", categoryDao.findAll());
            request.setAttribute("listOutfit", outfitDao.findAll());
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/checkout.jsp");
            rd.forward(request, response);
        }else if(action != null && action.equals("remove")){
            doGet_Remove(request, response);
            response.sendRedirect(request.getContextPath()+"/checkout?action=checkout");
        }else if(action != null && action.equals("delete")){
            doGet_Remove(request, response);
            response.sendRedirect(request.getContextPath()+"/cart");
        }
        else {
        request.setAttribute("listCategory", categoryDao.findAll());
        request.setAttribute("listOutfit", outfitDao.findAll());
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/cart.jsp");
        rd.forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        ServletContext sc = getServletContext();
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";
        }
        if (action.equals("cart")) {
            doGet_Buy(request, response);
            response.sendRedirect(request.getContextPath()+"/cart");
        }
        else if(action.equals("checkout")){
            String productId = request.getParameter("productId");
            String quantityString = request.getParameter("quantity");

            HttpSession session = request.getSession(false);
            Cart cart = (Cart) session.getAttribute("cart");
            if(cart != null){
                Status status = new Status();
                String total = request.getParameter("total");
                Bill bill = FormUtil.toModel(Bill.class, request);
                bill.setDate(Timestamp.valueOf(LocalDateTime.now()));
                status.setId(1);
                bill.setStatus(status);
                bill.setTotal(Float.valueOf(total));
                billDao.insert(bill);
                ArrayList<LineItem> items = cart.getItems();
                for(LineItem item: items){
                    BillDetails model = new BillDetails();
                    model.setQuantity(item.getQuantity());
                    model.setProduct(item.getProduct());
                    model.setBill(bill);
                    Product product = model.getProduct();
                    product.setQuantity(product.getQuantity()-item.getQuantity());
                    productDao.update(product);
                    billDetailsDao.insert(model);
                }
                cart.clearCart();
                session.removeAttribute("quantityItem");
                response.sendRedirect(request.getContextPath()+"/checkout?action=checkout&message=order_success&alert=success");
            }else {
                response.sendRedirect(request.getContextPath()+"/checkout?action=checkout");
            }
        }
    }
    protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String productId = request.getParameter("productId");
        String quantityString = request.getParameter("quantity");

        HttpSession session = request.getSession(false);
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }
        int quantity;
        try {
            quantity = Integer.parseInt(quantityString);
            if (quantity < 0) {
                quantity = 1;
            }
        } catch (NumberFormatException nfe) {
            quantity = 1;
        }

        Product product = null;
        product = productDao.findOne(Integer.parseInt(productId));

        LineItem lineItem = new LineItem();
        lineItem.setProduct(product);
        lineItem.setQuantity(quantity);
        if (quantity > 0) {
            cart.addItem(lineItem);
        }
        session.setAttribute("cart", cart);
        session.setAttribute("quantityItem", cart.getCount());
    }
    protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String productId = request.getParameter("productId");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Product product = productDao.findOne(Integer.parseInt(productId));

        LineItem lineItem = new LineItem();
        lineItem.setProduct(product);
        cart.removeItem(lineItem);

        session.setAttribute("cart", cart);
        session.setAttribute("quantityItem", cart.getCount());
    }

}
