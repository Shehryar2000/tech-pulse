<%@page import="com.tech.pulse.entities.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp"%>

<%
// User login check
if (session.getAttribute("currentUser") == null) {
	response.sendRedirect("login.jsp");
	return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">

<!-- Font Awesome (For icons) -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Custom Stylesheet -->
<link href="css/mystyle.css" rel="stylesheet" type="text/css">

<title>Dashboard - TechPulse</title>
</head>
<body>

	<%@include file="includes/navbar_login.jsp"%>

	<%
	User u = (User) session.getAttribute("currentUser");
	%>
	<div class="container mt-4">
		<p>
			Name:
			<%=u.getName()%></p>
		<p>
			Email:
			<%=u.getEmail()%></p>
		<p>
			Gender:
			<%=u.getGender()%></p>
		<p>
			About:
			<%=u.getAbout()%></p>
		<p>
			Profile:
			<%=u.getProfile()%></p>
		<p>
			DateTime:
			<%=u.getDateTime()%></p>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>

</body>
</html>