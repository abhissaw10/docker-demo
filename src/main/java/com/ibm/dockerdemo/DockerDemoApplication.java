package com.ibm.dockerdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class DockerDemoApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(DockerDemoApplication.class, args);
	}
	
	
	/**
	 * 
	 * @return
	 */
	@GetMapping("/v1/hello")
	public String helloWorld() {
	
		return "hellow world 2";
	}

}
