	$(document)
			.ready(
					function() {
						
		
						
						$("#tutorials").click(function() {
							var url =  "/DVDMSASSAM/tutorial/getTutorials";
										
										$.ajax({
											type : "GET",
											url : url,

											success : function(data) {
									             $("#modelBody").html(data);
									          
												$('#divTutorials').show();
												

											},
											error : function() {
												
												BootstrapDialog.alert('Error occured');

											},
											
										});
									});
					});	
	
	

function getCircularDetails(){
	 
	var url =  "/DVDMSASSAM/circular/getPublicCirculars";
	 
		$.ajax({
			  url: url,
			 success:function(data){
				   $("#divCircular").html("<marquee style='position: absolute; height: 250px;' direction = 'up'  scrollamount='3'>"+data.split('$$')[0]+"</marquee>");
				    
				    $('marquee').mouseover(function() {
			            $(this).attr('scrollamount',0);
			        }).mouseout(function() {
			             $(this).attr('scrollamount',3);
			        });
				    
//				/$("#news-list").html(data.split('$$')[0]);
				 
				/* 
				 var ter= data.split('$$')[1];				 
				 if(parseInt(ter) > 3){
			    $("#divCircular").html("<marquee style='position: absolute; height: 70%;' direction = 'up'  scrollamount='2'>"+data.split('$$')[0]+"</marquee>");
			        $('marquee').mouseover(function() {
			            $(this).attr('scrollamount',0);
			        }).mouseout(function() {
			             $(this).attr('scrollamount',2);
			        });
				 } else {
					 $("#divCircular").html("<p style='text-align:center;color:#fff;padding-top:10%;font-weight:bold;width: 100%;'>Database Connection Problem, Please contact System Admin</p>");	    
				 } 
				  */
				
				 
					 //	
					
				 
			        
				  }
			});
		
	}
 
 

/*
 * 
 * Ajax file download add by anuj on 15-12-2016
 * 
 */
function getfiledownload(f1){
	
	
 $('#downloadinddiv').css({'left':($("#contentBlock").width() - $("#downloadinddiv").outerWidth()) / 2,'top':($("#contentBlock").height() - $("#downloadinddiv").outerHeight())/2,'height':($(".example").height()),'display':'block'});
		
	var mode = "GetCircularDtlfile"; 
	 var url= "/DVDMSASSAM/circular/getCircularFile?strpdfname="+f1;
		$.ajax({
			  url: url,
			  type: "POST",
		     success: function(response, status, request) {
		        var disp = request.getResponseHeader('Content-Disposition');
		        if (disp && disp.search('attachment') != -1) {
		            var form = $('<form method="POST" action="' + url + '">');
		            $.each(function(k, v) {
		                form.append($('<input type="hidden" name="' + k +
		                        '" value="' + v + '">'));
		            });
		            $('body').append(form);
		         $('#downloadinddiv').css({'display':'none'});
		          form.submit();
		        }
		  },
		  error: function(err) {
			   $('#downloadinddiv').css({'display':'none'});
	           alert("Server unable to process.");
	          }
		});
		
}


function validate()
{
	
	
	
	$("#divElementErrorsId").html("");
	
	 
	if (document.getElementsByName("varUserName")[0].value == "" || document.getElementsByName("varPassword")[0].value == "")
	{
		$("#divElementErrorsId").html("User Name / Password is empty!").removeClass('hideData');
		return false;
	}
	
	if (document.getElementsByName("varCaptcha")[0].value == "")
	{
		$("#divElementErrorsId").html("Enter the Captcha Code").removeClass('hideData');
		document.getElementById("varCaptcha").focus();
		return false;
		
	}
	if (!validateAlphaNumWithUnderscoreValue(document.getElementsByName("varUserName")[0].value))
	{
		$("#divElementErrorsId").html("User Name should be Alphabnumeric with Underscore only...").removeClass('hideData');
		return false;
	}
	
	if(!securePassword())
	{
		$("#divElementErrorsId").html("Faced Some Unknown Problem. Please try Again!").removeClass('hideData');
		document.getElementsByName("varUserName")[0].value = "";
		document.getElementsByName("varPassword")[0].value = "";
		return false;
	}
	else{
		// Setting window.name property
		
		window.name = sessionToken;
		
		
		
		return true;
	}
	
}

function securePassword()
{
	var hashValue = "";
	var objPassHash = new jsSHA(document.getElementsByName("varPassword")[0].value+document.getElementsByName("varUserName")[0].value, "ASCII");
	try 
	{
		hashValue = objPassHash.getHash("SHA-1", "HEX");
	
	} 
	catch(e)
	{
		return false;
	}

	objPassHash = new jsSHA(hashValue + sessionToken, "ASCII");
	try
	{
		hashValue = objPassHash.getHash("SHA-1", "HEX");
		
	}
	catch(e)
	{
		alert(e);
		return false;
	}

	document.getElementsByName("varPassword")[0].value = hashValue;
	return true;
}

function submitFormOnValidate(flg,actionURL)
{
	
	
	
	if(flg)
	{
		
		
		
		submitForm(actionURL);
	}
}

function submitForm(actionURL)
{
	
	
	
	document.forms[0].action = actionURL + ".sso";	
	document.forms[0].submit();
}



/**
 * Purpose : To ensure to enter a Alphanumeric Value with Underscore Only
 * Calling On Event : onkeypress Parameters : 1. this & 2. event Return Type :
 * boolean
 * 
 * Ascii Code allowed A-65, Z-90, a-97, z-122, Underscore - 95
 */
function validateAlphaNumWithUnderscoreOnly(obj,e)
{
	var charCode;
	if(typeof e.charCode != 'undefined')	// Other
		charCode=e.charCode;
	else									// IE
		charCode=e.keyCode;
	if( charCode==0 || 
		charCode==95 || 
		(charCode>=65 && charCode<=90) || 
		(charCode>=97 && charCode<=122) ||
		(charCode>=48 && charCode<=57) )
		return true;
	else
		return false;
}


/**
 * Purpose : To validate whether a given String is Alphanumeric having
 * Underscore Only Calling On Event : onchange, user-defined way Parameters : 1.
 * val/string to validate Return Type : boolean
 */
function validateAlphaNumWithUnderscoreValue(val)
{
	var pattern=/^[a-zA-Z0-9_]*$/;
	return pattern.test(val);
}
function checkDec(el){
	 var ex = /^[0-9]+\.?[0-9]*$/;
	 if(ex.test(el.value)==false){
	   el.value = el.value.substring(0,el.value.length - 1);
	  }
	}

function validateEmpanelment()
{
	document.getElementById("divEmpErrorsId").innerHTML = "";
	if (document.getElementsByName("varIndenterName")[0].value == "" || document.getElementsByName("varIndenterLocation")[0].value == "" || document.getElementsByName("varIndenterBudget")[0].value == "")
	{
		document.getElementById("divEmpErrorsId").innerHTML = "All fields are mandatory!";
		return false;
	}
	// Setting window.name property
	
	window.name = sessionToken;
	return true;
}



