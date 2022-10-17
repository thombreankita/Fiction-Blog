<%@page import="com.fiction.blog.dao.Likedao"%>
<%@page import="com.fiction.blog.dao.Userdao"%>
<%@page import="com.fiction.blog.entities.User"%>
<%@page import="java.util.List"%>
<%@page import="com.fiction.blog.helper.ConnectionProvider"%>
<%@page import="com.fiction.blog.dao.Storydao"%>
<%@page import="com.fiction.blog.entities.StoryPost"%>
<%
    User u = (User) session.getAttribute("currentUser");
    if(u == null)
    {
        response.sendRedirect("login.jsp");
    }
%>


<%
//    User u = new User();
    Userdao ud= new Userdao(ConnectionProvider.getConnection());
    
    
    Storydao d = new Storydao(ConnectionProvider.getConnection());
    int cid = Integer.parseInt(request.getParameter("cid"));
    int tid = Integer.parseInt(request.getParameter("tid"));
    List<StoryPost> sp = null;
         if(cid==0 && tid==0)
    {
        sp= d.getAllPosts();
    }
    else
    {
        sp = d.getPostByCatId(cid,tid);
    }
    
    if(sp.size()==0)
    {
        out.println("<h3 class='display-3 text-center'>NO STORIES IN THIS CATEGORY:-(</h3>");
        return;
    }
    
    for(StoryPost stp : sp )
    {

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <!-- CSS and font awesome kit link -->
        <link rel="stylesheet" href="css/styles.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>        
        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>
    </head>
    <body>
    <div  style='min-height:100px;border-bottom:1px #cdcdcd solid;'>
    <img style='clear:left;float:left;margin-right:3px;padding:2px;border:1px solid #ccc;-moz-border-radius:2px;-webkit-border-radius:2px;' src='story_pics/<%=stp.getPic()%>' width=70 height=95>
    <a href="storypg.jsp?stid=<%= stp.getSid() %>"><%= stp.getTitle()%> </a> <i class="fas fa-angle-right"></i> <% u = ud.getUserByUserId(stp.getUser_id());%><%= u.getName()%>
    <div>
        <%= stp.getSummary()%>
        <br>
        <%
            Likedao ld = new Likedao(ConnectionProvider.getConnection());
        %>
        <div style="color: darkgray">Published on : <%= stp.getPublish_date().toLocaleString()%> - <i class="	fas fa-thumbs-up"></i>: <%= ld.countLikes(stp.getSid()) %>
        </div>
    </div>
</div>
<%
    }
%>

<!--js-->
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="js/jsstyle.js"></script>
        
        



    </body>
</html>