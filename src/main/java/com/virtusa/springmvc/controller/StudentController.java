package com.virtusa.springmvc.controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import com.virtusa.springmvc.model.Student;
import com.virtusa.springmvc.service.StudentService;
@Controller
public class StudentController {
	
	private static final String ERROR = "error";
	private static final String STULOGIN = "studentLogin";
	@Autowired
	private StudentService studentService;
	@RequestMapping("/Home")
	public String home()
	{
		return "Home-student";
	}
	@RequestMapping("/Logout")
	public String logout()
	{
		return  STULOGIN;
	}
	@RequestMapping("/Dashboard")
	public String dashboard()
	{
		return "Dashboard";
	}
	@RequestMapping("/studentRegistration")
	public String registration()
	{
		return "studentRegistration";
	}
	
	@RequestMapping("/studentLogin")
	public String login()
	{
		return  STULOGIN;
	}
	
	@RequestMapping("/Reset")
	public String reset()
	{
		return "Reset";
	}
	
	@RequestMapping(path ="/processing")
	public String getRegister(@ModelAttribute Student student, HttpServletRequest request)
	{
		boolean checkEmail = this.studentService.checkEmail(student.getEmail());
		if(checkEmail)
		{
			this.studentService.createStudent(student);
			return  STULOGIN;
		}
		else
		{
			request.setAttribute(ERROR, "Email is already used, Try with another email ");
			return "studentRegistration";
		}
	}

	@RequestMapping(path ="/loginProcessing")
	public String getValidate(HttpServletRequest request)
	{
		Student student= this.studentService.validateStudent(request.getParameter("email"));
		if( student !=null && student.getPassword().equals(request.getParameter("password")))
			return "getCourse";
		else
		{
			request.setAttribute(ERROR, "Invalid Credentails");
			return STULOGIN;
		}
	}
	@RequestMapping(path = "/resetProcessing")
	public String getReset(HttpServletRequest request)
	{
		
		
		boolean student = studentService.updateStudent(request.getParameter("email"),request.getParameter("password"),request.getParameter("newPassword"));	
		
		if(student)
			return STULOGIN;
		else
		{
			
			request.setAttribute(ERROR, "Entered wrong password, Try again!");
			return "Reset";
		}
		
	}
}
