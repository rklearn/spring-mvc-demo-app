package springapp.model;

import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class Customer {

    private String firstName;

    @NotNull(message = "This filed is required")
    private String lastName;
}
