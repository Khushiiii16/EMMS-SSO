package com.sso.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.sso.beans.LoginFormBean;

@Service
public class LoginValidationService  {
	
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
public String login(LoginFormBean loginBean, HttpSession session) throws Exception {
	
	//	HttpSession session = objRequest.getSession(true);
		//objRequest.setAttribute("LANGUAGE", this.getVarLanguage());
	//	String captcha = (String) session.getAttribute("captcha");
	this.hibernateTemplate.saveOrUpdate(loginBean);
		String sId = loginBean.getSid();
		String sessionSId = (String) session.getAttribute("UNIQUE_ID");
		System.out.println(sessionSId);
//		LoginUTL.setTheme(this, objRequest, objResponse);
//		if (sessionSId == null || sId == null) {
//			return "main";
//		}
//		if (sessionSId != null && !sessionSId.equals(sId)) {
//			session.setAttribute("UNIQUE_ID", null);
//			return "error";
//		}

	/*	if ((this.varUserName != null && !this.varUserName.isEmpty()
				&& this.varPassword != null && !this.varPassword.isEmpty())) {
			// If User Successfully Logged In, then Forward to HIS User Desk
			if ("POST".equalsIgnoreCase(objRequest.getMethod())) {
				if (!this.getVarCaptcha().isEmpty()
						&& this.getVarCaptcha().equals(captcha)) {
					if (LoginUTL.loginUser(this, objRequest, objResponse)) {
						return PAGE_HIS_LOGIN_DESK;

					} else {
						session.setAttribute("UNIQUE_ID", null);
						return PAGE_MAIN;// PAGE_INITIAL;

					}

				} else {
					// If Not, then forward to login Window for Re-Login and
					// Error Message
					objRequest.setAttribute("message",
							"Captcha Validation failed!!");
					LoginUTL.setInititals(this, objRequest, objResponse);
					session.setAttribute("UNIQUE_ID", null);
					return PAGE_MAIN;// PAGE_INITIAL;
				}
			} else {

				objRequest.setAttribute("message", "Not a Valid Request !");
				LoginUTL.setInititals(this, objRequest, objResponse);
				session.setAttribute("UNIQUE_ID", null);
				return PAGE_MAIN;// PAGE_INITIAL;

			}
		} else {
			// If Not, then forward to login Window for Re-Login and Error
			// Message
			LoginUTL.setInititals(this, objRequest, objResponse);
			session.setAttribute("UNIQUE_ID", null);
			return PAGE_MAIN;// PAGE_INITIAL;
		}
	}*/
return "";
}
}
