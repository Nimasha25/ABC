package com.abcres.service;

import com.abcres.dao.SystemConfigDAO;
import com.abcres.model.SystemConfig;

import java.sql.SQLException;

public class SystemConfigService {
    private SystemConfigDAO dao;

    public SystemConfigService() {
        dao = new SystemConfigDAO();
    }

    public SystemConfig getConfig(String key) {
        try {
            return dao.getConfig(key);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updateConfig(SystemConfig config) {
        try {
            dao.updateConfig(config);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addConfig(SystemConfig config) {
        try {
            dao.addConfig(config);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void deleteConfig(String key) {
        try {
            dao.deleteConfig(key);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


