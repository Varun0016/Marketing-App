<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%@ include file="menu.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List All Loan Request</title>
    <style>
            body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
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
            color: #fffs;
        }

    tr:nth-child(even) {
           
             background-color: blue;
            font-family: Arial, sans-serif;
            background-color: #3483;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>List All Loan Request</h1>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Gender</th>
            <th>Mobile Number</th>
             <th>Address</th>
            <th>Registration Date</th>
            <th>Email Id</th>
            <th>Account Number</th>
        </tr>

        <c:forEach var="loans" items="${loans}">
            <tr>
                <td>${loans.firstname}</td>
                <td>${loans.lastname}</td>
                <td>${loans.gender}</td>
                <td>${loans.mobile}</td>
                <td>${loans.address}</td>
                <td>${loans.registrationdate}</td>
                <td>${loans.email}</td>
                <td>${loans.accountnumber}</td>
            </tr>
        </c:forEach>
    </table>
    
</body>
</html>
