<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%
    String courseId = request.getParameter("courseId");
    HashMap<String, String> courses = new HashMap<>();
    courses.put("1", "Introduction to Java: Basics of Java programming.");
    courses.put("2", "Advanced Python Programming: In-depth Python techniques.");
    courses.put("3", "Web Development Fundamentals: HTML, CSS, JavaScript basics.");
    courses.put("4", "Machine Learning Basics: Intro to machine learning concepts.");

    String courseDescription = courses.get(courseId);
%>
<html>
<head>
    <title>Course Details</title>
</head>
<body>
    <h1>Course Details</h1>
    <p><strong>Course ID:</strong> <%= courseId %></p>
    <p><strong>Description:</strong> <%= courseDescription != null ? courseDescription : "Course not found." %></p>
    <a href="enroll.jsp?courseId=<%= courseId %>">Enroll in this course</a> | <a href="index.jsp">Back to Courses</a>
</body>
</html>
