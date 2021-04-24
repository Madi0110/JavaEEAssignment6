<!DOCTYPE html>

<%-- This is header page --%>

<html>
    <head>
        <meta charset="utf-8">
        <!-- CSS -->
        <style><%@ include file="../main.css" %></style>

    </head>

    <body>
        <header>
            <jsp:useBean id="user" scope="session" class="com.company.entities.UserEntity"></jsp:useBean>
            <%--declaration--%>
            <%! String login; %>


            <ul class="header-nav">
                <li><a href="<%= request.getContextPath() %>/">Home</a></li>
                <li><a href="<%= request.getContextPath() %>/about.jsp">About</a></li>
                <li><a href="<%= request.getContextPath() %>/contacts.jsp">Contact us</a></li>
                <%
                    login = user.getLogin();
                    if (login != null) {
                        out.print("<li><a href=" + request.getContextPath() + "/logout>Logout</a></li>\n");
                        out.print("<li><a href=" + request.getContextPath() + "/add-news>Add News</a></li>");
                    }
                    else {
                        out.print("<li><a href=" + request.getContextPath() + "/login>Login</a></li>\n");
                        out.print("<li><a href=" + request.getContextPath() + "/register>Register</a></li>");
                    }
                %>
            </ul>
        </header>
