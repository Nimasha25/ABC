
package com.abcres.service;

import java.sql.SQLException;
import java.util.List;

import com.abcres.dao.CustomerDAO;
import com.abcres.model.Customer;

public class CustomerServiceV1 {
	private static CustomerServiceV1 instance;
	private CustomerDAO customerDAO;
	
	private CustomerServiceV1()
	{
		this.customerDAO = customerDAO;
	}
	
	public static CustomerServiceV1 getInstance()
	{
		if(instance == null)
		{
			synchronized (CustomerServiceV1.class) {
				if(instance == null)
				{
					instance = new CustomerServiceV1();
				}
				
			}
		}
		return instance;
	}
	
	public void addCustomer(Customer customer)
	{
		customerDAO.addCustomer(customer);
	}
	
	public List<Customer> getAllCustomers() throws SQLException
	{
		return customerDAO.getAllCustomers();
	}

}
