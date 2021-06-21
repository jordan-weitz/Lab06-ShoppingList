<%-- 
    Document   : register
    Created on : 17-Jun-2021, 2:53:27 PM
    Author     : jweit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <form method="post" action="ShoppingList">
            <h1>Shopping List</h1>
            <label>Username: </label>
            <input type="text" name="username">
            <input type="submit" value="Register Name">
            <input type="hidden" name="action" value="register">
            <br>
            <p>${loginMessage}</p>
        </form>

    </body>
</html>
