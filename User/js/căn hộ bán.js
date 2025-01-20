document.addEventListener("DOMContentLoaded", function () {

    const tabs = document.querySelectorAll(".properties-filter a");
    const items = document.querySelectorAll(".properties-items");

    tabs.forEach((tab) => {
        tab.addEventListener("click", (event) => {
            event.preventDefault();

            // Xóa class 'is_active' khỏi tất cả các tab
            tabs.forEach((t) => t.classList.remove("is_active"));

            // Thêm class 'is_active' vào tab được bấm
            tab.classList.add("is_active");

            // Lấy giá trị của data-filter
            const filter = tab.getAttribute("data-filter");

            // Hiển thị hoặc ẩn các items dựa trên data-filter
            items.forEach((item) => {
                if (filter === "*" || item.classList.contains(filter.substring(1))) {
                    item.style.display = "block";
                } else {
                    item.style.display = "none";
                }
            });
        });
    });
});


