<%-- 
    Document   : index
    Created on : 23-Sep-2022, 10:51:36 pm
    Author     : thomb
--%>

<%@page import="com.fiction.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <!-- CSS -->
        <link rel="stylesheet" href="css/styles.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>        
        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>
        <style>
            .banner{
                clip-path: polygon(37% 0, 82% 0, 100% 0, 100% 89%, 69% 100%, 29% 90%, 0 100%, 0 0);

            }
        </style>
        
        <body>
        <!--navbar-->
        <%@include file="navigbar.jsp" %>
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron banner">
                <div class="container">
                    <h3 class="display-3">Welcome to Fiction-Blog.....</h3>
                <p>Read the amazing stories about your favorite fictional characters with amazing twists and the climax that you want!</p>
                <p>Or write the climax that you want.... Everything for free!!!</p>
                <a href="signup.jsp" class="btn btn-secondary btn-md">	<i class='fas fa-user-circle fa-spin'></i> Sign-Up! Its free</a>
                </div>
            </div>
        </div>
        <div class="container text-item-center">
<a class="twitter-timeline" data-lang="en" data-width="1000" data-theme="light" href="https://twitter.com/WriteFicBlog?ref_src=twsrc%5Etfw">Tweets by WriteFicBlog</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>        </div>
        
        <!-- js -->
        <!--js-->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
 </body>
</html>
