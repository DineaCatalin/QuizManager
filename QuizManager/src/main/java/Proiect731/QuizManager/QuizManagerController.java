package Proiect731.QuizManager;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class QuizManagerController {
	    
	    @RequestMapping("/")
	    public String index() {
	        return "Greetings from Spring Boot!";
	    }
	    
}
