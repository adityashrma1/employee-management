package com.hibernate.crud.dao;

import java.util.List;

import com.hibernate.crud.model.Employee;

public interface EmployeeDao {
		String insertData(Employee employee);
		List<Employee> findAll();
		void deleteUser(Integer empId);
		void updateRecord(Employee employee,Integer empId,String empName,Double empSalary);
}
