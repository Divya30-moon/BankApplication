<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List"%>
<%@ page import="com.jsp.bankEase.entity.Bank"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>BankEase | Customers</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
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
<a class="nav-link" href="register.jsp">
<i class="fa-solid fa-user-plus"></i>
Add Customer
</a>
</li>

<li class="nav-item">
<a class="nav-link active" href="display">
<i class="fa-solid fa-users"></i>
Customers
</a>
</li>

</ul>

</div>

</div>

</nav>

<!-- ================= HEADER ================= -->

<section class="display-header">

<div class="container">

<h1>

<i class="fa-solid fa-users"></i>

Customer Records

</h1>

<p>
Manage, update and delete customer information.
</p>

</div>

</section>

<!-- ================= TABLE ================= -->

<section class="display-section">

<div class="container">

<div class="table-card">

<div class="table-responsive">

<table class="table table-hover align-middle">

<thead>

<tr>

<th>ID</th>

<th>Name</th>

<th>IFSC</th>

<th>Location</th>

<th>Update</th>

<th>Delete</th>

</tr>

</thead>

<tbody>

<c:forEach var="i" items="${allBank}">

<tr>

<td>${i.getId()}</td>

<td>${i.getName()}</td>

<td>${i.getIfsc()}</td>

<td>${i.getLoc()}</td>

<td>

<a href="edit?id=${i.getId()}" class="btn btn-warning btn-sm">

<i class="fa-solid fa-pen"></i>

Update

</a>

</td>

<td>

<a href="delete?id=${i.getId()}"
   class="btn btn-danger btn-sm"
   onclick="return confirm('Are you sure you want to delete this customer account from BankEase?\n\nThis action cannot be undone.');">

    <i class="fa-solid fa-trash"></i>

    Delete

</a>

</td>

</tr>

</c:forEach>

</tbody>

</table>

</div>

<div class="text-center mt-4">

<a href="register.jsp" class="btn btn-primary btn-lg">

<i class="fa-solid fa-user-plus"></i>

Add New Customer

</a>

</div>

</div>

</div>

</section>

<!-- ================= UPDATE SUCCESS MODAL ================= -->

<div class="modal fade" id="updateSuccessModal" tabindex="-1">

<div class="modal-dialog modal-dialog-centered">

<div class="modal-content">

<div class="modal-header bg-success text-white">

<h5 class="modal-title">

<i class="fa-solid fa-circle-check me-2"></i>

Customer Updated

</h5>

</div>

<div class="modal-body text-center">

<i class="fa-solid fa-circle-check text-success"
style="font-size:70px;"></i>

<h3 class="mt-3">

Customer Updated Successfully

</h3>

<p class="text-muted">

Customer details have been updated successfully.

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

<!-- ================= DELETE SUCCESS MODAL ================= -->

<div class="modal fade" id="deleteSuccessModal" tabindex="-1">

    <div class="modal-dialog modal-dialog-centered">

        <div class="modal-content">

            <div class="modal-header bg-danger text-white">

                <h5 class="modal-title">

                    <i class="fa-solid fa-trash me-2"></i>

                    Customer Deleted

                </h5>

            </div>

            <div class="modal-body text-center">

                <i class="fa-solid fa-circle-check text-danger"
                   style="font-size:70px;"></i>

                <h3 class="mt-3">

                    Customer Deleted Successfully

                </h3>

                <p class="text-muted">

                    The customer account has been removed from BankEase.

                </p>

            </div>

            <div class="modal-footer">

                <button
                    type="button"
                    class="btn btn-danger"
                    data-bs-dismiss="modal">

                    OK

                </button>

            </div>

        </div>

    </div>

</div>

<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Show Success Popup -->

<c:if test="${updateSuccess}">
<script>
window.onload=function(){

    var myModal=new bootstrap.Modal(
        document.getElementById("updateSuccessModal")
    );

    myModal.show();
}
</script>
</c:if>

<c:if test="${param.deleted == 'true'}">

<script>

window.onload = function(){

    var myModal = new bootstrap.Modal(
        document.getElementById("deleteSuccessModal")
    );

    myModal.show();

}

</script>

</c:if>

</body>

</html>