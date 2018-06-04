package com.asm.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.asm.home.form.ContactAddressForm;

@Controller
public class HomeController {
//	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());
//	private static Logger logger = Logger.getLogger(HomeController.class);
	/* Return Test Page */
	@GetMapping("/hello")
	public String hello(Model model) {
		model.addAttribute("name", "Welcome");
		return "welcome";
	}
	/* Return Home Page */
	@GetMapping("/asm")
	public String homepage(Model model) {
		model.addAttribute("contactAddressForm", new ContactAddressForm());
		return "asm";
	}
	/* Return Privacy Policy Page */
	@GetMapping("/privacy")
	public String privacyPage(Model model) {
		return "privacy";
	}
	/* Return Privacy Policy Page */
	@GetMapping("/addOrder")
	public String addOrder(Model model) {
		return "privacy";
	}
}