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
             <div class ="header">
               
                <div class ="image">
                    <img src= "sedan.png" alt= "Car Database" height = "50" />
                </div>
                <div class ="title">
                    <h1> Welcome to My Car Database!</h1>
                </div>
                 <br clear ="all">
            </div> <!-- close header div -->
            <div class ="menu">
     
            <ul id="navlist">
            <li id="active"><a href="index.jsp" id="current">Home</a></li>
            <li><a href="read">View All Cars</a></li>
            <li><a href="search.jsp">Search Cars</a></li>
            <li><a href="add">Add a New Car</a></li>
            
            </ul>

                
            </div>
        <h1>Search Cars</h1>
        
        <form name ="searchForm" action="search" method="get">
            
            <input type ="text" name="searchVal" value =""/>
            
            <br>
            
            <input type ="submit" name="submit" value ="Search"/>  
            
        </form>
            <div class ="footer">
                &copy; 2010<script>new Date().getFullYear()>2010&&document.write("-"+new Date().getFullYear());</script>, Orestes Franco.
            </div>
       
        </div>
    </body>
</html>
