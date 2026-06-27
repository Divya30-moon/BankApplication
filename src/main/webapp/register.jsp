<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>BankEase | Register Customer</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
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

        <div class="collapse navbar-collapse"
             id="navbarNav">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">
                        <i class="fa-solid fa-house"></i>
                        Home
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="register.jsp">
                        <i class="fa-solid fa-user-plus"></i>
                        Add Customer
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="display">
                        <i class="fa-solid fa-users"></i>
                        Customers
                    </a>
                </li>

            </ul>

        </div>

    </div>

</nav>

<!-- ================= REGISTER SECTION ================= -->

<section class="register-section">

<div class="container">

<div class="register-card">

<div class="row g-0">

<!-- LEFT PANEL -->

<div class="col-lg-4">

<div class="register-left">

<div class="left-icon">

<i class="fa-solid fa-user-plus"></i>

</div>

<h2>Join BankEase</h2>

<div class="divider"></div>

<p>

Register a new customer and enjoy
secure banking management.

</p>

<div class="left-feature">

<i class="fa-solid fa-shield-halved"></i>

<div>

<h5>Secure & Reliable</h5>

<small>Your information is protected.</small>

</div>

</div>

<div class="left-feature">

<i class="fa-solid fa-bolt"></i>

<div>

<h5>Fast Registration</h5>

<small>Create customers in seconds.</small>

</div>

</div>

<div class="left-feature">

<i class="fa-solid fa-users"></i>

<div>

<h5>Customer First</h5>

<small>Easy banking management.</small>

</div>

</div>

</div>

</div>

<!-- RIGHT PANEL -->

<div class="col-lg-8">

<div class="register-form">

<h2>Register New Customer</h2>

<p>

Fill in the details below to create a customer account.

</p>

<form action="register" method="post">

<div class="mb-4">

<label class="form-label">

Full Name

</label>

<div class="input-group">

<span class="input-group-text">

<i class="fa-solid fa-user"></i>

</span>

<input
type="text"
class="form-control"
name="name"
placeholder="Enter customer name"
required>

</div>

</div>

<div class="mb-4">

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
placeholder="Enter IFSC Code"
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
placeholder="Enter Location"
required>

</div>

</div>

<div class="d-flex gap-3">

<button class="btn btn-primary btn-lg flex-fill">

<i class="fa-solid fa-user-plus"></i>

Register Customer

</button>

<button
type="reset"
class="btn btn-outline-secondary btn-lg">

Reset

</button>

</div>

<div class="text-center mt-4">

<a
href="home.jsp"
class="btn btn-outline-primary">

<i class="fa-solid fa-arrow-left"></i>

Back to Home

</a>

</div>

</form>

</div>

</div>

</div>

</div>

</div>

</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- ================= SUCCESS MODAL ================= -->

<div class="modal fade" id="successModal" tabindex="-1">

    <div class="modal-dialog modal-dialog-centered">

        <div class="modal-content">

            <div class="modal-header bg-success text-white">

                <h5 class="modal-title">

                    <i class="fa-solid fa-circle-check me-2"></i>

                    Registration Successful

                </h5>

            </div>

            <div class="modal-body text-center">

                <i class="fa-solid fa-circle-check text-success"
                   style="font-size:70px;"></i>

                <h4 class="mt-3">
                    Welcome to BankEase
                </h4>

                <p class="text-muted">

                    Customer has been registered successfully.

                </p>

            </div>

            <div class="modal-footer">

                <button
                        type="button"
                        class="btn btn-success"
                        data-bs-dismiss="modal">

                    OK

                </button>

            </div>

        </div>

    </div>

</div>



<!-- Show Modal -->

<c:if test="${not empty success}">

<script>

window.onload = function () {

    var successModal = new bootstrap.Modal(
        document.getElementById('successModal')
    );

    successModal.show();

}

</script>

</c:if>

</body>
</html>


