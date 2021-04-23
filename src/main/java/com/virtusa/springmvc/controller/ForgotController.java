package com.virtusa.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.virtusa.springmvc.service.FacultyService;

/**
 * @author Ayushi Sharma
 *
 */
@Controller
public class ForgotController {

	@Autowired
	private FacultyService facultyService;

	@RequestMapping("/forgotPassword")
	public String openForm() {
		return "forgotPassword";
	}

	// Update the password
	@RequestMapping("/forgot")
	public String getUpdate(HttpServletRequest request) {

		boolean update = this.facultyService.update(request.getParameter("email"), request.getParameter("password"),
				request.getParameter("newPassword"));

		if (update) {

			return "facultyLogin";
		} else {
			request.setAttribute("error", "Password did't match!!");
			return "forgotPassword";
		}
	}

}
