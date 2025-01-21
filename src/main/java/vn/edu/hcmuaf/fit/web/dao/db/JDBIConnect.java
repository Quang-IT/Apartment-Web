package vn.edu.hcmuaf.fit.web.dao.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;

public class JDBIConnect {
    static String url = "jdbc:mysql://" + DBProperties.host() + ":" + DBProperties.port() + "/" + DBProperties.dbname() + "?" + DBProperties.option();
    static Jdbi jdbi;

    public static Jdbi get(){
        if(jdbi == null) makeConnect();
        return jdbi;
    }
    private static void makeConnect() {
        MysqlDataSource src = new MysqlDataSource();
        src.setUrl(url);
        src.setUser(DBProperties.name());
        src.setPassword(DBProperties.password());

        try {
            src.setUseCompression(true);
            src.setAutoReconnect(true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        jdbi = Jdbi.create(src);
    }

    public static void main(String[] args) {
        Jdbi j =get();
        List<Apartment> products = j.withHandle(handle -> {
            return handle.createQuery("select * from user").mapToBean(Apartment.class).list();
        });
        System.out.println(products);
    }
}
