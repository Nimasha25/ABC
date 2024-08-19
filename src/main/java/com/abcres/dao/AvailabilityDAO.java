package com.abcres.dao;

import com.abcres.model.Availability;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AvailabilityDAO {
    private Connection connection;

    public AvailabilityDAO(Connection connection) {
        this.connection = connection;
    }

    public List<Availability> getAvailabilityForMonth(int month, int year) throws SQLException {
        List<Availability> availabilityList = new ArrayList<>();
        String query = "SELECT day, available, half_reserved FROM availability WHERE month = ? AND year = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, month);
            ps.setInt(2, year);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int day = rs.getInt("day");
                boolean available = rs.getBoolean("available");
                boolean halfReserved = rs.getBoolean("half_reserved");
                availabilityList.add(new Availability(day, available, halfReserved));
            }
        }
        return availabilityList;
    }
}
