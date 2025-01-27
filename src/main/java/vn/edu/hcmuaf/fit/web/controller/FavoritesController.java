package vn.edu.hcmuaf.fit.web.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.web.model.User;
import vn.edu.hcmuaf.fit.web.service.FavoritesService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "FavoritesController", value = "/FavoritesController")
public class FavoritesController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String apartmentID = request.getParameter("apartmentID");
        User user = (User) request.getSession().getAttribute("user");
        FavoritesService favoritesService = new FavoritesService();
        if (user == null) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "User not logged in.");
            return;
        }
        // Lấy danh sách yêu thích
        List<String> favorites = favoritesService.getUserFavorites(user.getId());

        // Truyền danh sách này sang JSP
        request.setAttribute("favorites", favorites);

        // Forward đến trang JSP
        request.getRequestDispatcher("favorites.jsp").forward(request, response);

        if ("add".equals(action)) {
            favoritesService.addToFavorite(user.getId(), apartmentID);
        } else if ("remove".equals(action)) {
            favoritesService.removeFromFavorite(user.getId(), apartmentID);
        }

        response.sendRedirect("favorites.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}