package com.skilldistillery.venue.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.skilldistillery.venue")
@EntityScan("com.skilldistillery.venue")

public class VenueBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(VenueBootApplication.class, args);
	}

}
