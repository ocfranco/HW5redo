<%-- 
    Document   : add
    Created on : 13-Oct-2017, 07:33:46
    Author     : btfra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <title>Add a Car</title>
    </head>
    <body>
        <div class="wrap">
        <h1>Add a New Car</h1>
        
        <form name="addForm" action="addCar" method="get">
            
            <label>Car Year:</label>
            <input type ="text" name="year" value="" />
            <br>
            <label>Car Make:</label>
            <input type ="text" name="make" value="" />
            <br>
            <label>Car Model:</label>
            <input type ="text" name="model" value="" />
            <br>
            <label>Car HP:</label>
            <input type ="text" name="hp" value="" />
            <br>
            <input type="submit" name="submit" value="Submit" />
            
            
            
        </form>
        </div>
    </body>
</html>
