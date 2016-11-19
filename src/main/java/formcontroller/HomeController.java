package formcontroller;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value="/test",method = RequestMethod.GET)
	public void ajaxTest(){
		
	}
	
	
	@RequestMapping("/doA")
	public String doA(){
		System.out.println("doA...............로딩중");
		
		return "home";
	}
	
	@RequestMapping("/doB")
	public String doB(Model model){
		System.out.println("doB...............로딩중");
		
		model.addAttribute("result", "Result");
		
		return "home";
	}
}
