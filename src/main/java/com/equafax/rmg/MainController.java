package com.equafax.rmg;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;





@Controller
public class MainController {
	
	@Autowired
	private candidate_service cand_service;
	@Autowired
	private UserService  userService;
	
	@RequestMapping("/Home")
	public String showHomePage()
	{	
		return "Home";
	}
	
	@RequestMapping("/login")
	public String showAdminLogin(HttpServletRequest request)
	{
		request.setAttribute("mode", "MODE_LOGIN");
		return "Show_Candidate";
	}
	
	
	@RequestMapping ("/login-user")
	public String loginAdminUser(@ModelAttribute User user, HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
			request.setAttribute("mode", "Login_Success");
			return "Show_Candidate";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "Show_Candidate";
			
		}
	}
	
	
	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		
		return "Show_Candidate";
	}
	
	
	
	
	
	
	@GetMapping("/show-users")
	public String showAllCandidate(HttpServletRequest request) {
		request.setAttribute("candidate", cand_service.show_all_candidates());
		request.setAttribute("mode", "ALL_USERS");
		return "Show_Candidate";
	}
	
	
	@PostMapping("/save-user")
	public String registerCandidate(@ModelAttribute Candidate can, BindingResult bindingResult, HttpServletRequest request) {
		cand_service.saveMyCandidate(can);
		request.setAttribute("mode", "MODE_HOME");
		request.setAttribute("candidate", can);
		return "Show_Candidate";
	}
	
	
	@RequestMapping("/modify")
	public String modify(HttpServletRequest request) {
		request.setAttribute("mode", "update");
		request.setAttribute("candidate", cand_service.show_all_candidates());
		return "Show_Candidate";
	}
	
	
	
	@RequestMapping("/delete-user")
	public String deleteCandidate(@RequestParam long id, HttpServletRequest request) {
		cand_service.deleteMyUser(id);
		request.setAttribute("candidate", cand_service.show_all_candidates());
		request.setAttribute("mode", "update");
		return "Show_Candidate";
	}
	
	
	
	@GetMapping("/get_id")
	public String showAllCandidates(@RequestParam long id,HttpServletRequest request) {
		
		Candidate can = cand_service.findbyidno(id);
		
		request.setAttribute("candidate", can);
		request.setAttribute("mode", "Show_candidate_details");
		return "Show_Candidate";
	}
	
	
	@PostMapping("/save-modified-user")
	public String saveModifiedCandidate(@ModelAttribute Candidate can, BindingResult bindingResult, HttpServletRequest request) {
		cand_service.saveMyCandidate(can);
		request.setAttribute("mode", "Login_Success");
		return "Show_Candidate";
	}
		
	
}
