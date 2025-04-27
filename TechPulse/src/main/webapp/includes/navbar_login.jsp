<%@ page import="com.tech.pulse.entities.User"%>
<%
User user = (User) session.getAttribute("currentUser");
%>

<nav class="navbar navbar-expand-lg navbar-dark primary-background">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><span
			class="fa fa-paper-plane-o me-2"></span>TechPulse</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Home</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> Category </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">Programming</a></li>
						<li><a class="dropdown-item" href="#">Data Structure</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">AI</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item"><a class="nav-link disabled"
					aria-disabled="true">2025</a></li>
			</ul>

			<ul class="navbar-nav me-right">

				<%
				if (user != null) {
				%>

				<li class="nav-item"><a class="nav-link disabled"
					aria-disabled="true"><span class="fa fa-user-circle text-white"></span> <%=user.getName()%></a></li>
				<li class="nav-item"><a class="nav-link" href="LogoutServlet"><span
						class="fa fa-sign-out text-white"></span> Logout</a></li>

				<%
				}
				%>


			</ul>

		</div>
	</div>
</nav>