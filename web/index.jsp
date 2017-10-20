<%-- 
    Document   : index
    Created on : 19-Oct-2017, 15:13:42
    Author     : btfra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <title>Car Database</title>
    </head>
    <body>
        <div class ="wrap"> 
       
            <div class ="header">
               
                <div class ="image">
                    <img src= "sedan.png" alt= "Car Database" height = "50" />
                </div>
                <div class ="menu">
                    <h1> Welcome to My Car Database!</h1>
                </div>
                 <br clear ="all">
            </div> <!-- close header div -->
            
           
            <div class ="main"> 
            
        <h1>My Car Database</h1>
        <a class="button" href="read">View All Cars</a>
        <br><br>
        <a class ="button" href="search.jsp">Search Cars</a>
          
            
            </div>
            
            <div class ="footer">
                &copy; 2010<script>new Date().getFullYear()>2010&&document.write("-"+new Date().getFullYear());</script>, Orestes Franco.
            </div>
        </div> <!-- closes wrap div-->
    </body>
</html>
