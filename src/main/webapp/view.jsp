<%@ include file="header.jsp" %>
<div class="wrapper text-center">
    <h1>News View</h1>
    <h2><%= request.getAttribute("title") %></h2>
    <small><%= request.getAttribute("author") %></small>
    <p><%= request.getAttribute("body") %></p>
</div>
<%@ include file="footer.jsp" %>
