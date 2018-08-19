package springapp.cotrollers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import springapp.model.Student;

@Controller
@RequestMapping("/student")
public class StudentController {

    @RequestMapping("/showForm")
    public String showStudentForm(Model model) {
        Student student = new Student();
        model.addAttribute("student", student);

        return "student/student-form";
    }

    @RequestMapping("/processForm")
    public String processStudentForm(@ModelAttribute("student") Student student) {

        return "student/student-confirmation";
    }
}
