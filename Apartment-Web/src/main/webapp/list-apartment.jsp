<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 1/20/2025
  Time: 1:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<html>
<head>
    <title>Danh sách căn hộ</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="/User/images/favicon.ico">
    <link rel="stylesheet" href="/User/css/apartment.css">
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<main>
    <h1 style="text-align: center;">Apartment List</h1>
    <div class="row">
        <c:forEach var="apartment" items="${apartments}">
            <div class="col-md-4">
                <div class="card">
                    <img src="/User/images/${apartment.url}" class="card-img-top" alt="Căn hộ ${apartment.id}">
                    <div class="card-body">
                        <h3>${apartment.name}</h3>
                        <p><strong>ID:</strong> ${apartment.id}</p>
                        <p><strong>Price:</strong> ${apartment.price}</p>
                        <p><strong>Category:</strong> ${apartment.category}</p>
                        <div style="display: flex; gap: 10px; margin-top: 10px;">
                            <!-- Nút Xem Chi Tiết -->
                            <a href="apartment-detail.jsp"
                               style="text-decoration: none; padding: 8px 16px; background-color: #4CAF50; color: white; border-radius: 4px; text-align: center; flex: 1;">
                                Xem chi tiết
                            </a>
                            <!-- Nút Yêu Thích -->
                            <a href="favorites.jsp"
                               style="text-decoration: none; padding: 8px 16px; background-color: #FF5722; color: white; border-radius: 4px; text-align: center; flex: 1;">
                                Yêu thích
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</main>

<script>
    function viewDetails(apartmentId) {
        // Chuyển hướng hoặc xử lý logic để hiển thị chi tiết căn hộ
        alert("Chi tiết của căn hộ ID: " + apartmentId);
        // Ví dụ chuyển hướng:
        // window.location.href = '/apartment/details?id=' + apartmentId;
    }
</script>

<%@ include file="footer.jsp" %>
</body>
</html>
