package de.diedavids.ceuil.web.customer;

import com.haulmont.cuba.core.global.BeanLocator;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.gui.WindowManager.OpenType;
import com.haulmont.cuba.gui.components.AbstractEditor;
import com.haulmont.cuba.gui.components.Frame;
import com.haulmont.cuba.gui.components.Window.Lookup.Handler;
import de.diedavids.ceuil.entity.Customer;
import de.diedavids.ceuil.entity.CustomerCategory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import javax.inject.Inject;

public class CustomerEdit extends AbstractEditor<Customer> {

  @Inject
  BeanLocator beanLocator;


  @Override
  public void init(Map<String, Object> params) {
    super.init(params);


    Frame frame = getFrame();

    frame.openLookup(CustomerCategory.class, new Handler() {
      @Override
      public void handleLookup(Collection items) {
        CustomerCategory category = new ArrayList<CustomerCategory>(items).get(0);
        DataManager dataManager = beanLocator.get(DataManager.NAME);

        Customer customer = dataManager.create(Customer.class);

        customer.setCategory(category);

        openEditor(customer, OpenType.DIALOG)
            .addCloseWithCommitListener(new CloseWithCommitListener() {
              @Override
              public void windowClosedWithCommitAction() {
                frame.showNotification("Customer " + customer.getName() + "created successfully", NotificationType.TRAY);
              }
            });
      }
    }, OpenType.DIALOG);
  }
}