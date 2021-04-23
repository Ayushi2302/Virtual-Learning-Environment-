<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.ArrayList,com.virtusa.springmvc.model.Student" %>
    <% 
       ArrayList studentRecord=(ArrayList)request.getAttribute("studentRecord");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Details</title>
<link rel="stylesheet" href="style.css">
</head>
<body style="background-color:#00ffc3">
<h3 style="color: black;" align="center">Student Database</h3>


   <table align="center" class="center" border="1" style="background-color:pink;padding: 10px;width:400px;">
   <caption></caption>
        <thead>
            <tr>
                <th style="color:blue;" id="name">studentName</th>
                <th style="color:blue;" id="uname">userName</th>
                <th style="color:blue;" id="mobileno">mobileNumber</th>
                <th style="color:blue;" id="upassword">userPassword</th>
                <th style="color:blue;" id="gender">Gender</th>
                <th style="color:blue;" id="operations">Operations</th>
            </tr>
        </thead>
        <tbody>
            <% for(int i=0; i<studentRecord.size(); i++ ) { %>
            <tr>
            	<% Student student=(Student)studentRecord.get(i); %>
            <td>
            <%= student.getName() %>
            </td>
             <td>
              <%= student.getEmail() %>
            </td>
             <td>
            <%= student.getMobile() %>
            </td>
             <td>
            <%= student.getPassword() %>
            </td>
             <td>
            <%= student.getGender() %>
            </td>
            <td>
           <a href="Delete"><h4>Delete</h4></a>
            </td>
            </tr>
            <% } %>
        </tbody>
    </table>
    <h3 style="text-align:center;color:green"> Total count : <%= studentRecord.size()%></h3>
    <a href="Home">Log Out</a>
</body>
</html>