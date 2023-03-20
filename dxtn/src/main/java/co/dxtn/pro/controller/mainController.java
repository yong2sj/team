package co.dxtn.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class mainController {
	
	@RequestMapping("about")
	public String about() {
		System.out.println("===== about 입장 =====");
		return "/views/intro/about";
	}
	
	@RequestMapping("vision")
	public String vision() {
		System.out.println("===== vision 입장 =====");
		return "/views/intro/vision";
	}
	
	@RequestMapping("business")
	public String business() {
		System.out.println("===== business 입장 =====");
		return "/views/service/business";
	}
	
	@RequestMapping("customer")
	public String customer() {
		System.out.println("===== customer 입장 =====");
		return "/views/service/customer";
	}
	
	@RequestMapping("talent")
	public String talent() {
		System.out.println("===== talent 입장 =====");
		return "/views/employ/talent";
	}
	
	@RequestMapping("map")
	public String map() {
		System.out.println("===== map 입장 =====");
		return "/views/help/map";
	}
}