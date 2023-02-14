<%-- 
    Document   : reset
    Created on : Feb 5, 2023, 9:46:46 AM
    Author     : canduykhanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }
            * {
                box-sizing: border-box;
            }

            input[type=password], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }

            input[type=submit] {
                background-color: #04AA6D;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            .container {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 70px;
                  margin: 100px;

            }
        </style>
    </head>
    <body>

        <h3>Reset Pass Form</h3>
         <c:set var="f" value="${requestScope.resetFail}"></c:set>
            <div>
                <h2 style="color:red;">${f}</h2>
            </div>

        <div class="container">
            <form action="reset" method="post">
                <label for="newpass">New password</label>
                <input type="password" id="fname" name="newpass" placeholder="">

                <label for="confpass">Confirm password</label>
                <input type="password" id="lname" name="confpass" placeholder="">
                <input type="submit" value="Reset">
            </form>
        </div>

    </body>
</html>
