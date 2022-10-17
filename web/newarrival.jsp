<%-- 
    Document   : newarrival
    Created on : 30-Sep-2022, 10:12:14 am
    Author     : thomb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Arrivals || FictionBlog</title>
        <!-- CSS and font awesome kit link -->
        <link rel="stylesheet" href="css/styles.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>        
        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>
        <style>
            .banner{
                clip-path: polygon(37% 0, 82% 0, 100% 0, 100% 89%, 69% 100%, 29% 90%, 0 100%, 0 0);

            }
            .menu
            {
                background-color: buttonface!important;
                align-content: flex-start;
                margin: 30px;
            }
        </style>
        
    </head>
    <body>
       <!-- navbar start -->
               <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <a class="navbar-brand" href="index.jsp"><i class='fas fa-blog'></i> FICTIONBLOG</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item ">
                <a class="nav-link" onclick="getStory(0,0)" href="#">NEW ARRIVALS <span class="sr-only">(current)</span></a>
              </li>

              <li class="nav-item">
                <a class="nav-link " href="login.jsp">PUBLISH</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="signup.jsp">SIGNUP</a>
              </li>
            </ul>
             
            <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
            
          </div>
        </nav>
        <!-- navbar end -->
        
        <!--Start main body-->
        <div class="container-sm mt-3 menu" id="allstory">
             
            
        </div>
        
        
        <!--End Main body-->
        

        <!--js-->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <script>
            
            function getStory(catId,tyid){
                $.ajax({
                    url: "storyshow.jsp",
                    data: {cid: catId, tid: tyid},
                    success: function(data,textStatus,jqXHR){
                        console.log(data);
                        $('#allstory').html(data);
                    }
                    
                })
            }
            
            $(document).ready(function(e){

                getStory(0,0)

                
            })

        </script>
        

    </body>
</html>
