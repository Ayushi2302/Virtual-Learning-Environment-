package com.virtusa.springmvc.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.virtusa.springmvc.dao.Student2DAo;
import com.virtusa.springmvc.dao.StudentDao;
import com.virtusa.springmvc.model.Attendance;
import com.virtusa.springmvc.model.Marks;
import com.virtusa.springmvc.model.Student;


@Controller
@SessionAttributes(value = { "su" })
public class StudentController2 {

	@Autowired
	private Student2DAo sdao;
	
	@Autowired
	private StudentDao studao;
	

	@RequestMapping(value = "/student-form", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getStudentDetails(@ModelAttribute("stu") Student student, Map<String, Object> model) {
		return new ModelAndView("student-form");
	}

	@RequestMapping("/verifyDetails")
	public ModelAndView verifyDetails(HttpServletRequest request, @Valid @ModelAttribute("stu") Student student) {
		String email = request.getParameter("email");
		Student student1 = studao.getStudent(email);
		ModelAndView m = new ModelAndView("student-details");
		m.addObject("stud", student1);
		return m;

	}

	@RequestMapping(value = "/student-attendance")
	public ModelAndView getStudentAttendance() {
		ModelAndView m = new ModelAndView("student-attendance");
		List<Attendance> attendances = sdao.getStudentAttendace();
		m.addObject("att", attendances);
		return m;
	}

	@RequestMapping(value = "/student-marks")
	public ModelAndView getStudentMarks() {
		ModelAndView m = new ModelAndView("student_marks");
		List<Marks> marks = sdao.getStudentMarks();
		m.addObject("mar", marks);
		return m;
	}

}
