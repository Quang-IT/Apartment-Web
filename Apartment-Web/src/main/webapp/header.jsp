<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 1/20/2025
  Time: 1:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ page import="vn.edu.hcmuaf.fit.apartmentweb.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.apartmentweb.model.ApartmentType" %>
<%@ page import="java.util.List" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Header</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<%= request.getContextPath() %>/User/css/header.css">
</head>
<body>
<header class="header-area header-sticky">
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <!-- Logo -->
      <a class="navbar-brand" href="home.jsp">
        <img src="<%= request.getContextPath() %>/User/images/LoGo.jpg" height="50" width="50" />
        <span class="ms-2 fw-bold">Bán Căn Hộ</span>
      </a>
      <!-- Toggle button for mobile -->
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- Navbar links -->
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <!-- Dropdown: Căn hộ bán -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="banDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Căn hộ bán
            </a>
            <ul class="dropdown-menu" aria-labelledby="banDropdown">
              <li><a class="dropdown-item" href="ApartmentList">Bán căn hộ chung cư</a></li>
              <li><a class="dropdown-item" href="ApartmentList">Bán chung cư mini</a></li>
              <li><a class="dropdown-item" href="apartmentlist?categoryID=1&apartmentTypeID=3">Bán nhà riêng</a></li>
              <li><a class="dropdown-item" href="apartmentlist?categoryID=1&apartmentTypeID=4">Bán biệt thự, liền kề</a></li>
              <li><a class="dropdown-item" href="apartmentlist?categoryID=1&apartmentTypeID=5">Bán nhà mặt phố</a></li>
            </ul>
          </li>
          <!-- Dropdown: Căn hộ thuê -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="thueDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Căn hộ thuê
            </a>
            <ul class="dropdown-menu" aria-labelledby="thueDropdown">
              <li><a class="dropdown-item" href="apartmentlist?categoryID=2&apartmentTypeID=1">Thuê căn hộ chung cư</a></li>
              <li><a class="dropdown-item" href="apartmentlist?categoryID=2&apartmentTypeID=2">Thuê chung cư mini</a></li>
              <li><a class="dropdown-item" href="apartmentlist?categoryID=2&apartmentTypeID=3">Thuê nhà riêng</a></li>
              <li><a class="dropdown-item" href="ApartmentList">Thuê biệt thự</a></li>
              <li><a class="dropdown-item" href="apartmentlist?categoryID=2&apartmentTypeID=5">Thuê nhà mặt phố</a></li>
            </ul>
          </li>
          <!-- Tin tức -->
          <li class="nav-item">
            <a class="nav-link" href="news.jsp">Tin tức</a>
          </li>
          <!-- Mục yêu thích (giỏ hàng) -->
          <li class="nav-item">
            <a class="nav-link" href="favorites.jsp"><i class="fas fa-heart"></i> Tin đã lưu</a>
          </li>

          <%@ page session="true" %>
          <%
            User user = (User) session.getAttribute("name");
            session.setAttribute("name", user);
            if (user == null) {
          %>
          <!-- Đăng nhập & Đăng ký -->
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Đăng nhập</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="signup.jsp">Đăng ký</a>
          </li>
          <% } else { %>
          <!-- User đã đăng nhập -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="fas fa-user-circle" ></i> <%= user.getName() %>
            </a>
            <ul class="dropdown-menu" aria-labelledby="userDropdown">
              <li><a class="dropdown-item" href="profile-user.jsp">Hồ sơ</a></li>
              <li><a class="dropdown-item" href="logout">Đăng xuất</a></li>
            </ul>
          </li>
          <% if (user.getRoleID() == 1) { %>
          <!-- Admin quyền -->
          <li class="nav-item">
            <a class="nav-link" href="Admin/index.html">Admin</a>
          </li>
          <% } %>
          <% } %>
        </ul>
      </div>
    </nav>
  </div>
</header>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
