package com.hibernate.crud.controller;

import java.io.IOException;
import java.util.List;

import com.hibernate.crud.dao.EmployeeDao;
import com.hibernate.crud.dao.EmployeeDaoImpl;
import com.hibernate.crud.model.Employee;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FindAllController extends HttpServlet{
	public void doPost(HttpServletRequest req ,HttpServletResponse res)throws ServletException,IOException 
	{
		ServletContext sc = getServletContext();
		EmployeeDao employeeDao = new EmployeeDaoImpl();
		List<Employee> list = employeeDao.findAll();
		sc.setAttribute("list", list);
		res.sendRedirect("view.jsp");
	}
}
