package com.sso.beans;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Data
public class LoginFormBean {
private static final long serialVersionUID = 1L;
	
	public String varUserName;
	public String varPassword;
	public String varLoginSessionSalt;
	public String varIPAddress;
	public String varQuestionId;
	public String varHintAnswer;
	public String userNameOTP;
	private String varMobDtl;
	private String userMobileOTP;
	private String strSMSLimit;
	private String strSMSLimitHours;
	private String strOTP;
	private String strDBOTP;
	private String sid;
	private String varLanguage;
	private String utName;
	private String ipAddress;
	private String macAddress;
	private String hstnumMobileNo;
	protected String varCaptcha;
	protected String varIndenterName;
	protected String varIndenterLocation;
	protected String varIndenterBudget;
	protected String varSSOTicketGrantingTicket;
	private String varUsrName;
	private Integer loginPage;
	private Integer gnumLoginFlag;
	private Integer gnumUserid;
	private String hospCode;
}
