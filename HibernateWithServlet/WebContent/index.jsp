<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<style>
 
    body {
        font-family: Arial, sans-serif;
        background-color: #114675;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-container {
        background-color: #0e84a7;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
    }

    h2 {
    	color:white;
        text-align: center;
      font-size:33px;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

   input[type="text"] {
    padding: 10px;
    border: 1px solid #34495E;
    border-radius: 5px;
    background-color: #34495E;
    color: white;
    font-size: 14px;
}

input[type="text"]::placeholder {
    color: white !important;
    opacity: 1; /* Ensure placeholder opacity is not overridden */
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

    input[type="submit"]:hover {
        background-color: #218838;
    }

    .find-all-link {
        text-align: center;
        margin-top: 20px;
    }

    .find-all-link form {
        display: inline;
    }

    .find-all-link form input[type="submit"] {
        background-color: #28a745;
        text-decoration: none;
        color: white;
        border: none;
        padding: 10px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    .find-all-link form input[type="submit"]:hover {
        background-color: #218838;
    }
    
</style>
</head>
<body>

<div class="form-container">
    <h2>Add Employee</h2>
    
    <form action="addController" method="post">
        <input type="text" name="empId" placeholder="ID">
        <input type="text" name="empName" placeholder="NAME">
        <input type="text" name="empSalary" placeholder="SALARY">
        <input type="submit" value="Add Record">
    </form>
<div class= "find-all-link"> 
<form action="findAllController" method="post">
    <input type="submit" value="Find All Record">
</form>
</div>
</div>

</body>
</html>
