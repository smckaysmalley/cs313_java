<%-- 
    Document   : postList
    Created on : Mar 6, 2015, 9:14:34 AM
    Author     : McKay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css" type="text/css" />
    </head>
    <body>
        <h1>Discussion Thread</h1>
        <hr />
        <a href="newPost.jsp">Add a Comment</a>
        <div>
            
            <c:forEach var="post" items="${posts}">
                <div class="post-box"><strong class="username">${post.username}</strong> - ${post.text} <span class="light-date">${post.date}</span></div>
            </c:forEach>
            
        </div>
        <a href="logout">Logout</a>
    </body>
</html>
