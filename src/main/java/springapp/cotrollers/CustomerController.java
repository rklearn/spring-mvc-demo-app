package springapp.cotrollers;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import springapp.model.Customer;

import javax.validation.Valid;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @RequestMapping("/showForm")
    public String showCustomerForm(Model model) {

        model.addAttribute("customer", new Customer());

        return "customer/customer-form";
    }

    @RequestMapping("/processForm")
    public String customerConfirmation(
            @Valid @ModelAttribute("customer") Customer customer,
            BindingResult bindingResult) {

        System.out.println("Last name - |" + customer.getLastName() + "|");
        if (bindingResult.hasErrors()) {
            return "customer/customer-form";
        }else {
            return "customer/customer-confirmation";
        }
    }
}
