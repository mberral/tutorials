package com.baeldung.services;

import com.baeldung.model.User;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    public User fetchUserByFirstName(String firstName) {
        return new User(1, firstName, "Everyperson");
    }

    public User exampleUser() {
        return new User(1, "Example", "Everyperson");
    }
}