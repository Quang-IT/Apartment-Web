    const properties = [
    {title: "Căn hộ Vinhome Green", price: "14 triệu/tháng", area: "65 m²", location: "Quận 7, TP. HCM", img: "../images/hst5.jpg"},
    {title: "Căn hộ Sunrise Tower", price: "18 triệu/tháng", area: "75 m²", location: "Quận 7, TP. HCM", img: "../images/bt3.jpg"},
    {title: "Căn hộ Sky Garden", price: "25 triệu/tháng", area: "85 m²", location: "Quận 7, TP. HCM", img: "../images/vh4.jpg"},
    {title: "Căn hộ Lavita", price: "15 triệu/tháng", area: "70 m²", location: "Quận Thủ Đức, TP. HCM", img: "../images/vh1.jpg"},
    {title: "Căn hộ Vinhomes", price: "30 triệu/tháng", area: "120 m²", location: "Quận Bình Thạnh, TP. HCM", img: "../images/hst2.jpg"},
    {title: "Căn hộ The Vista", price: "25 triệu/tháng", area: "100 m²", location: "Quận 2, TP. HCM", img: "../images/hst5.jpg"},
    {title: "Căn hộ Masteri", price: "22 triệu/tháng", area: "90 m²", location: "Quận 2, TP. HCM", img: "../images/vh3.jpg"},
    {title: "Căn hộ Cityland", price: "10 triệu/tháng", area: "60 m²", location: "Quận Gò Vấp, TP. HCM", img: "../images/ele2.jpg"},
    {title: "Căn hộ Pearl Plaza", price: "28 triệu/tháng", area: "110 m²", location: "Quận Bình Thạnh, TP. HCM", img: "../images/bt3.jpg"}
    ];

    // Biến để theo dõi số lượng sản phẩm đã hiển thị
    let displayedCount = 0;

    // Số lượng sản phẩm tải mỗi lần
    const pageSize = 3;

    // Container hiển thị sản phẩm
    const container = document.getElementById('saved-posts');

    // Nút "Load More"
    const loadMoreBtn = document.getElementById('load-more');

    // Hàm hiển thị sản phẩm
    function displayProperties(start, count) {
        for (let i = start; i < start + count && i < properties.length; i++) {
            const property = properties[i];

            // Tạo card sản phẩm
            const card = document.createElement('div');
            card.className = 'col-md-4 mb-4';
            card.innerHTML = `
            <div class="card shadow-sm h-100">
                <img src="${property.img }" class="card-img-top" alt="${property.title}">
                <div class="card-body">
                    <h5 class="card-title">${property.title}</h5>
                    <p class="card-text"><strong>Giá:</strong> ${property.price}</p>
                    <p class="card-text"><strong>Diện tích:</strong> ${property.area}</p>
                    <p class="card-text"><strong>Vị trí:</strong> ${property.location}</p>
                    <button class="btn btn-danger btn-sm btn-delete"><i class="fas fa-trash-alt"></i> Xóa</button>
                </div>
            </div>
        `;
            container.appendChild(card);
        }
        displayedCount += count;

        // Kiểm tra nếu đã tải hết sản phẩm
        if (displayedCount >= properties.length) {
            loadMoreBtn.disabled = true;
            loadMoreBtn.innerText = "Đã tải hết";
            loadMoreBtn.style.backgroundColor = "#ccc";
            loadMoreBtn.style.cursor = "not-allowed";
        }
    }

    // Sự kiện khi nhấn "Load More"
    loadMoreBtn.addEventListener('click', function () {
        displayProperties(displayedCount, pageSize);
    });

    // Hiển thị lần đầu
    displayProperties(0, pageSize);

    // Xử lý sự kiện xóa sản phẩm
    container.addEventListener('click', function (event) {
        if (event.target.closest('.btn-delete')) {
            const productCard = event.target.closest('.col-md-4');
            if (productCard) {
                productCard.remove();
                console.log('Sản phẩm đã được xóa.');
            }
        }
    });
