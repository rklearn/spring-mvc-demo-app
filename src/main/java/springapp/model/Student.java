package springapp.model;

import lombok.Getter;
import lombok.Setter;

import java.util.LinkedHashMap;

@Getter
@Setter
public class Student {

    private String firstName;
    private String lastName;
    private String country;
    private LinkedHashMap<String, String> countries;
    private String programmingLanguage;
    private LinkedHashMap<String, String> programmingLanguages;
    private String[] operatingSystem;

    public Student() {
        this.countries = new LinkedHashMap<String, String>();
//        "Brazil" will be visible in drop-down list in HTML form, "BR" will be visible when we access value from getter
        countries.put("BR", "Brazil");
        countries.put("PL", "Poland");
        countries.put("DE", "Germany");
        countries.put("FR", "France");
        countries.put("US", "United States");

        this.programmingLanguages = new LinkedHashMap<String, String>();
        programmingLanguages.put("Java", "Java");
        programmingLanguages.put("C#", "C#");
        programmingLanguages.put("C++", "C++");
        programmingLanguages.put("Javascript", "Javascript");
        programmingLanguages.put("Ruby", "Ruby");
    }
}
