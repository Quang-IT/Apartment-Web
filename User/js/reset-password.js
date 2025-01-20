document.getElementById('recoveryForm').addEventListener('submit', function (event) {
    event.preventDefault(); // Ngăn không cho form reload trang

    // Lấy giá trị từ ô input (nếu cần kiểm tra)
    const inputEmailPhone = document.getElementById('inputEmailPhone').value;

    if (inputEmailPhone.trim() === "") {
        alert("Vui lòng nhập email hoặc số điện thoại.");
    } else {
        // Hiển thị thông báo thành công
        alert("Gửi thành công");
    }
});