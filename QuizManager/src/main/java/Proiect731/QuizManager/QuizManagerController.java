package Proiect731.QuizManager;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuizManagerController {
	    
	    @RequestMapping("/")
	    public String index() {
	        return "interfataFilter.html";
	    }
	    
}
