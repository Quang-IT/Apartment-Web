<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Trang Yêu Thích</title>
</head>
<body>
<%@include file="header.jsp"%>
<h1>Danh sách căn hộ yêu thích</h1>

<c:choose>
    <c:when test="${not empty favorites}">
        <table border="1">
            <thead>
            <tr>
                <th>STT</th>
                <th>Mã Căn Hộ</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="apartment" items="${favorites}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>${apartment}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:when>
    <c:otherwise>
        <p>Không có căn hộ nào trong danh sách yêu thích.</p>
    </c:otherwise>
</c:choose>
<%@include file="footer.jsp"%>
</body>
</html>
