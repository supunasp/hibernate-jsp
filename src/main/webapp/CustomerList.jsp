<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customers Store Application</title>
</head>
<body>
    <center>
        <h1>Customers Management</h1>
        <h2>
            <a href="/new">Add New Customer</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/list">List All Customers</a>

        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Customers</h2></caption>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>email</th>
                <th>Mobile no</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="customer" items="${listCustomers}">
                <tr>
                    <td><c:out value="${customer.id}" /></td>
                    <td><c:out value="${customer.firstName}" /></td>
                    <td><c:out value="${customer.lastName}" /></td>
                    <td><c:out value="${customer.email}" /></td>
                    <td><c:out value="${customer.mobile}" /></td>
                    <td>
                        <a href="/edit?id=<c:out value='${customer.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/delete?id=<c:out value='${customer.id}' />">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>