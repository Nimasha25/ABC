package com.abcres.service;

import com.abcres.dao.RatingDAO;
import com.abcres.model.Rating;

import java.sql.SQLException;

public class RatingService {

    private RatingDAO ratingDAO;

    public RatingService() {
        this.ratingDAO = new RatingDAO();
    }

    public void saveRating(Rating rating) throws SQLException {
        ratingDAO.saveRating(rating);
    }
}
