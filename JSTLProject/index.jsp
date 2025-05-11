<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%
    // Set data in request scope
    request.setAttribute("studentName", "Thakshin Fazeela");
    request.setAttribute("subjects", new String[] {"Math", "Science", "English"});
    request.setAttribute("todayDate", new java.util.Date());
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL Project</title>
</head>
<body>

    <h2>Welcome to JSTL Project</h2>

    <p><strong>Today's date is:</strong> 
        <fmt:formatDate value="${todayDate}" pattern="dd-MM-yyyy" />
    </p>

    <h3>Student Information</h3>
    <p><strong>Name:</strong> <c:out value="${studentName}" /></p>

    <h3>Subjects:</h3>
    <ul>
        <c:forEach var="subject" items="${subjects}">
            <li><c:out value="${subject}" /></li>
        </c:forEach>
    </ul>

    <c:if test="${fn:length(subjects) >= 3}">
        <p>Status: Enrolled in full course</p>
    </c:if>

</body>
</html>
