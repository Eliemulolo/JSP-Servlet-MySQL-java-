<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession sessionUser = request.getSession(false);
    if (sessionUser == null || sessionUser.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<html>
<head><title>Bienvenue</title></head>
<body>
<h2>Bienvenue, <%= sessionUser.getAttribute("username") %> !</h2>
<a href="logout.jsp">Se déconnecter</a>
</body>
</html>
