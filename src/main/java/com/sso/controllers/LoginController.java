package com.sso.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sso.beans.LoginFormBean;
import com.sso.service.LoginValidationService;

@Controller
public class LoginController {
    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
    
    
    @Autowired
    LoginValidationService loginService;

    public LoginController() {
        logger.info("LoginController initialized");
    }

    @GetMapping("/login")
    public String processLogin(
          ) {
        return "index";
    }
    
 // @PostMapping("/login")
    public String pprocessLogin(
          @RequestParam(value = "username", required = false) String username,
          @RequestParam(value = "password", required = false) String password,
          @RequestParam(value = "captcha", required = false) String captchaInput,
          @RequestParam(value = "csrf_token") String csrfToken

            ) {
     System.out.println(username);
     System.out.println(password);
     System.out.println(captchaInput);
     System.out.println(csrfToken);

     try {
         //loginService.login();  // handle the exception
     } catch (Exception e) {
//         e.printStackTrace();
//         model.addAttribute("error", "Login failed: " + e.getMessage());
//         return "error";  // or some error view
     }

     return "desk";
    }
    
    
	  @PostMapping("/login") 
	  public String pprocessLogin1(@ModelAttribute LoginFormBean loginFormBean, HttpSession session){  
		  System.out.println("LoginformBean is" +loginFormBean);
		  try {
				String sId = loginFormBean.getSid();
				String sessionSId = (String) session.getAttribute("UNIQUE_ID");
				String captcha = (String) session.getAttribute("captcha");
				System.out.println(sessionSId);
				System.out.println(captcha);
//				LoginUTL.setTheme(this, objRequest, objResponse);
				if (sessionSId == null || sId == null) {
					return "main";
				}
				if (sessionSId != null && !sessionSId.equals(sId)) {
					session.setAttribute("UNIQUE_ID", null);
					return "error";
				}
				if ((loginFormBean.varUserName != null && !loginFormBean.varUserName.isEmpty()
						&& loginFormBean.varPassword != null && !loginFormBean.varPassword.isEmpty())) {
					if (!loginFormBean.getVarCaptcha().isEmpty()
							&& loginFormBean.getVarCaptcha().equals(captcha)) {
						 loginService.login(loginFormBean,session);
						 
					}
					else {
						// If Not, then forward to login Window for Re-Login and
						// Error Message
					}
					
				}
				else {
					// If Not, then forward to login Window for Re-Login and
					// Error Message
					//If username and password is empty
				}
			  
		       
		     } catch (Exception e) {
		         e.printStackTrace();
		      //   model.addAttribute("error", "Login failed: " + e.getMessage());
		         return "error"; 
		     }
		   return "desk";  
		   }
	 
	 
	 
    @GetMapping("/desk")
    public String showDesk() {
        //logger.info("Accessing /desk");
        return "desk"; // Maps to /WEB-INF/views/desk.jsp
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        logger.info("Processing logout");
        HttpSession session = request.getSession();
        String theme = (String) session.getAttribute("themeSSO");
        session.invalidate();
        HttpSession newSession = request.getSession(true);
        newSession.setAttribute("themeSSO", theme != null ? theme : "default");
        return "redirect:/";
    }
}