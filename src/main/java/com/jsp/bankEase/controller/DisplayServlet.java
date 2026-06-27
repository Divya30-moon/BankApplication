package com.jsp.bankEase.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.bankEase.Dao.BankDao;
import com.jsp.bankEase.entity.Bank;

@WebServlet("/display")
public class DisplayServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

    	List<Bank> list = BankDao.getAll();

    	req.setAttribute("allBank", list);

    	if("true".equals(req.getParameter("updated"))){
    	    req.setAttribute("updateSuccess", true);
    	}

    	req.getRequestDispatcher("display.jsp").forward(req, resp);
    }
}