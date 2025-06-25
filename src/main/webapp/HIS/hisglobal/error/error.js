
function logoutAllErrorPage(event){
	try{
		
		parent.submitForm("logoutLogin");
		
	}catch(e){
		
		var url='/SSO/hissso/logoutLogin.sso';
	 	$('form').attr("action",url);
	 	$('form').submit();
	}
}