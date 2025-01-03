package com.hibernate.crud.controller;

import java.io.IOException;

import com.hibernate.crud.dao.EmployeeDao;
import com.hibernate.crud.dao.EmployeeDaoImpl;
import com.hibernate.crud.model.Employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateController extends HttpServlet{
	public void doPost( HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException {
		ServletContext sc = getServletContext();
		Integer empId = Integer.parseInt(req.getParameter("empId"));
		String empName = req.getParameter("empName");
		Double empSalary = Double.parseDouble(req.getParameter("empSalary"));
		
		
		
		EmployeeDao employeeDao = new EmployeeDaoImpl();
		Employee employee = new Employee();
		employee.setEmpName(empName);
		employee.setEmpSalary(empSalary);
		employeeDao.updateRecord(employee,empId,empName,empSalary);
		RequestDispatcher rd = req.getRequestDispatcher("findAllController");
		rd.forward(req, res);
	}
}
