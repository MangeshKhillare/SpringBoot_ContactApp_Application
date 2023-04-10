package com.jdc_06.fourelementSoftech;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.jdc_06.fourelementSoftech.service.ContactServiceImpl;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(Application.class, args);

		ContactServiceImpl serviceImpl = context.getBean(ContactServiceImpl.class);

		System.out.println("<===...Project Started ...====>");
	}

}
