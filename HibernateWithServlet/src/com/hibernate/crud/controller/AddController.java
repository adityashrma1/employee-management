package com.hibernate.crud.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.hibernate.crud.dao.EmployeeDao;
import com.hibernate.crud.dao.EmployeeDaoImpl;
import com.hibernate.crud.model.Employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddController extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		PrintWriter out =res.getWriter();
		ServletContext sc = getServletContext();
		Integer id = Integer.parseInt(req.getParameter("empId"));
		String name = req.getParameter("empName");
		Double salary = Double.parseDouble(req.getParameter("empSalary"));
		
		Employee employee = new Employee();
		employee.setEmpId(id);
		employee.setEmpName(name);
		employee.setEmpSalary(salary);
		
		
		EmployeeDao employeeDao = new EmployeeDaoImpl();
		String msg = employeeDao.insertData(employee);
		sc.setAttribute("msg",msg);
		RequestDispatcher rd = req.getRequestDispatcher("findAllController");
		rd.forward(req, res);
		
		
	}
	
	
}
