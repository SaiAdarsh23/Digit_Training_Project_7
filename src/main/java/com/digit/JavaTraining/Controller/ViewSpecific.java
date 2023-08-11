package com.digit.JavaTraining.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import com.digit.JavaTraining.Model.Aadhar;

@WebServlet("/viewSpecific")
public class ViewSpecific extends HttpServlet {

	private Session session;

	@Override 
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int ano = Integer.parseInt(req.getParameter("ano"));

		Aadhar a = new Aadhar();
		boolean b = a.view(ano);
		
		if(b==true) {
			HttpSession session = req.getSession();
			session.setAttribute("curuser", a);
			resp.sendRedirect("View.jsp");
		}
		else {
			resp.sendRedirect("Fail.html");
		}
	}
}
