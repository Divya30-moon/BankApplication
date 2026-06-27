package com.jsp.bankEase.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.bankEase.Dao.BankDao;
import com.jsp.bankEase.entity.Bank;



@WebServlet(value="/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String ifsc = req.getParameter("ifsc");
		String loc = req.getParameter("loc");
		
		Bank bank = new Bank(name, ifsc, loc);
		
		
		BankDao.save(bank);

		req.setAttribute("success", true);
		req.getRequestDispatcher("register.jsp").forward(req, resp);
	}
}
