function toggleFavorite(element) {
    element.classList.toggle('active'); // Chuyển đổi trạng thái màu sắc
    if (element.classList.contains('active')) {
        alert("Đã thêm vào danh sách tin đã lưu!");
    } else {
        alert("Đã xóa khỏi danh sách tin đã lưu!");
    }
}
