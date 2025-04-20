<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title>Register - TechPulse</title>
</head>
<body>

	<%@include file="includes/navbar_normal.jsp"%>

	<main
		class="d-flex align-items-center secondary-bg banner-login-bg py-5 px-3"
		style="min-height: 70vh">
		<div class="container">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<div class="card">
						<div
							class="card-header card-header-custom d-flex flex-column align-items-center justify-content-center text-center">
							<span class="	fa fa-user-plus fa-2x"></span>
							<p class="mb-0">Register here</p>
						</div>
						<div class="card-body">
							<form>

								<div class="mb-3">
									<label for="user_name" class="form-label">Username</label> <input
										type="text" class="form-control" id="user_name"
										placeholder="Enter your name">
								</div>

								<div class="mb-3">
									<label for="email" class="form-label">Email</label> <input
										type="email" class="form-control" id="email"
										placeholder="Enter your email">
								</div>

								<div class="mb-3">
									<label for="password" class="form-label">Password</label> <input
										type="password" class="form-control" id="password"
										placeholder="Enter your password">
								</div>


								<fieldset class="row mb-3">
									<legend class="col-form-label col-sm-2 pt-0">Gender</legend>
									<div class="col-sm-10">
										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="gridRadios" id="male" value="male" checked> <label
												class="form-check-label" for="gridRadios1"> Male </label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="gridRadios" id="female" value="female"> <label
												class="form-check-label" for="gridRadios2"> Female </label>
										</div>
									</div>
								</fieldset>

								<div class="form-group">

									<textarea name="about" class="form-control" rows="5" cols="30"
										placeholder="Enter something about yourself"></textarea>
								</div>

								<div class="mb-3 form-check">
									<input class="form-check-input" type="checkbox"
										id="rememberRegister"> <label class="form-check-label"
										for="rememberMe">Agree terms and condition</label>
								</div>

								<button type="submit" class="btn btn-standard w-100">Sign
									in</button>
							</form>
						</div>
						<div class="card-footer"></div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
</body>
</html>