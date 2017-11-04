package Proiect731.controllers;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class QuizManagerController {
	    
	    @RequestMapping("/")
	    public String index(String s) {
	    	s="Greetings from SpringBoot!";
	        return s;
	    }
	    
}
