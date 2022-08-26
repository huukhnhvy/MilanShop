package com.manageuser.servlet.web;

import com.manageuser.dao.CategoryDao;
import com.manageuser.dao.OutfitDao;
import com.manageuser.dao.ProductDao;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {
    private CategoryDao categoryDao;
    private OutfitDao outfitDao;

    public ContactServlet() {
        categoryDao = new CategoryDao();
        outfitDao = new OutfitDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listCategory", categoryDao.findAll());
        request.setAttribute("listOutfit", outfitDao.findAll());
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/contact.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final String username = "milanshop1808@gmail.com";
        final String password = "milanshop";

        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS
        Session session = Session.getInstance(prop,new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(username, password);
            }
        });
        String emailTo = request.getParameter("to");
        String emailSubject = request.getParameter("subject");
        String emailContent = request.getParameter("content");
        try{
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(emailTo)
            );
            message.setSubject(emailSubject);
            message.setText(emailContent);
            Transport.send(message);
            System.out.println("Done");
        }catch (Exception e){
            //e.printStackTrace();
        }
        response.sendRedirect(request.getContextPath()+"/contact");
    }
}
