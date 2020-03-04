package de.diedavids.ceuil.service;

import com.devskiller.jfairy.Fairy;
import com.devskiller.jfairy.producer.person.Person;
import com.haulmont.cuba.core.global.DataManager;
import de.diedavids.ceuil.entity.Customer;
import de.diedavids.ceuil.entity.CustomerCategory;
import java.util.List;
import java.util.Random;
import javax.inject.Inject;
import org.springframework.stereotype.Service;

@Service(CustomerService.NAME)
public class CustomerServiceBean implements CustomerService {

  @Inject
  protected DataManager dataManager;

  @Override
  public Customer generateCustomer() {

    Customer customer = dataManager.create(Customer.class);

    Person person = Fairy.create().person();

    customer.setName(person.getLastName());
    customer.setFirstName(person.getFirstName());
    customer.setCategory(randomCustomerCategory());

    dataManager.commit(customer);
    return customer;
  }

  @Override
  public Customer generateCustomer(String lastName) {

    Customer customer = dataManager.create(Customer.class);

    Person person = Fairy.create().person();

    customer.setName(lastName);
    customer.setFirstName(person.getFirstName());
    customer.setCategory(randomCustomerCategory());

    dataManager.commit(customer);
    return customer;
  }

  private CustomerCategory randomCustomerCategory() {

    Random random = new Random();

    List<CustomerCategory> categories = dataManager
        .load(CustomerCategory.class)
        .query("select p from ceuil$CustomerCategory p")
        .list();

    return categories.get(random.nextInt(categories.size() - 1));
  }
}