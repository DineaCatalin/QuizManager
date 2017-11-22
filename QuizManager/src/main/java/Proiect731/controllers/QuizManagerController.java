package Proiect731.controllers;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuizManagerController {
	    
	    @RequestMapping("/")
	    public String index(String s) {
	    	s="interfataFilter.html";
	        return s;
	    }
	    
}
