package com.abcres.dao;

import com.abcres.model.Rating;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RatingDAO {

    public void saveRating(Rating rating) throws SQLException {
        String sql = "INSERT INTO ratings (rating, customer_name, item_id, created_at) VALUES (?, ?, ?, NOW())";

        try (Connection connection = DBConn.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, rating.getRating());
            statement.setString(2, rating.getCustomerName());
            statement.setInt(3, rating.getItemId());

            statement.executeUpdate();
        }
    }
}
