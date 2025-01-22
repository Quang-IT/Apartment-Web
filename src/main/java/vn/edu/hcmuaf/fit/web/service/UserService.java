package vn.edu.hcmuaf.fit.web.service;

import vn.edu.hcmuaf.fit.web.dao.UserDao;
import vn.edu.hcmuaf.fit.web.model.User;

public class UserService {
    UserDao userDao;
    public UserService() {
        this.userDao = new UserDao(); // Đảm bảo khởi tạo UserDao
    }

    public User checkLogin(String name, String password) {
        UserDao userDao = new UserDao();
        User login = userDao.getUser(name);
        if (login == null) return null;
        if (!login.getPassword().equals(password)) return null;
        return login;

    }
    public User registerUser(User user) {
        return userDao.signupUser(user);
    }

    public static void main(String[] args) {
        UserService userService = new UserService();

        // Thử đăng nhập
        String name = "Phạm Trần Nhựt Quang";
        String  password = "111";


    }




}