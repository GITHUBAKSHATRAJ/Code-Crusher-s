package com.user.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.user.model.UserLogin;

class UserLoginTest {

    UserLogin userLogin = new UserLogin("ANAND PREM", "akshatraj873@gmail.com", "123");

    @Test
    void getName_test() {
        String expectedName = "ANAND PREM";
        String actualName = userLogin.getName();
        assertEquals(expectedName, actualName);
    }

    @Test
    void getEmail_test() {
        String expectedEmail = "akshatraj873@gmail.com";
        String actualEmail = userLogin.getEmail();
        assertEquals(expectedEmail, actualEmail);
    }

    @Test
    void getPassword_test() {
        String expectedPassword = "123";
        String actualPassword = userLogin.getPassword();
        assertEquals(expectedPassword, actualPassword);
    }
}
