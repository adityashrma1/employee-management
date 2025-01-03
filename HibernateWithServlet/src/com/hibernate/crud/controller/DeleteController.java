package com.hibernate.crud.controller;

import java.io.IOException;

import com.hibernate.crud.dao.EmployeeDao;
import com.hibernate.crud.dao.EmployeeDaoImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteController extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException ,IOException 
	{
		res.setContentType("/texthtml");
		ServletContext sc = getServletContext();
		Integer empId = Integer.parseInt(req.getParameter("empId"));
		EmployeeDao employeeDao = new EmployeeDaoImpl();
		employeeDao.deleteUser(empId);
		RequestDispatcher rd = req.getRequestDispatcher("findAllController");
		rd.forward(req, res);
		
		
		
	}

}
