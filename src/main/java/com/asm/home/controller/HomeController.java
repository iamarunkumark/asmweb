package com.asm.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/hello")
	public String hello(Model model) {
		model.addAttribute("name", "John Doe");
		return "welcome";
	}
	@GetMapping("/asm")
	public String homepage(Model model) {

		model.addAttribute("name", "John Doe");

		return "asm";
	}
}