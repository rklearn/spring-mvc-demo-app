package springapp.cotrollers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {

    @RequestMapping("/showForm")
    public String showForm() {
        return "helloworld/helloworld-form";
    }

    @RequestMapping("/processForm")
    public String processForm() {
        return "helloworld/helloworld";
    }

    @RequestMapping("/processFormInUppercase")
    public String processFormUppercase(@RequestParam("studentName") String theName, Model model) {
        theName = theName.toUpperCase();
        String newMessage = "Yo! " + theName;
        model.addAttribute("message", newMessage);

        return "helloworld/helloworld";
    }
}
