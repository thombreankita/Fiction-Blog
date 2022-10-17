<%-- 
    Document   : storyshow
    Created on : 30-Sep-2022, 2:31:32 pm
    Author     : thomb
--%>


<%@page import="com.fiction.blog.entities.User"%>
<%@page import="com.fiction.blog.dao.Likedao"%>
<%@page import="java.util.List"%>
<%@page import="com.fiction.blog.entities.StoryPost"%>
<%@page import="com.fiction.blog.dao.Storydao"%>
<%@page import="com.fiction.blog.dao.Userdao"%>
<%@page import="com.fiction.blog.helper.ConnectionProvider"%>
<%
    User u = new User();
    Userdao ud= new Userdao(ConnectionProvider.getConnection());
    
    
    Storydao d = new Storydao(ConnectionProvider.getConnection());
    int cid = Integer.parseInt(request.getParameter("cid"));
    int tid = Integer.parseInt(request.getParameter("tid"));
    List<StoryPost> sp = null;
         if(cid==0 && tid==0)
    {
        sp= d.getAllPosts();
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
        <title>JSP Page</title>
        <!-- CSS and font awesome kit link -->
        <link rel="stylesheet" href="css/styles.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>        
        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>

    </head>
    <body>
<div  style='min-height:100px;border-bottom:1px #cdcdcd solid;'>
    <img style='clear:left;float:left;margin-right:3px;padding:2px;border:1px solid #ccc;-moz-border-radius:2px;-webkit-border-radius:2px;' src='story_pics/<%=stp.getPic()%>' width=70 height=95>
    <a href="login.jsp"><%= stp.getTitle()%> </a> <i class="fas fa-angle-right"></i> <% u = ud.getUserByUserId(stp.getUser_id());%><%= u.getName()%>
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
%>    </body>
</html>
