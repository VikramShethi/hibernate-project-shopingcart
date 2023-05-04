package org.jsp.userproductapp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/logout")
public class LogoutServlet  extends HttpServlet{
     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	 HttpSession session=req.getSession();
    	session.invalidate();
    	req.setAttribute("msg", "User deleted succesfully" );
    	RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
    	dispatcher.forward(req, resp);
    }
}