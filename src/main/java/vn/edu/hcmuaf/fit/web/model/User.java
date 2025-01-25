package vn.edu.hcmuaf.fit.web.model;

public class User {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String password;
    private int roleID;

    public User() {}
    public User(int id, String name, String password, int roleID) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.roleID = roleID;

    }

    public User(int roleID, String name, String email, String phone, String password) {
        this.roleID = roleID;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
    }

    public User(int id, String name, String password, String email, String phone, int roleID) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.roleID = roleID;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                ", role=" + roleID +
                '}';
    }
}
