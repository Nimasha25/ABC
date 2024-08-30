package com.abcres.controller;

import com.abcres.model.SystemConfig;
import com.abcres.service.SystemConfigService;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/settings")
public class SystemConfigController extends HttpServlet {
    private SystemConfigService service;

    @Override
    public void init() {
        service = new SystemConfigService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Assume the key is passed as a query parameter
        String key = request.getParameter("key");
        if (key != null) {
            SystemConfig config = service.getConfig(key);
            request.setAttribute("config", config);
        }
        request.getRequestDispatcher("/WEB-INF/view/config.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("key");
        String value = request.getParameter("value");
        if (key != null && value != null) {
            SystemConfig config = new SystemConfig(key, value);
            try {
                if (service.getConfig(key) == null) {
                    // If the config doesn't exist, add it
                    service.addConfig(config);
                } else {
                    // Otherwise, update the existing config
                    service.updateConfig(config);
                }
                response.sendRedirect("settings?key=" + URLEncoder.encode(key, "UTF-8") + "&success=true");
            } catch (Exception e) {
                response.sendRedirect("settings?key=" + URLEncoder.encode(key, "UTF-8") + "&success=false");
            }
        } else {
            response.sendRedirect("settings?success=false");
        }
    }
}


