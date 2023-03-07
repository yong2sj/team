package co.dxtn.pro.employ.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import co.dxtn.pro.employ.model.EmployDTO;
import co.dxtn.pro.employ.service.EmployService;

@Controller
public class EmployController {
	
	@Autowired
	EmployService employService;
	
	@GetMapping("employ")
	public String employPage() {
		System.out.println("===== employ Page =====");
		return "views/employ/employPage";
	}
	
	@GetMapping("employWritePage")
	public String employWritePage() {
		System.out.println("===== employ write Page =====");
		return "views/employ/employWritePage";
	}
	
	@PostMapping("employWrite")
	public String employWrite(EmployDTO dto) {
		System.out.println("===== employ write =====");
		return "views/employ/employPage";
	}
	
	
	
}
