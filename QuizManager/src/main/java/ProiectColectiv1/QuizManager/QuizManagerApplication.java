package ProiectColectiv1.QuizManager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import hello.ApplicationContext;
import hello.Bean;
import hello.CommandLineRunner;

@SpringBootApplication
public class QuizManagerApplication {

	public static void main(String[] args) {
		SpringApplication.run(QuizManagerApplication.class, args);
	}
	
	@Bean
    public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
        return args -> {

            System.out.println("Let's inspect the beans provided by Spring Boot:");

            String[] beanNames = ctx.getBeanDefinitionNames();
            Arrays.sort(beanNames);
            for (String beanName : beanNames) {
                System.out.println(beanName);
            }

        };
    }
}
