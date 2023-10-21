package com.pds.atuapizza;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class }) 
public class AtuapizzaApplication {

	public static void main(String[] args) {
		SpringApplication.run(AtuapizzaApplication.class, args);
	}

}
