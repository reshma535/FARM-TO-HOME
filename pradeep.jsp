<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - Farm to Home</title>
    <style>
        /* [Same styles from your HTML] */
        * {
            margin: 0; padding: 0; box-sizing: border-box;
        }
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 30px 0;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            width: 100%;
        }
        h1 {
            font-size: 32px;
            margin-bottom: 10px;
        }
        p {
            font-size: 18px;
            opacity: 0.8;
        }
        #form-container {
            width: 100%;
            max-width: 500px;
            padding: 30px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            font-size: 26px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            font-size: 16px;
            margin-bottom: 8px;
            display: block;
        }
        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
        }
        input:focus {
            border: 2px solid #4CAF50;
            outline: none;
        }
        button {
            width: 100%;
            padding: 15px;
            background-color: #4CAF50;
            color: white;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Farm to Home</h1>
        <p>Login to access fresh vegetables and vendors.</p>
    </header>

    <section id="form-container">
        <h2>Login</h2>
        <form action="login" method="post">
            <% String error = request.getParameter("error");
               if ("true".equals(error)) { %>
               <div class="error">Invalid phone number or password</div>
            <% } %>
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required placeholder="Enter phone number">

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required placeholder="Enter password">

            <button type="submit">Login</button>
        </form>
    </section>
</body>
</html>
