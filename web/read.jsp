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
           
            

        <h1>My Cars</h1>
        <%= table %>
        
        <br><br>
        <a class ="button" href ="add">Add a New Car</a>
        <br><br>
        <a class ="button" href="search.jsp">Search Cars</a>
                    <div class ="footer">
                &copy; 2010<script>new Date().getFullYear()>2010&&document.write("-"+new Date().getFullYear());</script>, Orestes Franco.
            </div>
        </div>
        
    </body>
</html>
