let currentImageIndex = 0;
const images = [
    '/User/images/h1.jpg',
    '/User/images/h2.jpg',
    '/User/images/h2.jpg',
    '/User/images/h4.jpg',
    '/User/images/h5.jpg'
];


function changeImage(direction) {
    currentImageIndex += direction;
    if (currentImageIndex < 0) {
        currentImageIndex = images.length - 1;
    } else if (currentImageIndex >= images.length) {
        currentImageIndex = 0;
    }
    document.getElementById('displayImage').src = images[currentImageIndex];
}

function setImage(index) {
    currentImageIndex = index;
    document.getElementById('displayImage').src = images[currentImageIndex];
}


function initMap() {
    // Tọa độ vị trí ngôi nhà
    const location = {lat: 10.762622, lng: 106.660172}; // Ví dụ tọa độ ở Hồ Chí Minh

    // Khởi tạo bản đồ
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 15,
        center: location,
    });

    // Thêm marker vào vị trí ngôi nhà
    const marker = new google.maps.Marker({
        position: location,
        map: map,
    });
}

