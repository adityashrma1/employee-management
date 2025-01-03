<%@page import="java.util.List"%>
<%@page import="com.hibernate.crud.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
<style>
body {
    background: linear-gradient(135deg, #0D2149, #1E3A68);
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    color: #F9EBE0;
}

h2 {
    text-align: center;
    margin-top: 20px;
    font-size: 2em;
    color: #F9EBE0;
}

.table-container {
    display: flex;
    justify-content: center;
    margin-top: 30px;
}

table {
    width: 90%;
    max-width: 1200px;
    border-collapse: collapse;
    margin: 0 auto;
    background-color: #2C3E50;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

table, th, td {
    border: 1px solid #208AAE;
}

th {
    background-color: #208AAE;
    color: #F9EBE0;
    padding: 15px;
    text-align: center;
    font-weight: bold;
    font-size: 1.1em;
}

td {
    padding: 12px;
    text-align: left;
    color: #F9EBE0;
    background-color: #34495E;
    font-size: 1em;
}

td a {
    text-decoration: none;
    color: #F39C12;
    font-weight: bold;
}

td a:hover {
    color: #F9EBE0;
}

td form button {
    background-color: #E74C3C;
    color: #F9EBE0;
    border: none;
    padding: 8px 16px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 0.9em;
}

td form button:hover {
    background-color: #C0392B;
}

.no-records {
    text-align: center;
    font-size: 1.2em;
    color: #F0F0F0;
    margin-top: 20px;
}

.add-records {
    display: block;
    text-align: center;
    margin-top: 30px;
}

.add-records a {
    text-decoration: none;
    background-color: #27AE60;
    color: #F9EBE0;
    padding: 12px 25px;
    border-radius: 5px;
    font-size: 1em;
    font-weight: bold;
    transition: background-color 0.3s;
}

.add-records a:hover {
    background-color: #2ECC71;
}
</style>
</head>
<body>

    <h2>Employee List</h2>

    <% List<Employee> list = (List<Employee>) application.getAttribute("list"); %>

    <% if (list != null && !list.isEmpty()) { %>
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Salary</th>
                    <th>Delete Record</th>
                    <th>Update Record</th>
                </tr>
            </thead>
            <tbody>
                <% for (Employee emp : list) { %>
                <tr>
                    <td><%= emp.getEmpId() %></td>
                    <td><%= emp.getEmpName() %></td>
                    <td><%= emp.getEmpSalary() %></td>
                    <td>
                        <form action="deleteController" method="POST" style="display: inline;">
                            <input type="hidden" name="empId" value="<%= emp.getEmpId() %>">
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                    <td>
                        <form action="updatepage.jsp" method="GET" style="display: inline;">
                            <input type="hidden" name="empId" value="<%= emp.getEmpId() %>">
                            <input type="hidden" name="empName" value="<%= emp.getEmpName() %>">
                            <input type="hidden" name="empSalary" value="<%= emp.getEmpSalary() %>">
                            <button type="submit">Update</button>
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
    <% } else { %>
    <p class="no-records">No employees found.</p>
    <% } %>

    <div class="add-records">
        <a href="index.jsp">Add More Records</a>
    </div>

</body>
</html>
