<%-- 
    Document   : shoppingList
    Created on : 17-Jun-2021, 2:53:55 PM
    Author     : jweit
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${name} <a href="ShoppingList?logout">Logout</a></p>
        <br>
        <h2>List</h2>
        <form method="post" action="ShoppingList">
            <label>Add item: </label>
            <input type="text" name="addItem">
            <input type="submit" value="Add item">
            <input type="hidden" name="action" value="add">
            
        </form>
        <c:if test="${!items.isEmpty()}">
            <form method="post" action="ShoppingList">
                <c:forEach items="${items}" var="x">
                    <input type="radio" name="buttons" value="${x}"><label>${x}</label><br>
                </c:forEach>
                <br>
                    <input type="submit" value="Delete">
                    <input type="hidden" name="action" value="delete">

            </form>
        </c:if>
    </body>
</html>
