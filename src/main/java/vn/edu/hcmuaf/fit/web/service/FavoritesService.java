package vn.edu.hcmuaf.fit.web.service;

import vn.edu.hcmuaf.fit.web.dao.FavoritesDao;
import vn.edu.hcmuaf.fit.web.model.Apartment;
import vn.edu.hcmuaf.fit.web.model.Favorites;
import vn.edu.hcmuaf.fit.web.model.User;

public class FavoritesService {
    private FavoritesDao favoritesDao;
    private User user;

    public Favorites addFavorites(Favorites favorites) {
        favoritesDao.addToFavorite(user.getId(), "Nam");
        return favorites;
    }
}