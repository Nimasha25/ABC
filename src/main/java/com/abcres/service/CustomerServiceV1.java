package com.abcres.service;

import java.sql.SQLException;
import java.util.List;
import com.abcres.dao.CustomerDAO;
import com.abcres.model.Customer;

public class CustomerServiceV1 {
    private static CustomerServiceV1 instance;
    private CustomerDAO customerDAO;

    private CustomerServiceV1(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }

    public static synchronized CustomerServiceV1 getInstance(CustomerDAO customerDAO) {
        if (instance == null) {
            instance = new CustomerServiceV1(customerDAO);
        }
        return instance;
    }

    public void addCustomer(Customer customer) {
        customerDAO.addCustomer(customer);
    }

    public List<Customer> getAllCustomers() throws SQLException {
        return customerDAO.getAllCustomers();
    }

    public void updateCustomer(Customer customer) throws SQLException {
        customerDAO.updateCustomer(customer);
    }

    public Customer getCustomerById(int customerId) throws SQLException {
        return customerDAO.getCustomerById(customerId);
    }

    public void deleteCustomer(int customerId) throws SQLException {
        customerDAO.deleteCustomer(customerId);
    }
}
