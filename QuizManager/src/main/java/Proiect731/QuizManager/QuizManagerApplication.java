package Proiect731.QuizManager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@ComponentScan({"Proiect731.controllers","Proiect731.service"})
@SpringBootApplication
@EnableJpaRepositories(basePackages = "Proiect731.repository")
@EntityScan(basePackages = "Proiect731.entity")
public class QuizManagerApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(QuizManagerApplication.class, args);

	}
}
