package com.virtusa.springmvc.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;
import com.virtusa.springmvc.dao.QuestionDao;
import com.virtusa.springmvc.model.Question;

/**
 * @author Ayushi Sharma
 *
 */
@Controller
public class MainController {

	@Autowired
	private QuestionDao questionDao;

	@RequestMapping("/home")
	public String first() {

		return "home";
	}

	@RequestMapping("/index")
	public String home(Model m) {

		List<Question> questions = questionDao.getQuestions();
		m.addAttribute("questions", questions);
		return "index";
	}

	// Add the Question Title
	@RequestMapping("/add-question")
	public String addQuestion(Model m) {

		m.addAttribute("title", "Add Question");
		return "addQuestionForm";
	}

	//Add the question controller
	@RequestMapping(value = "/handle-question")
	public RedirectView handleQuestion(@Valid @ModelAttribute Question question, HttpServletRequest request) {

		questionDao.createQuestion(question);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/index");
		return redirectView;
	}
     //Delete the question controller
	@RequestMapping("/delete/{questionNo}")
	public RedirectView deleteQuestion(@PathVariable("questionNo") int questionNo, HttpServletRequest request) {

		this.questionDao.deleteQuestion(questionNo);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/index");
		return redirectView;
	}
     
	//Update the question controller
	@RequestMapping("/update/{questionNo}")
	public String updateQuestion(@PathVariable("questionNo") int questionNo, Model model) {

		Question question = this.questionDao.getQuestion(questionNo);
		model.addAttribute("question", question);
		return "update-form";

	}

}
