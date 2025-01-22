package vn.edu.hcmuaf.fit.web.dao;

import vn.edu.hcmuaf.fit.web.dao.db.JDBIConnect;
import vn.edu.hcmuaf.fit.web.model.User;

public class UserDao {
    public User checkLogin(String name, String password) {
        String sql = "SELECT * FROM user WHERE name = ? AND password = ?";
        return JDBIConnect.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, name).bind(1, password)
                .mapToBean(User.class).findFirst().orElse(null));
    }

    public User getUser(String name) {
        return JDBIConnect.get().withHandle(handle ->
                handle.createQuery("SELECT * FROM user WHERE name = :name")
                        .bind("name", name)
                        .mapToBean(User.class)
                        .findFirst()
                        .orElse(null)
        );
    }
}
