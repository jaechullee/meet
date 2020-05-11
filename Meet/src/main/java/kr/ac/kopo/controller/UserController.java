package kr.ac.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.kopo.model.User;
import kr.ac.kopo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	final String path = "user/";
	
	@Autowired
	UserService service;
	
	@RequestMapping("/list")
	String list(Model model) {
		List<User> list = service.list();
		
		model.addAttribute("list",list);
		
		return path + "list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	String add() {
		return path+"add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	String add(User item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@RequestMapping("/delete")
	String delete(String user_id) {
		service.delete(user_id);
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.GET)
	String update(String user_id,Model model) {
		User item = service.item(user_id);
		
		model.addAttribute("item",item);
		
		return path + "update";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	String update(User item) {
		service.update(item);
		
		return "redirect:list";
	}
}
