package vn.edu.hcmuaf.fit.web.service;

import vn.edu.hcmuaf.fit.web.dao.FavoritesDao;
import vn.edu.hcmuaf.fit.web.model.Apartment;
import vn.edu.hcmuaf.fit.web.model.Favorites;
import vn.edu.hcmuaf.fit.web.model.User;

import java.util.List;

public class FavoritesService {
    private FavoritesDao favoritesDao;
    private User user;

    public void addToFavorite(int userId, String apartmentId) {
        favoritesDao.addToFavorite(userId, apartmentId);
    }

    public void removeFromFavorite(int userId, String apartmentId) {
        favoritesDao.removeFromFavorite(userId, apartmentId);
    }

    public List<String> getUserFavorites(int userId) {
        return favoritesDao.getFavoritesByUserId(userId);
    }
}