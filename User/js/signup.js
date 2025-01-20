document.addEventListener("DOMContentLoaded", () => {
    const form = document.querySelector("form");
    const nameInput = document.querySelector("input[name='name']");
    const phoneInput = document.querySelector("input[name='phone']");
    const passwordInput = document.querySelector("input[name='password']");
    const confirmPasswordInput = document.querySelector("input[name='confirm_password']");

    form.addEventListener("submit", (event) => {
        event.preventDefault(); // Ngăn chặn gửi form mặc định

        // Kiểm tra các trường nhập liệu
        const name = nameInput.value.trim();
        const phone = phoneInput.value.trim();
        const password = passwordInput.value.trim();
        const confirmPassword = confirmPasswordInput.value.trim();

        if (!name || !phone || !password || !confirmPassword) {
            alert("Vui lòng điền đầy đủ thông tin.");
            return;
        }

        if (password !== confirmPassword) {
            alert("Mật khẩu không khớp. Vui lòng nhập lại.");
            return;
        }

        // Hiển thị thông báo đăng ký thành công
        alert("Đăng ký thành công!");

        // Reset form
        form.reset();
    });
});
