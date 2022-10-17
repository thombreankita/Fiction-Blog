<%-- 
    Document   : errorpg
    Created on : 24-Sep-2022, 5:19:37 pm
    Author     : thomb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry Something went wrong</title>
        <!-- CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">    </head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner{
                clip-path: polygon(37% 0, 82% 0, 100% 0, 100% 89%, 69% 100%, 29% 90%, 0 100%, 0 0);

            }
        </style>
        
    </head>
    <body>
        <!--navbar-->
        <%@include file="navigbar.jsp" %>
        <div class="container text-center">
            <img src="pics/err.png">
            <<h2>Sorry Something went wrong</h2>
            <%= exception%>
            <a href="index.jsp" class="btn btn-secondary mt-3">HOME</a>
        </div>
    </body>
</html>
