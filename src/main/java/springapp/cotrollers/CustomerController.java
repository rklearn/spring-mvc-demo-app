package springapp.cotrollers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import springapp.model.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @RequestMapping("/showForm")
    public String showCustomerForm(Model model) {

        model.addAttribute("customer", new Customer());

        return "customer/customer-form";
    }
}
