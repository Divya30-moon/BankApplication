package com.jsp.bankEase.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.bankEase.entity.Bank;



@WebServlet(value="/edit")
public class EditServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		
		int id2 = Integer.parseInt(id);
		
		Bank bank = com.jsp.bankEase.Dao.BankDao.getById(id2);
		
		req.setAttribute("bank", bank);
		req.getRequestDispatcher("edit.jsp").forward(req, resp);
	}
}
