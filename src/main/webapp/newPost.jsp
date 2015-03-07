<%-- 
    Document   : newPost
    Created on : Mar 6, 2015, 10:42:21 AM
    Author     : McKay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add a comment</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <h1>Enter a new post:</h1>
        
        <%
            String dataDirectory = System.getenv("OPENSHIFT_DATA_DIR");
            System.out.println("<h1>"+dataDirectory+"</h1>");
            %>
        
        <form method="POST" action="CreatePost">
            Post: <input type="text" name="text" autofocus/><br />
            <input type="hidden" name="username" value="${username}" />
            <br />
            <input type="submit" value="Submit" />            
       </form>
        <br />
        <strong>OR</strong><br />
        <br />
        <a href="ShowThread">View Thread</a>
        
    </body>
</html>
