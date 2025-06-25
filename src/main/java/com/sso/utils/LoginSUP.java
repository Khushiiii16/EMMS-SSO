package com.sso.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class LoginSUP  {
	
		private static final long serialVersionUID = 1L;

		protected HttpServletRequest objRequest;
		protected HttpServletResponse objResponse;

		protected String varUserName;
		protected String varPassword;
		protected String varCaptcha;
		protected String varIndenterName;
		protected String varIndenterLocation;
		protected String varIndenterBudget;
		protected String varLanguage;
		protected String varSSOTicketGrantingTicket;
		protected String theme;

		public LoginSUP()
		{
			varUserName = "";
			varPassword = "";
			varCaptcha = "";
			varIndenterName = "";
			varIndenterLocation = "";
			varIndenterBudget = "";
			varSSOTicketGrantingTicket = "";
			varLanguage = "";
			theme="";
		}

		public void clear()
		{
			varUserName = "";
			varPassword = "";
			varCaptcha = "";
			varIndenterName = "";
			varIndenterLocation = "";
			varIndenterBudget = "";
			varSSOTicketGrantingTicket = "";
			varLanguage = "";
		}

		public HttpServletRequest getObjRequest()
		{
			return objRequest;
		}

		public void setObjRequest(HttpServletRequest objRequest)
		{
			this.objRequest = objRequest;
		}

		public HttpServletResponse getObjResponse()
		{
			return objResponse;
		}

		public void setObjResponse(HttpServletResponse objResponse)
		{
			this.objResponse = objResponse;
		}

		public String getVarUserName()
		{
			return varUserName;
		}

		public void setVarUserName(String varUserName)
		{
			this.varUserName = varUserName;
		}

		public String getVarPassword()
		{
			return varPassword;
		}

		public void setVarPassword(String varPassword)
		{
			this.varPassword = varPassword;
		}
		
		public String getVarIndenterName() {
			return varIndenterName;
		}

		public void setVarIndenterName(String varIndenterName) {
			this.varIndenterName = varIndenterName;
		}

		public String getVarIndenterLocation() {
			return varIndenterLocation;
		}

		public void setVarIndenterLocation(String varIndenterLocation) {
			this.varIndenterLocation = varIndenterLocation;
		}

		public String getVarIndenterBudget() {
			return varIndenterBudget;
		}

		public void setVarIndenterBudget(String varIndenterBudget) {
			this.varIndenterBudget = varIndenterBudget;
		}


		/*
		 * @Override public void setServletRequest(HttpServletRequest request) {
		 * this.objRequest = request; }
		 * 
		 * @Override public void setServletResponse(HttpServletResponse response) {
		 * this.objResponse = response; }
		 */
		public String getVarSSOTicketGrantingTicket()
		{
			return varSSOTicketGrantingTicket;
		}

		public void setVarSSOTicketGrantingTicket(String varSSOTicketGrantingTicket)
		{
			this.varSSOTicketGrantingTicket = varSSOTicketGrantingTicket;
		}

		public String getVarCaptcha() {
			return varCaptcha;
		}

		public void setVarCaptcha(String varCaptcha) {
			this.varCaptcha = varCaptcha;
		}

		public String getVarLanguage() {
			return varLanguage;
		}

		public void setVarLanguage(String varLanguage) {
			this.varLanguage = varLanguage;
		}

		public String getTheme() {
			return theme;
		}

		public void setTheme(String theme) {
			this.theme = theme;
		}

}
