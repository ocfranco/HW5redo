<%-- 
    Document   : search
    Created on : 20-Oct-2017, 09:23:08
    Author     : btfra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <title>Search Cars</title>
    </head>
    <body>
        <div class ="wrap">
        <h1>Search Cars</h1>
        
        <form name ="searchForm" action="search" method="get">
            
            <input type ="text" name="searchVal" value =""/>
            
            <br>
            
            <input type ="submit" name="submit" value ="Search"/>  
            
        </form>
        </div>
    </body>
</html>
