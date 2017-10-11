package pixelware.spring.mvc.controladores;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class FrontController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index() {

		ModelAndView modelAndView = new ModelAndView("index");

		return modelAndView;
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView reIndex() {

		ModelAndView modelAndView = new ModelAndView("index");

		return modelAndView;
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public ModelAndView signUpBueno() {

		ModelAndView modelAndView = new ModelAndView("signUp");


		return modelAndView;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {

		ModelAndView modelAndView = new ModelAndView("login");


		return modelAndView;
	}


	
	
}
