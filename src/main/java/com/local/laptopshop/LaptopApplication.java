package com.local.laptopshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// @SpringBootApplication
@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class LaptopApplication {

	public static void main(String[] args) {
		SpringApplication.run(LaptopApplication.class, args);
	}

}
