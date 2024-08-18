package com.abcres.dao;

import java.sql.Connection;

public class DBConnFac {
    public static Connection getConnection() {
        return DBConn.getInstance().getConnection();
    }
}
