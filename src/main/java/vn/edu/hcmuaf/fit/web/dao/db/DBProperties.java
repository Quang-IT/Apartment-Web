package vn.edu.hcmuaf.fit.web.dao.db;

import java.io.IOException;
import java.util.Properties;

public class DBProperties {
    private static Properties props = new Properties();

    static {
        try {
            props.load(DBProperties.class.getClassLoader().getResourceAsStream("db.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public static String host() {
        return props.get("db.host").toString();
    }

    public static int port() {
        int port = Integer.parseInt(props.get("db.port").toString());
        return port;
    }

    public static String dbname() {
        return props.get("db.dbname").toString();
    }

    public static String name() {
        return props.get("db.name").toString();
    }

    public static String password() {
        return props.get("db.password").toString();
    }

    public static String option() {
        return props.get("db.option").toString();
    }

    public static void main(String[] args) {
        System.out.println(DBProperties.host());
    }
}

