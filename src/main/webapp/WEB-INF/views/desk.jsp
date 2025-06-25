<!DOCTYPE html>





















<html>
<head>


<!-- Chrome, Firefox OS and Opera -->
<meta name="theme-color" content="#003065">
<!-- Windows Phone -->
<meta name="msapplication-navbutton-color" content="#003065">
<!-- iOS Safari -->
<meta name="apple-mobile-web-app-status-bar-style" content="#003065">

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>eUpkaran | KSMSCL</title>
    <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="apple-touch-icon" sizes="57x57" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/favicon-16x16.png">
<link rel="manifest" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/manifest.json">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/plugins/fontawesome-free/css/all.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/plugins/icheck-bootstrap/icheck-bootstrap.min.css">  
  
    
  <!-- Theme style -->
  <link rel="stylesheet" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/css/adminlte.min.css?version=1.0">
  
  <link rel="stylesheet" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/plugins/animate/animate.min.css">
  
  
  
    <link rel="stylesheet" id="css-theme" href="/SSOKa/HIS/preset1.css">
  
   
  
  
<!-- jQuery -->
<script src="/SSOKa/HIS/hisglobal/eUpkaranTemplate/plugins/jquery/jquery.min.js"></script>


<!-- Bootstrap 4 -->
<script src="/SSOKa/HIS/hisglobal/eUpkaranTemplate/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/js/adminlte.js"></script>

<script src="/SSOKa/HIS/hisglobal/eUpkaranTemplate/plugins/animate/wow.min.js"></script>
<script src="/SSOKa/HIS/hisglobal/eUpkaranTemplate/plugins/Text-Scrolling-Plugin-for-jQuery-Marquee/jquery.marquee.js"></script>
<script src="/SSOKa/HIS/global/js/commonFunctions.js?version=1.0"></script>
<script src="/SSOKa/HIS/global/js/md5.js"></script>
<script src="/SSOKa/HIS/global/js/security.js?version=1.0"></script>
 		    
    
<script>



function disableBackButton()
{
	
		
window.history.forward();
}
setTimeout("disableBackButton()", 0);

   
   function noBack()
{
	  
window.history.forward(1);
}


  var menuColor=[
	  /* {background:"#e8f0fd",color:"#3664ae"},//blue
	  {background:"#fce8e7",color:"#ab1915"},//red
	  {background:"#e7f4ea",color:"#2b7747"},//green
	  {background:"#fdf7df",color:"#d38b29"},//yellow */
	  {iconColor:"#178066", background:"#fafafa",color:"#2c003e"},//purple
	  /* {background:"#fdefe2",color:"#b7681b"},//peech
	  {background:"#e4f7fb",color:"#147c86"},//sea green
	  {background:"#f2f3f5",color:"#4b4c4e"},//grey
	  {background:"#fde7f3",color:"#ab156e"},//pink
	  {background:"#ffe7ce",color:"#a85400"}//brown */
	  

	  			];
  
  $(document).ready(function () {

	  disableBackButton();
	 	
	  /* 1. Proloder */
      $('#preloader-active').delay(450).fadeOut('slow');
	  
      $('body').delay(450).css({
        'overflow': 'visible'
      });
     
 	
	$( "button" )
		.click(function( event ) {
		event.preventDefault();
	});
	$( "input[type=button], button" )
		.click(function( event ) {
		event.preventDefault();
	});

	notificationOnLogin();
	$('#acrHideHeading').click(function(){
		$('#acrHideHeading').addClass('hideData');
		$('#acrShowHeading').removeClass('hideData');
		$('#navbar1').addClass('hideData');
		$('#navbar2userdtlli').removeClass('d-block');
		$('#navbar2userdtlli').removeClass('d-lg-none');
		$('.ifcontainer').css({"height":"91vh"})
		
	});
	
	$('#acrShowHeading').click(ShowHeading);
	
	$('.navbar-toggler').click(function(){
		if($('.collapse').hasClass('show'))
			$('.collapse').removeClass('show')
		else	
			$('.collapse').addClass('show')
	});
	$('.megaMenuAcr').click(callMenuURL);
	$('#acrRefresh').click(function(){
		var selectedMenuUrl=$('#selectedMenuUrl').val();
		if(selectedMenuUrl!=""){
			loadInIframe(selectedMenuUrl);
		}
		else{
			alert("No Menu selected!");
		}
	});
	$('.changePassword').click(function(){
		loadInIframe("/SSO/hislogin/initChangePasswordLgnFtr.sso");
	});
	$('.changeUserDtl').click(function(){
		loadInIframe("/SSO/hislogin/initChangeUserDetailsLgnFtr.sso");
	});
	$('.logout').click(callLogOut);
	//firstLoginCheck();
	if($('.megaMenuAcr').length>1){
		var defaultMenuURL="/SSO/hislogin/welcomeUserDesk.sso";
		if($('#defaultMenuURL').val().trim()!=""){
			defaultMenuURL=$('#defaultMenuURL').val();
		}

		if(defaultMenuURL.indexOf("?")==-1)
			defaultMenuURL+= "?varSSOTicketGrantingTicket=" + document.getElementsByName("varSSOTicketGrantingTicket")[0].value;
		 else
			 defaultMenuURL+= "&varSSOTicketGrantingTicket=" + document.getElementsByName("varSSOTicketGrantingTicket")[0].value;
		loadInIframe(defaultMenuURL);
	}
	else{
		$('.megaMenuAcr').each(callMenuURL);	
	}

	new WOW().init();
 
	$('#menuOptions .nav-link').click(function(){
		$('#menuOptions .nav-link').removeClass('activeTab');
		$(this).addClass('activeTab');		
	}); 
	$('.mega-menu').each(function(){
		var id= this.id;
		var i=0
		$('#'+id+' .megaMenuAcr').each(function(){
			var objcolor= menuColor[i];
			//$(this).css({background:objcolor["background"],color:objcolor["color"],border:"1px solid "+objcolor["color"]});
			$(this).css({background:objcolor["background"],color:objcolor["color"]});
			if(objcolor["iconColor"]!=undefined)
				$(this).find("i").css({color:objcolor["iconColor"]})
			i++;
			if(i==menuColor.length)
				i=0;
		});
	});

	$('.dropdown').each(function(){
		var id= this.id;
		var i=0
		$('.acrmenu').each(function(){
			var objcolor= menuColor[i];
			//$(this).css({background:objcolor["background"],color:objcolor["color"],border:"1px solid "+objcolor["color"]});
			$(this).css({background:objcolor["background"],color:objcolor["color"]});
			if(objcolor["iconColor"]!=undefined)
				$(this).find("i").css({color:objcolor["iconColor"]})
			i++;
			if(i==menuColor.length)
				i=0;
		});
	});

	
	
	//alert($('.short-menu').length);
	$('.short-menu').each(function(){
		var id= this.id;
		var i=0
		//alert(id);
		//alert($('#'+id +" .megaMenuAcr").length)
		$('#'+id +" .megaMenuAcr").each(function(){
			var objcolor= menuColor[i];
			//$(this).css({background:objcolor["background"],color:objcolor["color"],border:"1px solid "+objcolor["color"]});
			$(this).css({background:objcolor["background"],color:objcolor["color"]});
			i++;
			if(i==menuColor.length)
				i=0;
		});
	});	
		
	
	$('body').on('keyup keypress', function(e) {
        var keyCode = e.keyCode || e.which;
        if (keyCode === 13) { 
          e.preventDefault();
          return false;
        }
      });
	

	$(".searchMenu").keypress(function(e) {
	    if(e.which == 13) {	    	 
	    	searchMenu(this);
	    }
	});
	$(".searchMenu").keyup(function(e) {
	   	searchMenu(this);
	   
	});

	$('.nav-link2').click(function(){
		$(".searchMenu").val("");
		$('.fa-hover').show();
	});
	return false;
  });
  function searchMenu(objSearch){
	var indx= objSearch.id.split("_")[1];
	var searchtext=objSearch.value.trim();
	if(searchtext!=""){
		searchtext=searchtext.toLowerCase();
		//alert(searchtext)
		$('#navbarItems'+indx +' .menuleafName').each(function(){
			var html=$(this).html().trim().toLowerCase();
			if(html.indexOf(searchtext)<0){
				$(this).closest('.fa-hover').hide();
			}
			else{
				$(this).closest('.fa-hover').show();
			}
		}); 
	}
	else{
		$('#navbarItems'+indx +' .fa-hover').show();
	}
  }
  

  function deleteCookies() {
  	var allcookies = document.cookie.split(";");
  	for (var i = 0; i < allcookies.length; i++) {
  		var cookie = allcookies[i];
  		var eqPos = cookie.indexOf("=");
  		var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
  		document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";

  	}
  }
  function callLogOut() {
	  $('#preloader-active').show();
	  deleteCookies();
	  submitForm("logoutLogin");

	}
  $(window).resize(function() {
	  ShowHeading();
  });
 function ShowHeading(){
	 $('#acrShowHeading').addClass('hideData');
		$('#acrHideHeading').removeClass('hideData');
		$('#navbar1').removeClass('hideData');
		$('#navbar2userdtlli').addClass('d-block');
		$('#navbar2userdtlli').addClass('d-lg-none');
		$('.ifcontainer').css({"height":"81vh"})
 }
 
 function checkURL(vURL)
 {
 	var flg = true;
 	/* $.ajax({
         url:vURL,
         async: false,
         success: function () {
         	flg = true;
         },
         error: function (jqXHR, status, er) {
             //only set the error on 404
             if (jqXHR.status === 404) { 
             	flg = false;
             }
             else if (jqXHR.status === 500) { 
             	flg = false;
             }
         }
     }); */
    //alert(vURL + "======= flg="+flg);
 	return flg;
 } 
 function callMenuURL(){
	 var url=decryptBase64($(this).attr("data-url"));
	 
	 if(url.indexOf("?")==-1)
		 url+= "?varSSOTicketGrantingTicket=" + document.getElementsByName("varSSOTicketGrantingTicket")[0].value;
	 else
		url+= "&varSSOTicketGrantingTicket=" + document.getElementsByName("varSSOTicketGrantingTicket")[0].value;
	 $('#menuOptions .nav-link').removeClass('activeTab');
	 loadInIframe(url)
	 
 }
 
 function loadInIframe(uri){
	 hideMenu();
	 if(checkURL(uri))
	 {
	 	console.log("uri is"+uri);
		 $('#frmMainMenu').attr("src",uri);
			$('#selectedMenuUrl').val(uri);
			$('#preloader-active').show();
			
			 $('#frmMainMenu').on('load', function(){
				// alert("loaded");
				$('#preloader-active').delay(450).fadeOut('slow');
		        $(this).contents().on("click", function(){
		        	parent.hideMenu();            
		        });
			}); 	 
	 }
	 else{
		 $('#frmMainMenu').attr("src","/SSO/hissso/jsp/error/sso_error_login_appnotavail.jsp");
	 }
	}
 function hideMenu(){
	// alert($('.collapse').hasClass("show"));
	   if($('.collapse').hasClass("show")){
		  $('.collapse').removeClass('show');  
	   }
	   
  }
  function firstLoginCheck(){
		if($('#varIsFirstTimeLogin').val()=='1'){
			var winHeight = $(window).height() *0.60;
			$('.modal-dialog').width('65%');
			$('#iframeForModal').height(winHeight);
			document.getElementById("iframeForModal").src="/SSO/hislogin/initFirstLoginLgnFtr.sso";
			$('#headingIframe').html("");
			$('#divForModal').modal('show');	
	    }
	} 


 function notificationOnLogin(){

		var username=$('#varUsrName').val();
		//alert(username);
		
	var urlNew="/SSO/hislogin/checkNotificationLgnFtr.sso";

	
		var data="varUserName="+username;
		urlNew = createFHashAjaxQuery(urlNew+"?"+data); 
		
		
		$.ajax({url:urlNew,tpye:'POST',data:data,async: false,success:function(result)
		{
			
			if(result!=null){

				//alert(result)
				$('.main').removeClass('hideData');  
				$('#notification').html(result);

				$('.marquee').marquee({
					  allowCss3Support: true,
					  speed : 40,
					  gap: 1500,
					  delayBeforeStart: 0,
					  direction: 'left',
					  duplicated: true,
					  pauseOnHover: true
					  
					  
					});
				

			}

			else{
				$('.main').addClass('hideData');  
				}
			
	
		} 
	});
		
	}
 
 var varSecretKey= '[B@2e854026';
/*  if(window.name.toString()=='' || window.name.toString()!=varSecretKey)
 {
 	alert("You are trying to open New Tab/Window, Please go to original window.");
 	//return false;
 	//submitForm("errorLogin");
 	// getBrowser().removeCurrentTab();
 	if(typeof window.stop == 'undefined')
 		document.execCommand("Stop");
 	else
 		window.stop();

 	close();
 }
 else
 {
    // alert("Winow name "+(window.name.toString()));
 } */
  
</script>
 <style type="text/css">
 	.modal{
 		top:40px !important;
 	}
 	
 	
</style>
 </head>
 <body onunload="noBack();">
  <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <span>LOADING..</span>
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Ends -->
    
    <!-- Modal Dialog  Start -->
    <div class="modal fade" id="divForModal" tabindex="-1"  aria-hidden="true">
	
        <div class="modal-dialog modal-lg">
            <div class="modal-content">  
            	<div class="modal-header">
                    <button data-dismiss="modal" class="close" type="button">×</button>                    
                </div>
                <div class="modal-body">            
                	<iframe   id='iframeForModal' src=""  height="200px" style='border:0'  width="100%"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Dialog  Ends -->
   <!-- Home Starts  -->
 <div id='home' style="width: 100%">
  <!-- header Starts  -->   
 	<div class="navbar navbar-expand-lg navbar-light navbar-white" id='navbar1'  >
       <div class="container-fluid">
      	
        <a href="/SSO/hissso/Login.sso" class="navbar-brand">
        	<span style='float:left;width:53px;'>
            	<img src="/SSOKa/HIS/hisglobal/images/karnataka.jpg" alt="" class='img-fluid'>
            </span>
        	<div class="d-flex flex-row mt-1">
				  <div class="brandlogo eupkaranLogo">eUpkaran</div>
				  <div>
					<div class="d-flex flex-column">
						<div class=" d-block d-lg-none brandlogo"> | KSMSCL</div>
						<div class=" d-none d-lg-block d-xl-block brandlogo"> | Karnataka State Medical Supplies Corporation Ltd.</div>
						<div class=" d-none d-lg-block d-xl-block brandlogo3">(A Government of Karnataka Undertaking)</div>  
					</div>  
				  </div>
			</div>
        		
		</a>
		 <ul class="navbar-nav d-none d-lg-block d-xl-block">
          	 <li class='nav-item dropdown getbtn'>
	  				<a class='nav-link'  title='Click To view user details'  id='dropdownMenuButton1' role='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
	  					 <i class='fa fa-user' aria-hidden='true' ></i>
	  				</a>
	  				<div class='dropdown-menu dropdown-menu-right userdetail' aria-labelledby='dropdownMenuButton1' >
	  				<div class='userNameInDropDown' ><span>Hi &nbsp;emms admin</span></div>
					<a class='acrmenu dropdown-item changePassword' ><i class='fas fa-key'>&nbsp;&nbsp;</i><span>Change Password</span></a>
	  				<a class='acrmenu dropdown-item changeUserDtl' ><i class='fas fa-user-edit '>&nbsp;&nbsp;</i><span>Change User Details</span></a>
	  				<a class='dropdown-item logout' data-formid='UserDesk'><i class='fas fa-user-edit' aria-hidden='true'>&nbsp;&nbsp;</i>Sign out</a></div>
	  		  </li>
          </ul>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"><i class='fas fa-bars'></i></span>
        </button> 
        
        
		</div>
		
	</div>
	
	<div class="navbar navbar-expand-lg navbar-light navbar-white top-bg"  >
	    
        <div class="collapse navbar-collapse navbar-collapse2"   >
          <ul class="navbar-nav" id='menuOptions'>
          	     
	          	   					<li class="nav-item mega-dropdown " id="navItem1">
	          	   					<a class="nav-link nav-link2" id="navlink1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
	          	   					Procurement&nbsp;<span class="fas fa-caret-down caretMenu"></span></a>
	          	   					<div class="dropdown-menu mega-menu" aria-labelledby="navlink1" id="navbarItems1">
	          	   						<div class="row">
	          	   							<div class='col-lg-3 m-2'>
	          	   								<input type='text' class='searchMenu form-control form-control-sm' id='searchMenu_1'  placeholder="Search Menu" value="">
	          	   							</div>
	          	   						</div>
	          	   							
	          	   							<div class="row">
	          	   							
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRmluYW5jaWFsQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1idWRnZXRBbGxvY2F0aW9uJmlzV2l6emFyZFZpZXc9MQ==' title='Budget Allocation For Purchase' >
													<i class='fas fa-shopping-cart' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Budget Allocation For Purchase</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWNkZHYy' title='Centralised Demand Desk V2' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Centralised Demand Desk V2</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWxvaUFwcHJvdmFs' title='Mode Of Procurement' >
													<i class='fas fa-file-export' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Mode Of Procurement</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXRlbmRlckRlc2s=' title='Tender Desk' >
													<i class='fas fa-file' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Tender Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXRlbmRlckxpc3RQYWdl' title='Tender Listing' >
													<i class='fas fa-list' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Tender Listing</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWxvQWRlc2s=' title='NOA Desk' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>NOA Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXN1cHBsaWVyQ29udHJhY3RBZ3JlZW1lbnQ=' title='Supplier Contract Agreement' >
													<i class='fas fa-check-square' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Supplier Contract Agreement</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWJnQXBwcm92YWw=' title='BG Approval Desk' >
													<i class='fa fa-map-marker' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>BG Approval Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PVBPR2VuZXJhdGlvbkRlc2s=' title='Purchase Order Desk' >
													<i class='fas fa-shopping-cart' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Purchase Order Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXB1cmNoYXNlT3JkZXJBcHByb3ZhbERlc2s=' title='Purchase Order Approval Desk' >
													<i class='fas fa-thumbs-up' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Purchase Order Approval Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXB1cmNoYXNlT3JkZXJDYW5jZWxhdGlvbkRlc2s=' title='Purchase Order Cancelation' >
													<i class='fas fa-file-excel' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Purchase Order Cancelation</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXN1cHBsaWVySW50ZXJmYWNlRGVzaw==' title='Supplier Interface for Purchase' >
													<i class='fas fa-truck-loading' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Supplier Interface for Purchase</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWNoYWxsYW5SZWNlaXZlRGVzaw==' title='Equipment Receipt Desk' >
													<i class='fas fa-hand-holding' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Equipment Receipt Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWlzc3VlRGVzaw==' title='Issue Desk' >
													<i class='fas fa-share-square' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Issue Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXBvc3RJbnNwZWN0aW9uQWNrRGVzaw==' title='Equipment Acknowledge Desk' >
													<i class='fas fa-hand-holding-heart' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Equipment Acknowledge Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1pbnN0YWxsYXRpb25EZXNr' title='Installation Desk' >
													<i class='fas fa-cogs' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Installation Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWJhcmNvZGVFbnRyeURlc2s=' title='Barcode Entry Desk' >
													<i class='fas fa-barcode' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Barcode Entry Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXBvc3RJbnNwZWN0aW9uRGVzaw==' title='Inspection Desk' >
													<i class='fab fa-searchengin' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Inspection Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWRlbWFuZE5vdGlmaWNhdGlvbkRlc2s=' title='Demand Notification Desk' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Demand Notification Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWRlbWFuZFJhaXNl' title='Demand Raise' >
													<i class='fas fa-cart-plus' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Demand Raise</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWRlbWFuZENvbXBpbGF0aW9uRGVzaw==' title='Demand Compilation Desk' >
													<i class='fas fa-clipboard-list' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Demand Compilation Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWRlbWFuZENvbXBpbGF0aW9uQXBwcm92YWxEZXNr' title='Demand Compilation Approval Desk' >
													<i class='fa fa-map-marker' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Demand Compilation Approval Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PWJpbGxQcm9jZXNzaW5nVjQ=' title='Purchase Bill Processing v4' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Purchase Bill Processing v4</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXB1cmNoYXNlQmlsbFZlcmlmaWNhdGlvbkRlc2s=' title='Purchase Bill Verification Desk' >
													<i class='fa fa-map-marker' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Purchase Bill Verification Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXB1cmNoYXNlQmlsbEFwcHJvdmFsRGVzaw==' title='Purchase Bill Approval Desk' >
													<i class='fas fa-flag-checkered' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Purchase Bill Approval Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRGVtYW5kUHJvY3VyZW1lbnRBQ1RJT04/aG1vZGU9Q2FsbE1hc3RlclBhZ2UmbWFzdGVya2V5PXNhbmN0aW9uR2VuZXJhdGVEZXNrTmV3' title='Payment Desk' >
													<i class='fab fa-cc-amazon-pay' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Payment Desk</span></a>
												</div>
		          	   						
	          	   							</div>
	          	   							
	          	   							
	          	   					</div>
	          	   					</li>
	          	   					
	          	   					<li class="nav-item mega-dropdown " id="navItem2">
	          	   					<a class="nav-link nav-link2" id="navlink2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
	          	   					Inventory&nbsp;<span class="fas fa-caret-down caretMenu"></span></a>
	          	   					<div class="dropdown-menu mega-menu" aria-labelledby="navlink2" id="navbarItems2">
	          	   						<div class="row">
	          	   							<div class='col-lg-3 m-2'>
	          	   								<input type='text' class='searchMenu form-control form-control-sm' id='searchMenu_2'  placeholder="Search Menu" value="">
	          	   							</div>
	          	   						</div>
	          	   							
	          	   							<div class="row">
	          	   							
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1pbnZlbnRvcnlEZXRhaWxzRGVza0xpc3ROZXc=' title='Inventory Add Modify Delete Desk' >
													<i class='fas fa-microscope' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Inventory Add Modify Delete Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1JbnZlbnRvcnlWZXJpZmljYXRpb25EZXNr' title='Inventory Verification Desk' >
													<i class='fas fa-check-double' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Inventory Verification Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1xckNvZGVMaXN0' title='QR Code Generator' >
													<i class='fas fa-qrcode' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>QR Code Generator</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1pbnN0YWxsYXRpb25EZXNr' title='Installation Desk' >
													<i class='fas fa-cogs' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Installation Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1lcXVpcG1lbnRSZXR1cm5EZXNr' title='Equipment Transfer Desk' >
													<i class='fas fa-file-invoice' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Equipment Transfer Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1lcXVpcG1lbnRUcmFuc2ZlclZlcmlmeURlc2s=' title='Equipment Transfer Verification Desk' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Equipment Transfer Verification Des...</span></a>
												</div>
		          	   						
	          	   							</div>
	          	   							
	          	   							
	          	   					</div>
	          	   					</li>
	          	   					
	          	   					<li class="nav-item mega-dropdown " id="navItem3">
	          	   					<a class="nav-link nav-link2" id="navlink3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
	          	   					Maintenance Mgmt&nbsp;<span class="fas fa-caret-down caretMenu"></span></a>
	          	   					<div class="dropdown-menu mega-menu" aria-labelledby="navlink3" id="navbarItems3">
	          	   						<div class="row">
	          	   							<div class='col-lg-3 m-2'>
	          	   								<input type='text' class='searchMenu form-control form-control-sm' id='searchMenu_3'  placeholder="Search Menu" value="">
	          	   							</div>
	          	   						</div>
	          	   							
	          	   							<div class="row">
	          	   							
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuRmluYW5jaWFsQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1tYWludEJ1ZGdldEFsbG9jYXRpb24maXNXaXp6YXJkVmlldz0w' title='Budget Allocation For Maintenance' >
													<i class='fas fa-wallet' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Budget Allocation For Maintenance</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJmJ1dHRvbkhpZGU9MCZtYXN0ZXJrZXk9bWFpbnRlbmFuY2VDb250cmFjdERlc2s=' title='Maintenance Contract Desk' >
													<i class='fas fa-handshake' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Maintenance Contract Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuQ29tcGxhaW50QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1ydWxlTWFwcGluZ0RldGFpbHM=' title='Maintenance Contract Rule Details' >
													<i class='fa fa-map-marker' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Maintenance Contract Rule Details</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1jb25kZW1uYXRpb25DZXJ0aWZpY2F0ZURlc2s=' title='Recommendation for Condemnation' >
													<i class='fas fa-certificate' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Recommendation for Condemnation</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1jb25kZW1uYXRpb25EZXNr' title='Condemnation Desk' >
													<i class='fas fa-ban' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Condemnation Desk</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuSW52ZW50b3J5QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1jb25kZW1uYXRpb25EZXNrQXBwcm92YWw=' title='Condemnation Approval Desk' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Condemnation Approval Desk</span></a>
												</div>
		          	   						
	          	   							</div>
	          	   							
	          	   							
	          	   					</div>
	          	   					</li>
	          	   					
	          	   					<li class="nav-item dropdown " id="navItem4">
	          	   						<a class="nav-link nav-link2" id="navlink4" role='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
	          	   							Complaint&nbsp;<span class="fas fa-caret-down caretMenu"></span></a>
	          	   						<div class='dropdown-menu dropdown-menu-right short-menu' aria-labelledby='navlink4' id="navbarItems4" >
	          	   							
		          	   							<a class='acrmenu dropdown-item megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuQ29tcGxhaW50QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1jb21wbGFpbnRSYWlzZQ==' title='Complaint Raise'>
		          	   								<i class='fas fa-phone-volume' >&nbsp;&nbsp;</i><span class='menuleafName'>Complaint Raise</span>
		          	   							</a>
		          	   							
		          	   						
		          	   							<a class='acrmenu dropdown-item megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuQ29tcGxhaW50QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1zZXJ2aWNlUHJvdmlkZXJEZXNr' title='Service Provider Desk'>
		          	   								<i class='fas fa-users-cog' >&nbsp;&nbsp;</i><span class='menuleafName'>Service Provider Desk</span>
		          	   							</a>
		          	   							
		          	   						
		          	   							<a class='acrmenu dropdown-item megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuQ29tcGxhaW50QUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1jb21wbGFpbnRBcHByb3ZhbERlc2s=' title='Complaint Approval'>
		          	   								<i class='fas fa-thumbs-up' >&nbsp;&nbsp;</i><span class='menuleafName'>Complaint Approval</span>
		          	   							</a>
		          	   							
		          	   						
	          	   						</div>
	          	   					 </li>
	          	   				
	          	   					<li class="nav-item mega-dropdown " id="navItem8">
	          	   					<a class="nav-link nav-link2" id="navlink8" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
	          	   					Reports&nbsp;<span class="fas fa-caret-down caretMenu"></span></a>
	          	   					<div class="dropdown-menu mega-menu" aria-labelledby="navlink8" id="navbarItems8">
	          	   						<div class="row">
	          	   							<div class='col-lg-3 m-2'>
	          	   								<input type='text' class='searchMenu form-control form-control-sm' id='searchMenu_8'  placeholder="Search Menu" value="">
	          	   							</div>
	          	   						</div>
	          	   							
	          	   							<div class="row">
	          	   							
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L0hJU1V0aWxpdGllcy9kYXNoYm9hcmQvZGFzaEJvYXJkQUNUSU9OLmNudD9ncm91cElkPU5BPT0mZGFzaGJvYXJkRm9yPVJVMU5Vdz09' title='Admin Dashboard' >
													<i class='far fa-chart-bar' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Admin Dashboard</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L0hJU1V0aWxpdGllcy9kYXNoYm9hcmQvZGFzaEJvYXJkQUNUSU9OLmNudD9ncm91cElkPU1UZz0mZGFzaGJvYXJkRm9yPVJVMU5Vdz09' title='Equipment Status Report' >
													<i class='far fa-chart-bar' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Equipment Status Report</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L0hJU1V0aWxpdGllcy9kYXNoYm9hcmQvZGFzaEJvYXJkQUNUSU9OLmNudD9ncm91cElkPU1UUT0mZGFzaGJvYXJkRm9yPVJVMU5Vdz09' title='PO Released Report' >
													<i class='far fa-chart-bar' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>PO Released Report</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L0hJU1V0aWxpdGllcy9kYXNoYm9hcmQvZGFzaEJvYXJkQUNUSU9OLmNudD9ncm91cElkPU1qST0mZGFzaGJvYXJkRm9yPVJVMU5Vdz09' title='Supplier Details' >
													<i class='far fa-newspaper' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Supplier Details</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L0hJU1V0aWxpdGllcy9kYXNoYm9hcmQvZGFzaEJvYXJkQUNUSU9OLmNudD9ncm91cElkPU1Uaz0mZGFzaGJvYXJkRm9yPVJVMU5Vdz09' title='Warranty Due Report' >
													<i class='far fa-newspaper' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Warranty Due Report</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L0hJU1V0aWxpdGllcy9kYXNoYm9hcmQvZGFzaEJvYXJkQUNUSU9OLmNudD9ncm91cElkPU1UTT0mZGFzaGJvYXJkRm9yPVJVMU5Vdz09' title='Warranty Expiry Report' >
													<i class='far fa-newspaper' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Warranty Expiry Report</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L0hJU1V0aWxpdGllcy9kYXNoYm9hcmQvZGFzaEJvYXJkQUNUSU9OLmNudD9ncm91cElkPU5ETT0mZGFzaGJvYXJkRm9yPVJVMU5Vdz09' title='Demand Status Report' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Demand Status Report</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L0hJU1V0aWxpdGllcy9kYXNoYm9hcmQvZGFzaEJvYXJkQUNUSU9OLmNudD9ncm91cElkPU5EWT0mZGFzaGJvYXJkRm9yPVJVMU5Vdz09' title='Equipment Inventory Report' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Equipment Inventory Report</span></a>
												</div>
		          	   						
	          	   							</div>
	          	   							
	          	   							
	          	   					</div>
	          	   					</li>
	          	   					
	          	   					<li class="nav-item mega-dropdown " id="navItem9">
	          	   					<a class="nav-link nav-link2" id="navlink9" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
	          	   					Setup&nbsp;<span class="fas fa-caret-down caretMenu"></span></a>
	          	   					<div class="dropdown-menu mega-menu" aria-labelledby="navlink9" id="navbarItems9">
	          	   						<div class="row">
	          	   							<div class='col-lg-3 m-2'>
	          	   								<input type='text' class='searchMenu form-control form-control-sm' id='searchMenu_9'  placeholder="Search Menu" value="">
	          	   							</div>
	          	   						</div>
	          	   							
	          	   							<div class="row">
	          	   							
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1ncm91cE1zdA==' title='Group Master' >
													<i class='fas fa-layer-group' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Group Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1zdWJHcm91cE1zdA==' title='Sub Group Master' >
													<i class='far fa-object-group' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Sub Group Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1lcXVpcG1lbnRUeXBlTXN0' title='Generic Equipment Master' >
													<i class='fas fa-book-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Generic Equipment Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1lcXVpcG1lbnROYW1lTXN0' title='Equipment Master' >
													<i class='fas fa-microscope' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Equipment Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1lcXVpcG1lbnRNb2RlbE1zdA==' title='Equipment Model Master' >
													<i class='fas fa-notes-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Equipment Model Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1lbXBsb3llZURldGFpbE1zdA==' title='Employee Detail Master' >
													<i class='fas fa-user-tag' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Employee Detail Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1sYWJNc3Q=' title='Laboratory Master' >
													<i class='far fa-hospital' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Laboratory Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1zdG9yZU1zdA==' title='Institution Master' >
													<i class='fas fa-hospital' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Institution Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1sb2NhdGlvbk1zdA==' title='Location Master' >
													<i class='fas fa-location-arrow' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Location Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1jb21wbGFpbnREZXNjcmlwdGlvbk1zdA==' title='Complaint Description Master' >
													<i class='fas fa-file-alt' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Complaint Description Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1zb2x1dGlvbk1zdA==' title='Solution Master' >
													<i class='fas fa-file' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Solution Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1kZXNjcmlwdGlvblNvbHV0aW9uTWFwcGluZ01zdA==' title='Description Solution Mapping Master' >
													<i class='fas fa-paste' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Description Solution Mapping Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1lcXVpcG1lbnREZXNjcmlwdGlvbk1hcHBpbmdNc3Q=' title='Equipment Description Mapping Master' >
													<i class='fas fa-exchange-alt' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Equipment Description Mapping Maste...</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1mdW5kaW5nU3RvcmVNc3Q=' title='Account Head Master' >
													<i class='fas fa-rupee-sign' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Account Head Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1wYXltZW50UGxhbg==' title='Payment Plan Master' >
													<i class='fas fa-flag-checkered' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Payment Plan Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1wcm9ncmFtbWVNc3Q=' title='Programme Master' >
													<i class='fas fa-tasks' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Programme Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1wcm9ncmFtbWVGdW5kTWFwcGluZ01zdA==' title='Programme - Account Head Mapping Master' >
													<i class='fas fa-exchange-alt' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Programme - Account Head Mapping Ma...</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1iYW5rTXN0' title='Bank Master' >
													<i class='far fa-building' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Bank Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1iYW5rQnJhbmNoTXN0' title='Bank Branch Master' >
													<i class='fas fa-university' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Bank Branch Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1zdXBwbGllck1zdA==' title='Vendor Master' >
													<i class='fas fa-user-tie' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Vendor Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1zZXJ2aWNlRW5naW5lZXJNc3Q=' title='Service Engineer Master' >
													<i class='fas fa-user-cog' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Service Engineer Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1jb21wb25lbnRNc3Q=' title='Component Master' >
													<i class='far fa-newspaper' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Component Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1wb0NvbXBvbmVudE1zdA==' title='PO Component Master' >
													<i class='fas fa-newspaper' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>PO Component Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L0hJU1V0aWxpdGllcy9kYXNoYm9hcmQvbWFzdGVycy9EYXRhYmFzZUNvbmZpZ01zdEFDVElPTi5jbnQ=' title='Dashboard Configuration Master' >
													<i class='fas fa-chart-pie' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Dashboard Configuration Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL2RhdGFTZXJ2aWNlL21hc3RlcnMvZGF0YVNlcnZpY2VNc3RBQ1RJT04uY250' title='EMMS Data Service Configuration' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>EMMS Data Service Configuration</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1wYXJ0eUVxdWlwbWVudE1hcHBpbmdNc3Q=' title='Vendor Equipment Mapping Master' >
													<i class='fas fa-exchange-alt' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Vendor Equipment Mapping Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1zZXJ2aWNlRW5naW5lZXJNYXBwaW5nTXN0' title='Service Engineer Mapping Master' >
													<i class='fas fa-exchange-alt' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Service Engineer Mapping Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT13YXJlaG91c2VFbXBsb3llZU1zdA==' title='Institution Employee Master' >
													<i class='fas fa-hospital-user' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Institution Employee Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1kZXBNYXBwaW5nTXN0' title='Department Mapping Master' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Department Mapping Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1hdXRob3JpdHlCYW5rTWFwTWFzdGVy' title='Authority Bank Mapping Master' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Authority Bank Mapping Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1jaXJjdWxlck1zdA==' title='Circular Master' >
													<i class='fas fa-file' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Circular Master</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1vem9uZTI=' title='Ozone2' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Ozone2</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT13b3Jrc3BhY2U=' title='workspace' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>workspace</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1ncnBNc3Q=' title='grp mst' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>grp mst</span></a>
												</div>
		          	   						
		          	   							<div class='fa-hover col-lg-4 col-md-6 col-sm-4 col-xs-4'>
													<a class='acrmenu megaMenuAcr' data-url='L2VVcGthcmFuL0VVcGthcmFuTWFzdGVyQUNUSU9OP2htb2RlPUNhbGxNYXN0ZXJQYWdlJm1hc3RlcmtleT1zdG9yZWhpZXJhcmNoeU1zdA==' title='Store Hierarchy Master' >
													<i class='fas fa-file-medical' >&nbsp;&nbsp;</i>
													<span class='menuleafName'>Store Hierarchy Master</span></a>
												</div>
		          	   						
	          	   							</div>
	          	   							
	          	   							
	          	   					</div>
	          	   					</li>
	          	   					
          	    <li class='nav-item dropdown getbtn d-block d-lg-none ' id='navbar2userdtlli'>
	  				<a class='nav-link userbtn'  title='Click To view user details'  id='dropdownMenuButton1' role='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
	  					<span  style='float:left;' class='d-none d-lg-block d-xl-block '> <i class='fa fa-user' aria-hidden='true' ></i></span>
	  					 <span class='d-block d-lg-none' style='float:left;' >&nbsp; User Details</span>&nbsp;<span class='fas fa-caret-down caretMenu '></span> 
	  				</a>
	  				
	  				<div class='dropdown-menu dropdown-menu-right userdetail' aria-labelledby='dropdownMenuButton1' >
	  				<div class='userNameInDropDown' ><span>Hi &nbsp;emms admin</span></div>
						<a class='acrmenu dropdown-item changePassword' ><i class='fas fa-key'>&nbsp;&nbsp;</i><span>Change Password</span></a>
	  					<a class='acrmenu dropdown-item changeUserDtl' ><i class='fas fa-user-edit '>&nbsp;&nbsp;</i><span>Change User Details</span></a>
	  					<a class='dropdown-item logout' data-formid='UserDesk'><i class='fas fa-user-edit' aria-hidden='true'>&nbsp;&nbsp;</i>Sign out</a>
	  				</div>
	  		   </li>  
          	       
          </ul>
        </div>
        <div class='d-none d-lg-block d-xl-block divMcsOption' style="float: right">
        	<a id='acrHideHeading'  ><i class='fas fa-chevron-circle-up' ></i></a>
        	<a  id='acrShowHeading' class='hideData' ><i class='fas fa-chevron-circle-down'></i></a>
        	<a id='acrRefresh' title='click to refresh page' ><i class='fas fa-sync-alt' ></i></a> 
        </div>      
 	</div>
 </div>   
    <!-- header Ends  -->
   <div class = "main hideData">
 <!--    <marquee class="marq" bgcolor = "#000080" direction = "left" loop="" style="color:white ; font-size: 15pt;" > -->
         <div class="marquee" id="notification"></div>
    <!-- /marquee> -->
    </div>
   
	<div class="ifcontainer" id='divForIframe' >
	   	<iframe id="frmMainMenu" src=""  frameborder="0"   class="iframecss" wmode="transparent" ></iframe>
	 </div> 
	 
	 <!-- <div class = "main">
    <marquee class="marq" bgcolor = "#000080" direction = "left" loop="" style="color:white ; font-size: 15pt;" >
        <div id="notification"></div>
    </marquee>
    </div> -->
 
  <form id="UserDesk" name="UserDesk" action="/SSO/hislogin/UserDesk.sso" method="POST">
  	<input type="hidden" name="varSSOTicketGrantingTicket" id='varSSOTicketGrantingTicket' value="228.60.133.71.101.84.233.44.106.98.194.139.48.39.110.242.161.154.229.24.83.235.253.202.120.202.199.200.203.55.148.181.6.195.165.180.16.84.249.220.51.226.65.0.173.247.166.213.0.187.107.186.139.165.62.123">
	<textarea  name='menujson' id='menujson'  style="display: none;"></textarea>
	<input type="hidden" name="varIsFirstTimeLogin" id="varIsFirstTimeLogin" value="1">
	<input type="hidden" name="varUserName" id="varUserName" value="emms admin">
	<input type="hidden" name="userId" id="userId" value="20000004">
	<input type="hidden" name="varUsrName" id="varUsrName" value="EMMS_ADMIN">
	<input type="hidden" name="defaultMenuURL" id="defaultMenuURL" value="">
	<input type="hidden" name="selectedMenuUrl" id="selectedMenuUrl" >
	 <input type="hidden" name="struts.token.name" value="token" />
<input type="hidden" name="token" value="G8D8824UX8RK2MPSKTW1EC7Z64N3NJQV" />
 </form>



   
    
   
<div aria-hidden="true"  id="divForModal"  aria-labelledby="myLargeModalLabel" role="dialog" tabindex="-1" class="modal fade" style="display: none;">
      <div class="modal-dialog modal-lg" style="width: 97%;">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>
                  <h4 id='headingIframe' class="modal-title"></h4>                  
              </div>
              <div class="modal-body">
                 <iframe  style='border:none' id='iframeForModal'   src="" width="100%"></iframe>
              </div>
          </div>
      </div>
</div>
 </body>
 </html>
    
   