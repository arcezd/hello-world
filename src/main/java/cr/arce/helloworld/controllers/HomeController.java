package cr.arce.helloworld.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    // redirect to /greeting
	@GetMapping("")
	public String home() {
        return "redirect:/greeting";
    }
}