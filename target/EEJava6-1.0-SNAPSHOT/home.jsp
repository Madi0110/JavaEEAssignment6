<jsp:include page="templates/header.jsp"></jsp:include>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.company.entities.NewsEntity" %>

<div class="wrapper">
    <h1 class="text-center">Home Page</h1>

<%--statement--%>
    <%
    ArrayList<NewsEntity> l = (ArrayList)request.getAttribute("newsList");
    for(NewsEntity e: l) {
    %>
        <div>
            <%--expression--%>
            <h3><%= e.getTitle() %></h3>
            <p><%= e.getBody() %></p>
            <a href="<%= request.getContextPath() %>/view?v=<%= e.getId() %>">link</a>
            <hr>
        </div>
    <% } %>

</div>
<jsp:include page="templates/footer.jsp"></jsp:include>
