package it.supunasp.dao;

import it.supunasp.domain.Customer;

import java.util.List;

public interface CustomerDao {
    long saveCustomer(Customer customer);

    void updateCustomer(Customer customer);

    void deleteCustomer(Long id);

    Customer findCustomerById(Long id);

    List<Customer> findAllCustomers();
}
