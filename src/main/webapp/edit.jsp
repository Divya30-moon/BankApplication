<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.jsp.bankEase.entity.Bank"%>
<%@ page isELIgnored="false"%>

<%
Bank bank = (Bank) request.getAttribute("bank");
request.setAttribute("b", bank);
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>BankEase | Update Customer</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="navbar navbar-expand-lg navbar-dark custom-navbar">

	<div class="container">

		<a class="navbar-brand fw-bold fs-3" href="home.jsp">
			<i class="fa-solid fa-building-columns me-2"></i>
			BankEase
		</a>

		<button class="navbar-toggler"
			type="button"
			data-bs-toggle="collapse"
			data-bs-target="#navbarNav">

			<span class="navbar-toggler-icon"></span>

		</button>

		<div class="collapse navbar-collapse" id="navbarNav">

			<ul class="navbar-nav ms-auto">

				<li class="nav-item">
					<a class="nav-link" href="home.jsp">
						<i class="fa-solid fa-house"></i> Home
					</a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="register.jsp">
						<i class="fa-solid fa-user-plus"></i> Add Customer
					</a>
				</li>

				<li class="nav-item">
					<a class="nav-link active" href="display">
						<i class="fa-solid fa-users"></i> Customers
					</a>
				</li>

			</ul>

		</div>

	</div>

</nav>

<!-- ================= UPDATE SECTION ================= -->

<section class="update-section">

	<div class="container">

		<div class="update-card">

			<div class="row">

				<!-- LEFT SIDE -->

				<div class="col-lg-4">

					<div class="update-left">

						<div class="update-icon">

							<i class="fa-solid fa-user-pen"></i>

						</div>

						<h2>Update Customer</h2>

						<div class="divider"></div>

						<p>

							Update customer details securely.
							Your modifications will be stored
							safely in the BankEase database.

						</p>

						<div class="left-feature">

							<i class="fa-solid fa-shield-halved"></i>

							<div>

								<h5>Secure Update</h5>

								<small>Your information remains protected.</small>

							</div>

						</div>

						<div class="left-feature">

							<i class="fa-solid fa-database"></i>

							<div>

								<h5>Database Sync</h5>

								<small>Changes are saved instantly.</small>

							</div>

						</div>

						<div class="left-feature">

							<i class="fa-solid fa-circle-check"></i>

							<div>

								<h5>Reliable</h5>

								<small>Professional banking management.</small>

							</div>

						</div>

					</div>

				</div>

				<!-- RIGHT SIDE -->

				<div class="col-lg-8">

					<div class="update-form">

						<h2>

							<i class="fa-solid fa-user-pen me-2"></i>

							Update Customer Details

						</h2>

						<p>

							Modify customer information below.

						</p>

						<form action="update" method="post">

							<input type="hidden"
								name="id"
								value="${b.getId()}">

							<div class="mb-3">

								<label class="form-label">

									Customer ID

								</label>

								<input
									type="text"
									class="form-control"
									value="${b.getId()}"
									readonly>

							</div>

							<div class="mb-3">

								<label class="form-label">

									Customer Name

								</label>

								<div class="input-group">

									<span class="input-group-text">

										<i class="fa-solid fa-user"></i>

									</span>

									<input
										type="text"
										class="form-control"
										name="name"
										value="${b.getName()}"
										required>

								</div>

							</div>

							<div class="mb-3">

								<label class="form-label">

									IFSC Code

								</label>

								<div class="input-group">

									<span class="input-group-text">

										<i class="fa-solid fa-building-columns"></i>

									</span>

									<input
										type="text"
										class="form-control"
										name="ifsc"
										value="${b.getIfsc()}"
										required>

								</div>

							</div>

							<div class="mb-4">

								<label class="form-label">

									Location

								</label>

								<div class="input-group">

									<span class="input-group-text">

										<i class="fa-solid fa-location-dot"></i>

									</span>

									<input
										type="text"
										class="form-control"
										name="loc"
										value="${b.getLoc()}"
										required>

								</div>

							</div>

							<div class="alert alert-primary">

								<i class="fa-solid fa-shield-halved me-2"></i>

								Your changes will be securely updated in the system.

							</div>

							<div class="d-flex gap-3">

								<button type="submit"
        class="btn btn-primary btn-lg flex-fill"
        onclick="return confirm('Are you sure you want to update this customer?')">

    <i class="fa-solid fa-floppy-disk"></i>

									Update Customer

								</button>
  <a href="display"
       class="btn btn-outline-secondary btn-lg">

        <i class="fa-solid fa-arrow-left"></i>

        Back

    </a>
							</div>

						</form>

					</div>

				</div>

			</div>

		</div>

	</div>

</section>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>