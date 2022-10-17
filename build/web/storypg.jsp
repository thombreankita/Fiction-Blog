<%-- 
    Document   : storypg
    Created on : 27-Sep-2022, 10:55:58 am
    Author     : thomb
--%>
<%@page import="com.fiction.blog.dao.Likedao"%>
<%@page import="com.fiction.blog.entities.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.fiction.blog.entities.Category"%>
<%@page import="com.fiction.blog.entities.StoryPost"%>
<%@page import="com.fiction.blog.dao.Storydao"%>
<%@page import="com.fiction.blog.helper.ConnectionProvider"%>
<%@page import="com.fiction.blog.dao.Userdao"%>

<%
   //the logged in user
    User u = (User) session.getAttribute("currentUser");
    if(u == null)
    {
        response.sendRedirect("login.jsp");
    }
%>

<%
    int stid=Integer.parseInt(request.getParameter("stid"));
    Storydao sd = new Storydao(ConnectionProvider.getConnection());
    StoryPost sp = sd.getStoryById(stid);
    //the author of the story
    Userdao ud = new Userdao(ConnectionProvider.getConnection());
     User u2 = null;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= sp.getTitle() %> || FictionBlog</title>
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
       <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v15.0" nonce="RSsVc9hP"></script>  
        <!-- navbar start -->
               <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <a class="navbar-brand" href="index.jsp"><i class='fas fa-blog'></i> FICTIONBLOG</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item ">
                <a class="nav-link" onclick="getStory(0,0)" href="profile.jsp">NEW ARRIVALS <span class="sr-only">(current)</span></a>
              </li>
            </ul>
             <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"> <i class="fas fa-user-circle"></i> <%= u.getName()%> </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="LogoutServlet"> LOGOUT</a>
                    </li>
                </ul>
          </div>
        </nav>
        <!-- navbar end -->
        
        <!--Start main body-->
        <div class="container-sm mt-3 menu">
            
            <div style='min-height:100px;border-bottom:1px #cdcdcd solid;'><div class="row">
                 <div class="col-lg-11">
             <img style='clear:left;float:left;margin-right:3px;padding:2px;border:1px solid #ccc;-moz-border-radius:2px;-webkit-border-radius:2px;' src='story_pics/<%=sp.getPic()%>' width=70 height=95>
             <h2 style="font: bold;"><%= sp.getTitle()%> </h2> 
             
             Author: <%u2 = ud.getUserByUserId(sp.getUser_id());%><%= u2.getName()%></div>
             <div class="col-lg-1"><br><a  href="#" onclick="doLike(<%= sp.getSid() %>,<%= u.getId() %>)" class="btn btn-secondary"><i class="fas fa-thumbs-up"></i><span class="like-counter"> </span> Like</a>
              </div>
             </div>
              <%
                  Likedao ld = new Likedao(ConnectionProvider.getConnection());
              %>
              <div style="color: darkgray">Published on : <%= sp.getPublish_date().toLocaleString()%> - <i class="fas fa-thumbs-up"></i>:<%= ld.countLikes(sp.getSid()) %>  
                </div>
            </div>
                <div>
                <%= sp.getContent()%>
            </div>
            <div class="container text-center" style="margin-bottom: 20px;">
                <div class="fb-comments" data-href="http://localhost:8080/FictionBlog/storypg.jsp?stid=<%=sp.getSid()%>" data-width="50px" data-numposts="5"></div>           
            </div>
        </div>
        
        <!--End Main body-->
        
         <!--profile modal-->
          <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header primary-bg text-white text-center">
                        <h5 class="modal-title" id="exampleModalLabel"> FICTIONBLOG </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <img src="pics/<%= u.getProfile()%>" class="img-fluid" style="border-radius:50%;max-width: 150px;;" >
                            <br>
                            <h5 class="modal-title mt-3" id="exampleModalLabel"> <%= u.getName()%> </h5>
                            <!--//details-->

                            <div id="profile-details">
                                <table class="table">

                                    <tbody>
                                        <tr>
                                            <th scope="row"> ID :</th>
                                            <td> <%= u.getId()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row"> Email : </th>
                                            <td><%= u.getEmail()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Gender :</th>
                                            <td><%= u.getGender()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Status :</th>
                                            <td><%= u.getAbout()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Registered on :</th>
                                            <td><%= u.getRdate().toString()%></td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                            <!--profile edit-->

                            <div id="profile-edit" style="display: none;">
                              <h3 class="mt-2">Please Edit Carefully</h3>
                                <form action="EditServlet" method="post" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <td>ID :</td>
                                            <td><%= u.getId()%></td>
                                        </tr>
                                        <tr>
                                            <td>Email :</td>
                                            <td> <input type="email" class="form-control" name="user_email" value="<%= u.getEmail()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>Name :</td>
                                            <td> <input type="text" class="form-control" name="user_name" value="<%= u.getName()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>Password :</td>
                                            <td> <input type="password" class="form-control" name="user_password" value="<%= u.getPassword()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>Gender :</td>
                                            <td> <%= u.getGender().toUpperCase()%> </td>
                                        </tr>
                                        <tr>
                                            <td>About  :</td>
                                            <td>
                                                <textarea rows="3" class="form-control" name="user_about" ><%= u.getAbout()%>
                                                </textarea>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>New Profile:</td>
                                            <td>
                                                <input type="file" name="image" class="form-control" >
                                            </td>
                                        </tr>

                                    </table>

                                    <div class="container">
                                        <button type="submit" class="btn btn-secondary">SAVE</button>
                                    </div>

                                </form>    

                            </div>

                        </div>
                                            
                            
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">CLOSE</button>
                        <button id="edit-profile-button"  type="button" class="btn btn-secondary">EDIT</button>
                    </div>  
                </div>
             </div>
            </div>
        </div>
        <!-- Profile modal end -->
        
        <!--js-->
        
         <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="js/jsstyle.js"></script>
        <script>
           $(document).ready(function()
           {
               
               let editStatus=false;
               
               $('#edit-profile-button').click(function()
               {
                    if(editStatus == false)
                    {
                        $("#profile-details").hide()
                        $("#profile-edit").show();
                        editStatus = true;
                        $(this).text("BACK")
                    }
                    else
                    {
                        $("#profile-details").show()
                        $("#profile-edit").hide();
                        editStatus = false;
                         $(this).text("EDIT")
                    }
               })
           })
        </script>
    </body>
</html>
