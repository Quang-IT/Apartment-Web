<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 1/20/2025
  Time: 1:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>footer</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/User/css/footer.css">
</head>
<body>
<footer class="footer">
    <div class="footer-section top">
        <div class="footer-brand">
            <img src="<%= request.getContextPath() %>/User/images/LoGo.jpg" alt="Logo" class="footer-logo">
            <div>
                <p class="company-name">CÔNG TY CỔ PHẦN PROPERTYGURU VIỆT NAM</p>
                <address>
                    S1803, Vinhome grandpark Quận 9, Thủ Đức<br>
                    (84) 3562 5939 - (84) 3562 5940
                </address>
            </div>
            <div class="download-links">
                <img src="<%= request.getContextPath() %>/User/images/google.pnj.png" alt="Google Play" class="app-icon">
                <img src="<%= request.getContextPath() %>/User/images/app-store.jpg" alt="App Store" class="app-icon">
            </div>
        </div>
        <div class="footer-links">
            <div>
                <div>
                    Hotline<br>
                    <b>1900 1881 <br><br></b>
                </div>
                <h4>HƯỚNG DẪN</h4>
                <ul>
                    <li><a href="about.jsp">Về chúng tôi</a></li>
                    <li><a href="#">Báo giá và hỗ trợ</a></li>
                    <li><a href="#">Câu hỏi thường gặp</a></li>
                    <li><a href="#">Góp ý báo lỗi</a></li>
                    <li><a href="#">Sitemap</a></li>
                </ul>
            </div>
            <div>
                <div>
                    Hỗ trợ khách hàng<br>
                    <b>trogiup.mamxanhgroup.com.vn<br><br></b>
                </div>
                <h4>QUY ĐỊNH</h4>
                <ul>
                    <li><a href="#">Quy định đăng tin</a></li>
                    <li><a href="#">Quy chế hoạt động</a></li>
                    <li><a href="#">Điều khoản thỏa thuận</a></li>
                    <li><a href="#">Chính sách bảo mật</a></li>
                    <li><a href="#">Giải quyết khiếu nại</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-subscribe">
            <div>
                Chăm sóc khách hàng<br>
                <b>hotro@mamxanhgroup.com.vn<br><br></b>
            </div>
            <h4>ĐĂNG KÝ NHẬN TIN</h4>
            <form>
                <input type="email" placeholder="Nhập email của bạn">
                <button type="submit">&#9654;</button>
            </form>
            <div class="language-select">
                <span>QUỐC GIA & NGÔN NGỮ</span>
                <select>
                    <option>Việt Nam</option>
                    <option>Singapo</option>
                    <option>Malaysia</option>
                    <option>Thailand</option>
                    <option>Indonesia</option>
                    <option>Australia</option>
                </select>
            </div>
        </div>
    </div>
    <hr>
    <div class="footer-section branches">
        <p><strong>Chi nhánh của Mamxanhgroup.com.vn</strong></p>
        <div class="branch-info">
            <div>
                <p><strong>Chi nhánh TP. Hồ Chí Minh</strong><br>S1803, Vinhome grandpark , Q.9, TP. Thủ Đức<br>Hotline: 1900 1881 - Mobile: 0904 893 279</p>
                <p><strong>Chi nhánh Đà Nẵng</strong><br>Tầng 9, Tòa nhà Vĩnh Trung Plaza, 255 - 257 Hùng Vương, Q.Thanh Khê, TP. Đà Nẵng<br>Hotline: 1900 1881 - Mobile: 0904 907 279</p>
            </div>
            <div>
                <p><strong>Chi nhánh Hà Nội</strong><br>Đường Chu Huy Mân, Phường Phúc Lợi, Quận Long Biên, Hà Nội<br>Hotline: 1900 1881 - Mobile: 0903 456 322</p>
                <p><strong>Chi nhánh Vũng Tàu</strong><br>Tầng 4, Tòa nhà ACB, Hoàng Hoa Thám, P.2, TP. Vũng Tàu<br>Hotline: 1900 1881 - Mobile: 0904 509 293</p>
            </div>
            <div>
                <p><strong>Chi nhánh Bình Dương</strong><br>Phòng 10, tầng 16, Becamex Tower, ĐL Bình Dương, TP. Thủ Dầu Một<br>Hotline: 1900 1881 - Mobile: 0919 255 580</p>
                <p><strong>Chi nhánh Nha Trang</strong><br>Tầng 6, Tòa nhà Điện Lực Khánh Hòa, Lý Thánh Tôn, TP. Nha Trang<br>Hotline: 1900 1881 - Mobile: 0902 169 295</p>
            </div>
        </div>
    </div>
    <hr>
    <div class="footer-section bottom">
        <p>Copyright © 2007 - 2024 mamxanhgroup.com.vn <br>

            Giấy ĐKKD số 0104630479 do Sở KHĐT TP Hà Nội cấp lần đầu ngày 02/06/2010 <br>
            Giấy phép thiết lập trang thông tin điện tử tổng hợp trên mạng số 191/GP-TTĐT do<br>
            Sở TTTT Thành phố Hồ Chí Minh cấp ngày 31/08/2020</p>
        <p>Chịu trách nhiệm nội dung GP ICP: Bà Cao Bich Thùy<br>
            Chịu trách nhiệm sàn GDTMĐT: Ông Đặng Thành <br>
            Quy chế, quy định giao dịch có hiệu lực từ 08/08/2020<br>
            Ghi rõ nguồn "manxanhgroup.com.vn" khi phát hành lại thông tin từ website này.
        </p>
        <img src="<%= request.getContextPath() %>/User/images/registered-icon.jpg" alt="Registered" class="social-icon" style="width: 100px; height: 40px;">
        <div class="social-icons">
            <img src="<%= request.getContextPath() %>/User/images/face.pnj.jpg" alt="Facebook" class="social-icon">
            <img src="<%= request.getContextPath() %>/User/images/youtube-icon.jpg" alt="YouTube" class="social-icon">
            <img src="<%= request.getContextPath() %>/User/images/zalo-icon.jpg" alt="Facebook" class="social-icon">
        </div>
    </div>
</footer>24204

</body>
</html>
