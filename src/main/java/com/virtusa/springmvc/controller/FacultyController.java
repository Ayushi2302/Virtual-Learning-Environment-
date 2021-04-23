package com.virtusa.springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.virtusa.springmvc.model.Faculty;
import com.virtusa.springmvc.service.FacultyService;

/**
 * @author Ayushi Sharma
 *
 */
@Controller
public class FacultyController {
	
	@Autowired
	private FacultyService facultyService;

	@RequestMapping("/facultyRegister")
	public String registerFaculty() {

		return "facultyRegister";
	}

	@RequestMapping(value = "/facultyRegisterProcess")
	public String getregister(@ModelAttribute Faculty faculty) {
		this.facultyService.createFaculty(faculty);
		return "facultyLogin";

	}
	

	@RequestMapping("/facultyLogin")
	public String facultyLogin() {

		return "facultyLogin";
	}

	@RequestMapping("/success")
	public String success() {

		return "success";
	}

	@RequestMapping(value ="/loginprocess")
	public String getValidate(@ModelAttribute Faculty faculty, HttpServletRequest request, Model model) {

		boolean result = this.facultyService.validate(request.getParameter("email"), request.getParameter("password"));

		model.addAttribute("faculty", faculty);

		if (result) {
			return "success";
		} else {
			request.setAttribute("error", "Invalid credentials!!");
			return "facultyLogin";
		}

	}

}
