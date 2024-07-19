<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>List All Employ</title>
    <style>
            body {
            font-family: Arial, sans-serif;
            background-color: #3483;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #007bff;
            color: #fff;
            padding: 10px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
         background-color: blue;
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
          
            text-align: center;
        }
    
    </style>
</head>
<body>
    <h1>List All Employ</h1>
    <table>
        <tr>
            <th> Name </th>
            <th>Mobile Number</th>
            <th>Registration Date</th>
            <th>Email Id</th>
            <th>Password</th>
            <th>Confirm Password</th>
             <th>Employ Code</th>
             <th>Role</th>
        </tr>

        <c:forEach var="ee" items="${ee}">
            <tr>
                <td>${ee.name}</td>
                <td>${ee.mobile}</td>
                <td>${ee.registrationdate}</td>
                <td>${ee.email}</td>
                <td>${ee.password}</td>
                <td>${ee.confirm_password}</td>
                <td>${ee.employcode}</td>
                <td>${ee.role}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
