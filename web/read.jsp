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
        <title>JSP Page</title>
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    <body>
        <h1>My Cars</h1>
        <%= table %>
    </body>
</html>
