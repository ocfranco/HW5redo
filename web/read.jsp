<%-- 
    Document   : read
    Created on : 16-Oct-2017, 13:25:57
    Author     : btfra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
                      <title>My Car Database</title>
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    <body>
        <div class="wrap">
        <h1>My Cars</h1>
        <%= table %>
        
        <br><br>
        <a class ="button" href ="add">Add a New Car</a>
        <br><br>
        <a class ="button" href="search.jsp">Search Cars</a>
        </div>
    </body>
</html>
