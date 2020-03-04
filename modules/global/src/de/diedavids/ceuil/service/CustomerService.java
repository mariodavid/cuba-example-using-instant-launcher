package de.diedavids.ceuil.service;


import de.diedavids.ceuil.entity.Customer;

public interface CustomerService {
    String NAME = "ceuil_CustomerService";

    Customer generateCustomer();
    Customer generateCustomer(String lastName);
}