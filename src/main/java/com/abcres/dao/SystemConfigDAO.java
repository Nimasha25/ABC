package com.abcres.dao;

import com.abcres.model.SystemConfig;
import com.abcres.dao.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SystemConfigDAO {

	
    public SystemConfig getConfig(String key) throws SQLException {
        String sql = "SELECT * FROM system_config WHERE config_key = ?";
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, key);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new SystemConfig(rs.getString("config_key"), rs.getString("config_value"));
                }
            }
        }
        return null;
    }

    
    public void updateConfig(SystemConfig config) throws SQLException {
        String sql = "UPDATE system_config SET config_value = ? WHERE config_key = ?";
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, config.getConfigValue());
            stmt.setString(2, config.getConfigKey());
            stmt.executeUpdate();
        }
    }

    public void addConfig(SystemConfig config) throws SQLException {
        String sql = "INSERT INTO system_config (config_key, config_value) VALUES (?, ?)";
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, config.getConfigKey());
            stmt.setString(2, config.getConfigValue());
            stmt.executeUpdate();
        }
    }


    
    public void deleteConfig(String key) throws SQLException {
        String sql = "DELETE FROM system_config WHERE config_key = ?";
        try (Connection conn = DBConn.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, key);
            stmt.executeUpdate();
        }
    }
}
