<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>BankEase | Bank Management System</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

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

<a class="nav-link active" href="home.jsp">

<i class="fa-solid fa-house"></i>

Home

</a>

</li>

<li class="nav-item">

<a class="nav-link" href="register.jsp">

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


<!-- ================= HERO SECTION ================= -->

<section class="hero-section">

    <div class="container">

        <div class="row align-items-center">

            <!-- Left Content -->

            <div class="col-lg-6">

                <span class="hero-badge">
                    <i class="fa-solid fa-shield-halved"></i>
                    Trusted Banking Solution
                </span>

                <h1 class="hero-title mt-4">
                    Modern Banking <br>
                    Management System
                </h1>

                <p class="hero-text">

                    Securely manage customer records, perform CRUD
                    operations, and maintain banking information
                    using Java, Hibernate, JSP, Servlets and
                    PostgreSQL.

                </p>

                <!-- Features -->

                <div class="hero-features">

                    <span>
                        <i class="fa-solid fa-circle-check"></i>
                        Secure
                    </span>

                    <span>
                        <i class="fa-solid fa-circle-check"></i>
                        Fast CRUD
                    </span>

                    <span>
                        <i class="fa-solid fa-circle-check"></i>
                        PostgreSQL
                    </span>

                </div>

                <!-- Buttons -->

                <div class="hero-buttons mt-5">

                    <a href="register.jsp" class="btn btn-warning btn-lg">

                        <i class="fa-solid fa-user-plus"></i>

                        Register Customer

                    </a>

                    <a href="display" class="btn btn-outline-light btn-lg ms-3">

                        <i class="fa-solid fa-users"></i>

                        View Customers

                    </a>

                </div>

            </div>

            <!-- Right Side -->

            <div class="col-lg-6">

                <div class="bank-card">

                    <div class="bank-card-top">

                        <span>BankEase</span>

                        <i class="fa-solid fa-building-columns"></i>

                    </div>

                    <h3>Secure Banking</h3>

                    <p>

                        Customer Management Platform

                    </p>

                    <hr>

                    <div class="card-stats">

                        <div>

                            <h4>250+</h4>

                            <small>Customers</small>

                        </div>

                        <div>

                            <h4>1200+</h4>

                            <small>Transactions</small>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>

<!-- ================= QUICK ACTIONS ================= -->

<section class="quick-actions py-5">

    <div class="container">

        <div class="text-center mb-5">

            <h2 class="fw-bold">
                Quick Actions
            </h2>

            <p class="text-muted">
                Manage your banking operations quickly.
            </p>

        </div>

        <div class="row g-4">

            <!-- Add Customer -->
            <div class="col-lg-3 col-md-6">
                <div class="action-card">

                    <div class="action-icon">
                        <i class="fa-solid fa-user-plus"></i>
                    </div>

                    <h4>Add Customer</h4>

                    <p>
                        Register a new customer into the banking system.
                    </p>

                    <a href="register.jsp" class="btn btn-primary">
                        Register
                    </a>

                </div>
            </div>

           <!-- Customers -->
<div class="col-lg-3 col-md-6">

    <div class="action-card">

        <div class="action-icon">
            <i class="fa-solid fa-users"></i>
        </div>

        <h4>Customers</h4>

        <p>
            View, update and delete customer records.
        </p>

        <a href="display" class="btn btn-primary">
            View
        </a>

    </div>

</div>

<!-- Search -->
<div class="col-lg-3 col-md-6">

    <div class="action-card">

        <div class="action-icon">
            <i class="fa-solid fa-magnifying-glass"></i>
        </div>

        <h4>Search</h4>

        <p>
            Search customer information and banking details.
        </p>

        <a href="#search" class="btn btn-primary">
            Search
        </a>

    </div>

</div>

<!-- Security -->
<div class="col-lg-3 col-md-6">

    <div class="action-card">

        <div class="action-icon">
            <i class="fa-solid fa-shield-halved"></i>
        </div>

        <h4>Security</h4>

        <p>
            Secure customer information with reliable database storage.
        </p>

        <button class="btn btn-primary">
            Protected
        </button>

    </div>

</div>

        </div>

    </div>

</section>

<!-- ================= DASHBOARD STATISTICS ================= -->

<section class="dashboard-section py-5">

    <div class="container">

        <div class="text-center mb-5">

            <h2 class="fw-bold">
                Dashboard Overview
            </h2>

            <p class="text-muted">
                Monitor your banking system at a glance.
            </p>

        </div>



    <div class="row g-4">

        <!-- Total Customers -->

        <div class="col-lg-3 col-md-6">

            <div class="stats-card">

                <div class="stats-icon bg-primary">

                    <i class="fa-solid fa-users"></i>

                </div>

                <h3>250+</h3>

                <p>Total Customers</p>

            </div>

        </div>

        <!-- Transactions -->

        <div class="col-lg-3 col-md-6">

            <div class="stats-card">

                <div class="stats-icon bg-success">

                    <i class="fa-solid fa-money-bill-transfer"></i>

                </div>

                <h3>1200+</h3>

                <p>Transactions</p>

            </div>

        </div>

        <!-- Database -->

        <div class="col-lg-3 col-md-6">

            <div class="stats-card">

                <div class="stats-icon bg-warning">

                    <i class="fa-solid fa-database"></i>

                </div>

                <h3>PostgreSQL</h3>

                <p>Database</p>

            </div>

        </div>

        <!-- Security -->

        <div class="col-lg-3 col-md-6">

            <div class="stats-card">

                <div class="stats-icon bg-danger">

                    <i class="fa-solid fa-lock"></i>

                </div>

                <h3>100%</h3>

                <p>Secure Records</p>

            </div>

        </div>

    </div>

</section>

<!-- ================= QUICK SEARCH ================= -->

<section class="container py-5" id="search">

    <div class="row">

        <!-- Search Card -->

        <div class="col-lg-7 mb-4">

            <div class="search-card">

                <h2 class="mb-4">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    Search on Google

                </h2>

                <form action="search">

                    <div class="input-group input-group-lg">

                        <input
                        type="text"
                        class="form-control"
                        placeholder="Search Anything..."
                        name="search"
                        required>

                        <button class="btn btn-primary">

                            <i class="fa-solid fa-search"></i>

                            Search

                        </button>

                    </div>

                </form>

            </div>

        </div>

        <!-- Banking Services -->

        <div class="col-lg-5">

            <div class="service-card">

                <h3 class="mb-4">

                    Banking Services

                </h3>

                <div class="service-item">

                    <i class="fa-solid fa-user-check"></i>

                    Customer Registration

                </div>

                <div class="service-item">

                    <i class="fa-solid fa-pen-to-square"></i>

                    Update Customer

                </div>

                <div class="service-item">

                    <i class="fa-solid fa-trash"></i>

                    Delete Customer

                </div>

                <div class="service-item">

                    <i class="fa-solid fa-table-list"></i>

                    View Customer Records

                </div>

                <div class="service-item">

                    <i class="fa-solid fa-shield-halved"></i>

                    Secure PostgreSQL Database

                </div>

            </div>

        </div>

    </div>

</section>

<!-- ================= WHY CHOOSE BANKEASE ================= -->

<section class="container py-5">

    <div class="row align-items-center">

        <!-- Left Side -->

        <div class="col-lg-6">

            <span class="section-tag">

                WHY CHOOSE US

            </span>

            <h2 class="mt-3 mb-4">

                Modern Banking Management
                <br>
                Made Simple

            </h2>

            <p class="text-muted">

                BankEase provides a secure and efficient way to manage
                customer information using Java, Hibernate and PostgreSQL.
                The system is designed to simplify banking operations
                with a responsive and user-friendly interface.

            </p>

            <div class="feature-list mt-4">

                <div class="feature-item">

                    <i class="fa-solid fa-circle-check"></i>

                    Secure Customer Management

                </div>

                <div class="feature-item">

                    <i class="fa-solid fa-circle-check"></i>

                    Fast CRUD Operations

                </div>

                <div class="feature-item">

                    <i class="fa-solid fa-circle-check"></i>

                    PostgreSQL Database Integration

                </div>

                <div class="feature-item">

                    <i class="fa-solid fa-circle-check"></i>

                    Responsive Bootstrap Interface

                </div>

                <div class="feature-item">

                    <i class="fa-solid fa-circle-check"></i>

                    Layered MVC Architecture

                </div>

            </div>

        </div>

        <!-- Right Side -->

        <div class="col-lg-6 text-center">

            <div class="choose-image">

                <i class="fa-solid fa-building-columns"></i>

            </div>

        </div>

    </div>

</section>

<!-- ================= TECHNOLOGY STACK ================= -->

<section class="container py-5">

    <div class="text-center mb-5">

        <span class="section-tag">

            TECHNOLOGY STACK

        </span>

        <h2 class="mt-3">

            Built Using Modern Technologies

        </h2>

        <p class="text-muted">

            Technologies used to develop the BankEase Management System.

        </p>

    </div>

    <div class="row g-4">

        <!-- Java -->

        <div class="col-lg-2 col-md-4 col-6">

            <div class="tech-card">

                <i class="fa-brands fa-java"></i>

                <h5>Java</h5>

            </div>

        </div>

        <!-- Hibernate -->

        <div class="col-lg-2 col-md-4 col-6">

            <div class="tech-card">

                <i class="fa-solid fa-layer-group"></i>

                <h5>Hibernate</h5>

            </div>

        </div>

        <!-- PostgreSQL -->

        <div class="col-lg-2 col-md-4 col-6">

            <div class="tech-card">

                <i class="fa-solid fa-database"></i>

                <h5>PostgreSQL</h5>

            </div>

        </div>

        <!-- JSP -->

        <div class="col-lg-2 col-md-4 col-6">

            <div class="tech-card">

                <i class="fa-solid fa-file-code"></i>

                <h5>JSP</h5>

            </div>

        </div>

        <!-- Servlet -->

        <div class="col-lg-2 col-md-4 col-6">

            <div class="tech-card">

                <i class="fa-solid fa-server"></i>

                <h5>Servlet</h5>

            </div>

        </div>

        <!-- Bootstrap -->

        <div class="col-lg-2 col-md-4 col-6">

            <div class="tech-card">

                <i class="fa-brands fa-bootstrap"></i>

                <h5>Bootstrap</h5>

            </div>

        </div>

    </div>

</section>

<!-- ================= CALL TO ACTION ================= -->

<section class="cta-section py-5">

    <div class="container">

        <div class="row justify-content-center">

            <div class="col-lg-10">

                <div class="cta-box text-center">

                    <span class="section-tag text-white">

                        GET STARTED

                    </span>

                    <h2 class="mt-3">

                        Ready to Manage Your Banking System?

                    </h2>

                    <p class="mt-3">

                        Register new customers, manage records,
                        update information, and securely store
                        customer details using our modern Bank
                        Management System.

                    </p>

                    <div class="mt-4">

                        <a href="register.jsp" class="btn btn-light btn-lg me-3">

                            <i class="fa-solid fa-user-plus"></i>

                            Register Customer

                        </a>

                        <a href="display" class="btn btn-outline-light btn-lg">

                            <i class="fa-solid fa-users"></i>

                            View Customers

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- ================= FOOTER ================= -->

<footer class="footer">

    <div class="container">

        <div class="row">

            <div class="col-lg-4">

                <h4>

                    <i class="fa-solid fa-building-columns"></i>

                    BankEase

                </h4>

                <p class="mt-3">

                    A modern banking management application
                    developed using Java, JSP, Servlets,
                    Hibernate and PostgreSQL.

                </p>

            </div>

            <div class="col-lg-4">

                <h5>Quick Links</h5>

                <ul class="footer-links">

                    <li><a href="home.jsp">Home</a></li>

                    <li><a href="register.jsp">Register</a></li>

                    <li><a href="display">Customers</a></li>

                </ul>

            </div>

            <div class="col-lg-4">

                <h5>Technologies</h5>

                <ul class="footer-links">

                    <li>Java</li>

                    <li>Hibernate</li>

                    <li>JSP</li>

                    <li>Servlet</li>

                    <li>PostgreSQL</li>

                    <li>Bootstrap 5</li>

                </ul>

            </div>

        </div>

        <hr>

        <div class="text-center pt-2">

            © 2026 BankEase Management System | Developed by Divya Wagh

        </div>

    </div>

</footer>

<!-- STOP HERE -->

<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>