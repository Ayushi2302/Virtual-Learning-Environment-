package com.virtusa.springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.virtusa.springmvc.model.Course;
import com.virtusa.springmvc.model.Student;
import com.virtusa.springmvc.service.CourseService;
import com.virtusa.springmvc.service.StudentService;

@Controller
public class CourseController {
	@Autowired
	private CourseService courseService;
	@Autowired
	private StudentService studentService;
	@RequestMapping("/Lectures")
	public String lecture()
	{
		return "Lectures";
	}
	@RequestMapping("/courseDetails")
	public String course()
	{
		return "courseDetails";
	}
	@RequestMapping("/getCourse")
	public String getCourse()
	{
		return "getCourse";
	}
	@RequestMapping("course")
	public String getCourse(HttpServletRequest request, @ModelAttribute Course course)
	{
	
		Student student = this.studentService.validateStudent(course.getEmail());
		if(student!=null && student.getPassword().equals(course.getPassword()))
		{
			this.courseService.createCourse(course);
			return "Home-student";
		}
		else
		{
			request.setAttribute("error", "You haven't registered, Please register first");
			return "getCourse";
		}
	}
}
