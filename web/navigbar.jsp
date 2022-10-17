<%-- 
    Document   : navbar
    Created on : 23-Sep-2022, 11:13:19 pm
    Author     : thomb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- CSS and font awesome kit link -->
        <!--<link rel="stylesheet" href="css/styles.css"/>-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>        
        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>
    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <a class="navbar-brand" href="index.jsp"><i class='fas fa-blog'></i> FICTIONBLOG</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item ">
                <a class="nav-link" href="newarrival.jsp">NEW ARRIVALS <span class="sr-only">(current)</span></a>
              </li>
<!--              <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
              </li>-->
<!--              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  BROWSE
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <h6 class="dropdown-header">Fan-Fiction</h6>
                  <a class="dropdown-item" href="#">Anime/Manga</a>
                  <a class="dropdown-item" href="#">Books</a>
                  <a class="dropdown-item" href="#">Movies</a>
                  <a class="dropdown-item" href="#">Comics</a>
                  <div class="dropdown-divider"></div>
                  <h6 class="dropdown-header">Crossover</h6>
                  <a class="dropdown-item" href="#">Anime/Manga</a>
                  <a class="dropdown-item" href="#">Books</a>
                  <a class="dropdown-item" href="#">Movies</a>
                </div>
              </li>-->
              <li class="nav-item">
                <a class="nav-link " href="login.jsp">LOGIN</a>
              </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
          </div>
        </nav>
        
        <!--js-->
        <!--<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   </body>
</html>
