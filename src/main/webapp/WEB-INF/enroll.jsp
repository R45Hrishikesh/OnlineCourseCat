<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%
    String courseId = request.getParameter("courseId");
    HashMap<String, String> courses = new HashMap<>();
    courses.put("1", "Introduction to Java");
    courses.put("2", "Advanced Python Programming");
    courses.put("3", "Web Development Fundamentals");
    courses.put("4", "Machine Learning Basics");

    String courseName = courses.get(courseId);
%>
<html>
<head>
    <title>Enrollment</title>
</head>
<body>
    <h1>Enroll in <%= courseName != null ? courseName : "Course not found" %></h1>
    <form action="submitEnrollment" method="post">
        <input type="hidden" name="courseId" value="<%= courseId %>"/>
        <label for="name">Your Name:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="email">Your Email:</label>
        <input type="email" id="email" name="email" required><br>
        <button type="submit">Submit</button>
    </form>
    <p><a href="index.jsp">Back to Courses</a></p>
</body>
</html>
