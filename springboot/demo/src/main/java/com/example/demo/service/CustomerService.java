package com.example.demo.service;

import com.example.demo.entity.CustomerEntity;

import java.util.List;

public interface CustomerService {
    void saveCustomer(CustomerEntity customer);
    List<CustomerEntity> getAllCustomer();

}
