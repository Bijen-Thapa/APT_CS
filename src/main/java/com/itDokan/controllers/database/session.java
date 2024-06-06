package com.itDokan.controllers.database;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

@WebServlet("/session")
public class session extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public session() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		session.setAttribute("name", "first session");
		session.getAttribute("name");
		
		session.setMaxInactiveInterval(3 * 60); // 60 seconds times 3

		
		
		
		session.invalidate();
	}

}
