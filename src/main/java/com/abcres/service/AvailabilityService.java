package com.abcres.service;

import com.abcres.dao.AvailabilityDAO;
import com.abcres.model.Availability;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class AvailabilityService {
    private AvailabilityDAO availabilityDAO;

    public AvailabilityService(Connection connection) {
        this.availabilityDAO = new AvailabilityDAO(connection);
    }

    public List<Availability> getAvailabilityForMonth(int month, int year) throws SQLException {
        return availabilityDAO.getAvailabilityForMonth(month, year);
    }
}
