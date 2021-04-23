package com.virtusa.springmvc.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.virtusa.springmvc.dao.ContactDAO;
import com.virtusa.springmvc.model.Contact;
import com.virtusa.springmvc.model.User;
import com.virtusa.springmvc.service.UserService;



@Controller
@SessionAttributes(value = { "su" })

public class UserController {
	private static final String PLOGIN = "ParentLogin";
	
	@Autowired
	private UserService userService;
	@Autowired
	private ContactDAO cdao;

	private Logger logger = Logger.getLogger(UserController.class);

	@RequestMapping(value = "/pregister", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getRegister(User user, Map<String, Object> model) {

		ModelAndView m = new ModelAndView("ParentRegister");
		List<String> g = new ArrayList<String>();
		g.add("male");
		g.add("female");
		List<String> q1 = new ArrayList<String>();
		q1.add("What was your childhood nickname?");
		q1.add("What is the name of your favorite childhood friend?");
		q1.add("What is the middle name of your oldest child?");
		q1.add("In what city or town did your mother and father meet?");
		q1.add("What is your favorite movie?");
		q1.add("What is your pet’s name?");
		q1.add("In what town was your first job?");
		q1.add("What was your favorite food as a child?");
		List<String> q2 = new ArrayList<String>();
		q2.add("What was your favorite food as a child?");
		q2.add("What was your childhood nickname?");
		q2.add("What is the name of your favorite childhood friend?");
		q2.add("What is the middle name of your oldest child?");
		q2.add("In what city or town did your mother and father meet?");
		q2.add("What is your favorite movie?");
		q2.add("What is your pet’s name?");
		q2.add("In what town was your first job?");
		model.put("gender", g);
		model.put("question1", q1);
		model.put("question2", q2);
		return m;
	}

	@RequestMapping("/performRegistration")
	public ModelAndView performRegistration(@Valid @ModelAttribute("user") User use, BindingResult br,
			RedirectAttributes rdr) {
		if (br.hasErrors()) {
			return new ModelAndView("ParentRegister");

		} else {
			boolean res = userService.verifyRegister(use);

			if (res == true) {
				userService.getUserInsert(use);
				ModelAndView m = new ModelAndView("register-success");
				logger.info("registration done successfully");
				return m;
			} else {
				ModelAndView m = new ModelAndView("ParentRegister");

				logger.info("Registration not done");
				rdr.addAttribute("msg1", "Email Already Exists or Password Doesn't Match");
				return m;
			}
		}
	}

	@RequestMapping("/plogin")
	public String getLogin(@ModelAttribute("getUser") User use) {
		return PLOGIN;
	}

	@PostMapping(value = ("loginProcess"))
	public ModelAndView loginProcess(HttpServletRequest request,@Valid @ModelAttribute("getUser") User usr, BindingResult br) {
		if (br.hasErrors()) {
			logger.info(br.getAllErrors());
			return new ModelAndView(PLOGIN);
		}
		else {
			request.getSession().setAttribute("email", usr.getEmail());
			boolean res = userService.verifyLogin(usr);
			if (res == true) {
				ModelAndView m = new ModelAndView("welcome");
				logger.info("Login done successfully");
				m.addObject("su", usr);
				return m;
			} else {
				ModelAndView m = new ModelAndView(PLOGIN);
				logger.info("Credentials are Incorrect");
				return m;
			}
		}
	}

	@RequestMapping("/edit-profile/{emailId}")
	public ModelAndView editProfile(@PathVariable("emailId") String email, @ModelAttribute("getUser") User user) {
		User usr = userService.getUserDetails(email);
		ModelAndView m = new ModelAndView("edit-profile");
		m.addObject("edit", usr);
		return m;
	}

	@PostMapping(value = "/edit-profile/updateProfile")
	public ModelAndView updateProfile(HttpServletRequest request, User ur) {
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String name = request.getParameter("name");
		User user = userService.getUserDetails(email);
		user.setGender(gender);
		user.setDob(dob);
		user.setName(name);
		userService.getUserUpdate(user);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping("/userLogout")
	public ModelAndView userLogout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		ModelAndView m = new ModelAndView("redirect:/");
		logger.info("Logged Out Successfully");
		return m;
	}

	@RequestMapping(value = "/forgot-password" , method ={ RequestMethod.GET, RequestMethod.POST })
	public ModelAndView forgotPassword() {
		return new ModelAndView("forgot-password");
	}

	@RequestMapping(value = "/accountRecovery")
	public ModelAndView accountRecovery(User user){
		String email = user.getEmail();
		User user1 = userService.getUserDetails(email);
		ModelAndView m = new ModelAndView("account-recovery");
		m.addObject("recover", user1);
		return m;
	}
	
	@RequestMapping(value = "/verifyAnswer")
	public ModelAndView verifyAnswer(@ModelAttribute User user) {
		boolean res = userService.verifyAnswer(user);

		if (res == true) {
			ModelAndView m = new ModelAndView("new-password");
			m.addObject("recover", user);
			return m;
		} else {
			ModelAndView m = new ModelAndView("account-recovery");
			m.addObject("msg", "Your answers are incorrect");
			return m;
		}
	}

	@RequestMapping(value = "/newPassword")
	public ModelAndView newPassword(HttpServletRequest request, User user) {
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		String confirm = request.getParameter("conf");
		User user2 = userService.getUserDetails(email);
		user2.setPwd(password);
		user2.setConf(confirm);
		userService.getUserUpdate(user);
		ModelAndView m = new ModelAndView("redirect:/plogin");
		m.addObject("pwd", user2.getPwd());
		return m;

	}

	@RequestMapping(value = "/contact", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getRegister(@ModelAttribute("contact") Contact contact, ModelAndView model) {
		return new ModelAndView("contact");
	}

	@RequestMapping("/StoreContact")
	public ModelAndView storeContact(@Valid @ModelAttribute("contact") Contact contact, BindingResult br) {
		if (br.hasErrors()) {
			return new ModelAndView("contact");
		} else {
			boolean res = cdao.insert(contact);

			if (res == true) {
				ModelAndView m = new ModelAndView("redirect:/");
				m.addObject("msg", "Submitted Successfully");
				return m;
			} else {
				ModelAndView m = new ModelAndView("redirect:/");
				m.addObject("msg", "Submisssion Failed");
				return m;
			}
		}
	}
}