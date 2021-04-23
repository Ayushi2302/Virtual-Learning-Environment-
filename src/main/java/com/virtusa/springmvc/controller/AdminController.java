package com.virtusa.springmvc.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.virtusa.springmvc.model.Student;
import com.virtusa.springmvc.service.AdminService;

@Controller
public class AdminController {
	private static final String ALOGIN = "adminLogin";
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/adminLogin")
	public String adminLogin()
	{
		return ALOGIN;
	}

	@RequestMapping("/adminWork")
	public String adminWork()
	{
		return "adminWork";
	}	
	@RequestMapping("/Delete")
	public String deleteUpdate()
	{
		return "Delete";
	}	
	@RequestMapping("/Details")
	public String getDetails()
	{
		return "Details";
	}	
	
	@RequestMapping("/adminController")
	public String getLogin(HttpServletRequest request,@ModelAttribute Student student)
	{
		if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("admin"))
		{
			List<Student> students = this.adminService.getStudents(student);
			request.setAttribute("studentRecord", students);
			return "Details";
		}
		else
		{
			request.setAttribute("error", "Invalid Credentails");
			return ALOGIN;
		}
		
	}
	@RequestMapping("/deleting")
	public String adminOperations(HttpServletRequest request)	
	{
		boolean result = this.adminService.deleteStudent(request.getParameter("email"));
		if(result)
			return ALOGIN;
		else
		{
			request.setAttribute("error", "This student dosen't exist");
			return "Delete";
		}
	}
}
