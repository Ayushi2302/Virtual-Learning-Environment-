<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
 <!DOCTYPE hmtl>
<html lang="en">
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Forgot Password</title>
        
        <link rel="stylesheet" href="style.css">
    </head>
 
    <body>
   <h1 style="margin:auto; text-align: center;">Reset New Password</h1>
 
        <div class="form-wrapper">
            <form action="forgot" method="post">
		        <label for="email">Email</label>
                <input type="text" id="email" name="email" placeholder="Enter your Email" required>
                
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter the Password" required>
 
                <label for="password">New Password</label>
                <input type="password" id="password" name="newPassword" placeholder="Enter the New Password" required>
                <input type="submit" value="Submit"></input>
                
                <%
				if (request.getAttribute("error") != null) {
				%>

				<p style="color: red">
					<%=request.getAttribute("error")%>
				</p>
				<%
				}
				session.setAttribute("error", null);
				%>
	</form>
	</div>
</body>

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

</html>