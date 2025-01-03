package com.hibernate.crud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.hibernate.crud.model.Employee;

public class EmployeeDaoImpl implements EmployeeDao {
private EntityManagerFactory emf;
private EntityManager em;
private EntityTransaction et;
private Query query ;
private String jpql;
		public EmployeeDaoImpl()
		{
			emf = Persistence.createEntityManagerFactory("aditya");
		}


@Override
	public String insertData(Employee employee) {
	
		em = emf.createEntityManager();
		et = em.getTransaction();
		et.begin();
		em.persist(employee);
		et.commit();
		
		
		return "Add Record";
	}
@Override
 public List<Employee> findAll() {
	
	em = emf.createEntityManager();
	et = em.getTransaction();
    jpql  = "select e from Employee e";
	query = em.createQuery(jpql);
	List<Employee> list = query.getResultList();
	
	
	return list;
}


@Override
public void deleteUser(Integer empId) {

	em = emf.createEntityManager();
    et = em.getTransaction();
    
	
    jpql = "delete from Employee e where empId=?1";
    query = em.createQuery(jpql);
	
	query.setParameter(1, empId);
	et.begin();
	query.executeUpdate();
	et.commit();

}


@Override
public void updateRecord(Employee employee,Integer empId,String empName,Double empSalary) {

	em = emf.createEntityManager();
    et = em.getTransaction();
     employee = em.find(Employee.class, empId);
    
    et.begin();
    
    employee.setEmpName(empName);
    employee.setEmpSalary(empSalary);
    em.persist(employee);
    et.commit();
    
    
    
    
    
	
}

}
