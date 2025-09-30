<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Connexion Utilisateur</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6; /* Light gray background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px; /* Max width for better form presentation */
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            border-bottom: 2px solid #5cb85c; /* Green underline */
            padding-bottom: 10px;
        }
        label {
            display: block; /* Make label take up full width */
            margin-bottom: 8px;
            color: #555;
            font-weight: bold;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box; /* Include padding/border in the element's total width and height */
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #5cb85c; /* Primary green button */
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c; /* Darker green on hover */
        }
        .error-message {
            color: #ff0900;
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>Connexion</h2>
    <form action="login" method="post">
        <label for="username">Utilisateur :</label>
        <input type="text" id="username" name="username" required /><br/>

        <label for="password">Mot de passe :</label>
        <input type="password" id="password" name="password" required /><br/>

        <input type="submit" value="Se connecter" />
    </form>
    <p class="error-message">
        <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
    </p>
</div>
</body>
</html>