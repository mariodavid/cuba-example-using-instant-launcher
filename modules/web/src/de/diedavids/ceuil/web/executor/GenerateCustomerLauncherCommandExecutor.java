package de.diedavids.ceuil.web.executor;

import com.haulmont.bali.util.ParamsMap;
import com.haulmont.cuba.gui.WindowManager.OpenType;
import com.haulmont.cuba.gui.components.Frame;
import com.haulmont.cuba.web.AppUI;
import de.diedavids.ceuil.entity.Customer;
import de.diedavids.ceuil.service.CustomerService;
import de.diedavids.cuba.instantlauncher.entity.BeanLauncherCommand;
import de.diedavids.cuba.instantlauncher.web.launcher.LauncherCommandExecutor;
import javax.inject.Inject;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component("ceuil_GenerateCustomerLauncherCommandExecutor")
public class GenerateCustomerLauncherCommandExecutor implements LauncherCommandExecutor<BeanLauncherCommand> {

  @Inject
  CustomerService customerService;

  @Override
  public void execute(BeanLauncherCommand launcherCommand) {
    execute(launcherCommand, ParamsMap.empty());
  }

  @Override
  public void execute(BeanLauncherCommand launcherCommand, Map<String, Object> inputParams) {

    Customer customer = null;

    if (inputParams.get("lastName") != null) {
      customer = customerService.generateCustomer((String) inputParams.get("lastName"));
    }
    else {
      customer = customerService.generateCustomer();
    }


    updateUI(customer);
  }

  private void updateUI(Customer customer) {
    Frame frame = getFrame();
    frame.showNotification("Customer " + customer.getFirstName() + " " + customer.getName() + " created");
    frame.openWindow("ceuil$Customer.browse", OpenType.NEW_TAB);
  }

  private Frame getFrame() {
    return AppUI.getCurrent().getTopLevelWindow().getFrame();
  }
}
