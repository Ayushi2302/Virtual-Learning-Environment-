<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.ArrayList,com.virtusa.springmvc.model.Course" %>
    <% 
       ArrayList courseRecord=(ArrayList)request.getAttribute("courseList");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>courseDetails</title>
</head>
<body style="background-color:#00ffc3">
<h3 style="color: black;" align="center">Student Database</h3>
<table align="center" class="center" border="1" style="background-color:pink;padding: 10px;width:400px;">
<caption></caption>
        <thead>
            <tr>
                <th style="color:blue;" id="sname">studentName</th>
                <th style="color:blue;" id="cname">courseName</th>
                <th style="color:blue;" id="cfee">courseFee</th>
                <th style="color:blue;" id="email">Email</th>
                <th style="color:blue;" id="password">Password</th>
                <th style="color:blue;" id="status">Status</th>
            </tr>
        </thead>
            <tbody>
            <% for(int i=0; i<courseRecord.size(); i++ ) { %>
            <tr>
            	<% Course course=(Course)courseRecord.get(i); %>
            <td>
            <%= course.getStudentName() %>
            </td>
             <td>
              <%= course.getCourseName() %>
            </td>
             <td>
            </td>
             <td>
            <%= course.getEmail() %>
            </td>
             <td>
            <%= course.getPassword() %>
            </td>
            <td>
           <h4>Paid</h4>
            </td>
            </tr>
            <% } %>
        </tbody>
        </table>
</body>
</html>