<%-- 
    Document   : updateForm
    Created on : 19-Oct-2017, 21:12:02
    Author     : btfra
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cars"%>
<% Cars car = (Cars) request.getAttribute("car"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update a Friend </title>
    </head>
    <body>
        <h1>Update a Friend</h1>
        
         <form name="updateForm" action="updateCar" method="get">
           
             <table class ="update">
                 <tr>
                     <td class="right">Car ID:</td>
                     <td><input type ="text" name="id" value="<%= car.getCarID() %>" readonly/></td>
                 </tr>
                 <tr>
                     <td class="right">Car Year:</td>
                     <td><input type ="text" name="year" value="<%= car.getCarYear() %>" /></td>
                 </tr>
                 <tr>
                     <td class="right">Car Make:</td>
                     <td><input type ="text" name="make" value="<%= car.getCarMake() %>" /></td>
                 </tr>
                 <tr>
                     <td class="right">Car Model:</td>
                     <td><input type ="text" name="model" value="<%= car.getCarModel() %>" /></td>
                 </tr>
                 <tr>
                     <td class="right">Car HP:</td>
                     <td><input type ="text" name="hp" value="<%= car.getCarHP() %>" /></td>
                 </tr>
             </table>
           
            <br>
            <input type="reset" name="reset" value="Clear" />
            <input type="submit" name="submit" value="Update" />             
</form> 
   </body>
</html>
