package springapp.model;

import lombok.Data;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
public class Customer {

    private String firstName;

    @NotNull(message = "This field is required")
    @Size(min = 1, message = "This field is required")
    private String lastName;
}
