<%-- 
    Document   : login
    Created on : 24-Sep-2022, 10:45:05 am
    Author     : thomb
--%>

<%@page import="com.fiction.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!-- CSS -->
        <link rel="stylesheet" href="css/styles.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>        
        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <!-- nav bar -->
        <%@include file="navigbar.jsp" %>
        
        <main class="d-flex align-items-center" style="height: 80vh">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="card">
                            <div class="card-header primary-bg text-white text-center">
                                <i class="fas fa-user-astronaut fa-3x"></i><br>
                                <p>LOGIN HERE</p>
                            </div>
                            <%
                               Message m = (Message)session.getAttribute("msg");
                               if(m!=null)
                               {
                            %>
                            <div class="alert <%= m.getCssClass() %>" role="alert">
                                <%= m.getCont()  %>
                              </div>
                            <%
                                   session.removeAttribute("msg");
                                }
                            %>
                            <div class="card-body">
                                <form action="LoginServlet" method="POST">
                                <div class="mb-3">
                                  <label for="exampleInputEmail1" class="form-label">Email address</label>
                                  <input type="email" required="true" name="email" class="form-control" id="exampleInputEmail1" >
                                  <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>
                                <div class="mb-3">
                                  <label for="exampleInputPassword1" class="form-label">Password</label>
                                  <input name="pass" required="true" type="password" class="form-control" id="exampleInputPassword1">
                                </div>
                                    <div class="container text-center">
                                <button type="submit" class="btn btn-secondary">Submit</button>
                                    </div>
                                </form>
                            </div>
                            <div class="card-footer primary-bg text-white">
                                <p> New User?? <a href="signup.jsp" style="text-decoration: underline wheat; color: whitesmoke">Register</a> here</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
               
        <<!--js-->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    </body>
</html>
