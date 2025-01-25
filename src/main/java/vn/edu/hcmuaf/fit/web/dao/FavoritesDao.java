package vn.edu.hcmuaf.fit.web.dao;

import vn.edu.hcmuaf.fit.web.dao.db.JDBIConnect;

public class FavoritesDao {
    public void addToFavorite(int userID, String apartmentID) {
        String sql = "INSERT INTO favorite (userID, apartmentID) VALUES (:userID, :apartmentID)";
        JDBIConnect.get().useHandle(handle ->
                handle.createUpdate(sql)
                        .bind("userID", userID)
                        .bind("apartmentID", apartmentID)
                        .execute()
        );
    }

    public void removeFromFavorite(int userID, String apartmentID) {
        String sql = "DELETE FROM favorite WHERE userID = :userID AND apartmentID = :apartmentID";
        JDBIConnect.get().useHandle(handle ->
                handle.createUpdate(sql)
                        .bind("userID", userID)
                        .bind("apartmentID", apartmentID)
                        .execute()
        );
    }
}
