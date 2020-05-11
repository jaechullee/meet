package kr.ac.kopo.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.model.User;
import kr.ac.kopo.service.ProjectService;
import kr.ac.kopo.service.UserService;

@Controller
@RequestMapping("/")
public class RootController {

	@Autowired
	UserService userservice;
	ProjectService projectservice;
	
	@ResponseBody
	@RequestMapping(value="/checkid/{user_id}",method=RequestMethod.POST)
	String checkID(@PathVariable String user_id) {
		User item = userservice.item(user_id);
		
		if(item == null)
			return "OK";
		else
			return "FAIL";
	}
	
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	String signup() {
		return "signup";
	}
	
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	String signup(User item) {
		userservice.add(item);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	String login() {
		return "login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	String login(User user,HttpSession session) {
		if(userservice.login(user)) {
			session.setAttribute("user",user.getUser_id());
			if(user.getUser_id().equals("admin"))
				return "redirect:/admin";
			else
				return "redirect:/project/list";
		}else
			return "redirect:/login";
	}
	@RequestMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping("/admin")
	String admin() {
		return "admin";
	}
	
	@RequestMapping("/user")
	String user() {
		return "project/list";
	}
	
	@RequestMapping("/")
	String index() {
		return "index";
	}
	
	@RequestMapping(value="/profile",method=RequestMethod.GET)
	String profile(Model model,String user_id) {
		User item = userservice.item(user_id);
		
		model.addAttribute("item",item);
		
		return "profile";
	}
	
	@RequestMapping(value="/profile",method=RequestMethod.POST)
	String profile(User item,String user_id) {
		userservice.update(item);
		
		return "redirect:/user";
	}
}
