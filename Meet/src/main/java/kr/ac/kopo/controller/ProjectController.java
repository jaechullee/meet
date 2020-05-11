package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.kopo.model.Project;
import kr.ac.kopo.service.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {

	final String path = "project/";
	
	@Autowired
	ProjectService service;
	
	@RequestMapping("/list")
	String list(Model model) {
		List<Project> list = service.list();
		
		model.addAttribute("list",list);
		
		return path + "list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	String add(Project item,Model model) {
		
		model.addAttribute("item",item); //이게 맞는지 의심이 됨
		
		return path + "add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	String add(Project item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@RequestMapping("/delete")
	String delete(int project_id) {
		service.delete(project_id);
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.GET)
	String update(int project_id,Model model,HttpSession session) {
		Project item = service.item(project_id);
		
		model.addAttribute("item",item);
		
		return path+"update";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	String update(Project item){
		service.update(item);
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/read",method=RequestMethod.GET)
	String read(int project_id,Model model) {
		Project item = service.item(project_id);
		
		service.read(project_id);
		
		model.addAttribute("item",item);
		
		return path + "read";
	}
	
}
