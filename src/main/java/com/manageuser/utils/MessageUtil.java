package com.manageuser.utils;

import javax.servlet.http.HttpServletRequest;

public class MessageUtil {
    public static void showMessage(HttpServletRequest request){
        if(request.getParameter("message") != null){
            String messageRespone = "";
            String alert = "";
            String message = request.getParameter("message");
            if (message.equals("insert_success")){
                messageRespone = "Insert success";
                alert = "success";
            }else if (message.equals("update_success")){
                messageRespone = "Update success";
                alert = "success";
            }else if (message.equals("delelte_success")){
                messageRespone = "Delete success";
                alert = "success";
            }else if(message.equals("error_system")){
                messageRespone = "Error system";
                alert = "danger";
            }
            request.setAttribute("messageRespone", messageRespone);
            request.setAttribute("alert", alert);
        }
    }
}
