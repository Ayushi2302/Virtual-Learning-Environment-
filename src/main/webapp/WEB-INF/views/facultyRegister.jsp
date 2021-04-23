<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE hmtl>
<html lang="en">
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Form</title>
        
        <link rel="stylesheet" href="style.css">
    </head>
 
    <body>
 
        <div class="form-wrapper">
            <h1 style="margin:auto; text-align: center;">Virtual Learning Environment</h1>
 
            <h1>Sign up</h1>
             
            <form action="facultyRegisterProcess" method="post">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" placeholder="Enter your Email" required>
 
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter the Name" required>
 
                <label for="email">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter the Password" required>
 
                <label for="subjectname">Subject Name:</label>
                <input type="text" id="subjectname" name="subjectname" placeholder="Enter the Subject Name" required>
                
                <label for="phoneno">Phone No:</label>
                <input type="text" id="phoneno" name="phoneno" placeholder="Enter the Phone Number" required>
 
                <input type="submit" value="Submit"></input>
                
                <% if(request.getAttribute("error") != null) { %>
        
        		<p style="color:red"> 
        		<%= request.getAttribute("error") %>
        		</p>
        		<% } 
        	session.setAttribute("error", null); %>
                <a href="facultyLogin" style="color: white">Already registered? Login</a>
            </form>
</div>
</body>
</html>

<style>{
                font-family: sans-serif;
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }
 
            body{
                background: linear-gradient(to right,#014d6f 10%,#2b8e8b);
            }
 
            .form-wrapper{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                border-radius: 20px;
                width: 400px;
                padding:20px;
                border: 1px solid #ffffff;
                 
            }
 
            h1{
                color: white;
                text-align: center;
                margin-bottom: 30px;
            }
 
            label{
                color: white;
                font-size: large;
            }
 
            input{
                width: 100%;
                padding: 10px;
                margin: 10px 0px 10px 0;
                background: linear-gradient(to right,#014d6f 10%,#2b8e8b);
                border: 1px solid white;
                border-radius: 5px;
                color: #ffffff;
                display: inline-block;
            }
             
 
            input[type="submit"]{
                font-size: 20px;
                color: white;
                background: rgba(8, 212, 8, 0.664);
            }
 
            input[type="submit"]:hover{
                cursor: pointer;
                background: rgba(8, 212, 8, 0.815);
            }


</style>
 