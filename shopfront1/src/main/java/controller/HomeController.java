package controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.omg.CORBA.PRIVATE_MEMBER;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import model.Product;
import model.ProductDAO;
import model.RegisterDAO;
import model.register;
import utill.FileUtil;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
     @Autowired(required=true)
	private RegisterDAO registerDAO;
     private ProductDAO productDAO;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexPage() {
		return "index";
	}

	@RequestMapping(value = "/home")
	public String homePage() {
		return "home";
	}

	@RequestMapping(value = "/admin")
	public String testPage() {
		return "admin";
	}

	@RequestMapping(value = "/regester1", method = RequestMethod.GET)
	public String regesterPage() {
		return "regester1";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String uploadPage() {
		return "admin";
	}
	
	@RequestMapping(value = "/main")
	public String mainPage() {
		return "main";
	}
	
	@RequestMapping("/login_page")
	public String getloginPage () {
		return "login";
	}
	
	@RequestMapping(value = "/suces", method = RequestMethod.POST)
	public String regesterSuccess(@ModelAttribute("reg")register reg) {
		registerDAO.add(reg);
		return "sucess";
	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView showCart() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("tittle", "userCart");
		mv.addObject("user show cart", "true");
		mv.addObject("cartLines", null);
		return mv;

	}

	@RequestMapping(value = "/sucess", method = RequestMethod.POST)
	public String loginSuccess(@Valid @ModelAttribute("product") Product p, BindingResult results, Model model,
			HttpServletRequest request) {
		
		logger.info(p.toString());

		if (!p.getFile().getOriginalFilename().equals("")) {
			FileUtil.uploadFile(request, p.getFile(), p.getCode());

		} else {
		}
		productDAO.add(p);
		return "sucess";
		

	}

	/**@RequestMapping(value = "/suces", method = RequestMethod.POST)
	public String productSuccess(@ModelAttribute("product1") test t) {
		ModelAndView mv = new ModelAndView("test");
		mv.addObject(t);
		return "sucess";
	}**/
}
