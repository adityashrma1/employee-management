<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style>
 
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-container {
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    input[type="text"] {
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }

    input[type="submit"] {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 10px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    .find-all-link {
        text-align: center;
        margin-top: 20px;
    }

    .find-all-link a {
        background-color: #28a745;
        text-decoration: none;
        color: white;
        border: none;
        padding: 10px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    
</style>
</head>
<body>

<div class="form-container">
    <h2>Update Employee</h2>
    
    <form action="updateController" method="post">
       <input type="text" name="empId" value= "<%=request.getParameter("empId")%>" placeholder="ID" readonly>
        <input type="text" name="empName" value= "<%=request.getParameter("empName")%>" placeholder="NAME">
        <input type="text" name="empSalary" value= "<%=request.getParameter("empSalary")%>" placeholder="SALARY">
        <input type="submit" value="Update Record">
    </form>
</div>

</body>
</html>
