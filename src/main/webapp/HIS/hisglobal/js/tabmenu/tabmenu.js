$(function() {
	$(document)
			.ready(
					function() {

						var ht = Math.round($(window).height()
								- $(".header").outerHeight()
								- $(".footer").outerHeight())
								+ "px";
						var wt = Math.round($(window).width()) + "px";
						$('.body').height(ht);
						var ht2 = Math.round($(window).height()
								- $(".header").outerHeight()
								- $(".footer").outerHeight()
								- $("#menuStrip").outerHeight())
								+ "px";
						$('.bodyContent').height(ht2);

						$('.bodyContent').css({
							'margin-top' : $("#menuStrip").outerHeight()
						});
						adjustMenuAlignment();
						$("#toggle").click(function() {
							alert('toggle called');
							$("#menuContainer").slideToggle();
						});
						$('#arrow_left').mouseout(adjustMenuAlignment);
						$('#arrow_right').mouseout(adjustMenuAlignment);
						$('#menu a')
								.click(
										function() {
											if ($(this).attr('class') == 'plusParentNode') {
												$(this).removeClass(
														'plusParentNode');
												$(this).addClass(
														'minusParentNode');
											} else if ($(this).attr('class') == 'minusParentNode') {
												$(this).removeClass(
														'minusParentNode');
												$(this).addClass(
														'plusParentNode');
											}
											$(this).next('ul').slideToggle();
										});
						$("#smoothmenu a").click(function() {
							$(this).trigger("mouseout");
						});
						$("#lastSeenMenusIcon")
								.mouseover(
										function() {
											var lastSeenMenusHTML = "";
											var idx;

											if (lastVisitedMenusStartIdx == -1) {

											} else if (lastVisitedMenusEndIdx > lastVisitedMenusStartIdx) {
												for (idx = lastVisitedMenusEndIdx - 1; idx >= lastVisitedMenusStartIdx; idx--) {
													lastSeenMenusHTML += "<li ><a  onclick=\"callMenu('"
															+ lastVisitedURLs[idx]
															+ "','"
															+ lastVisitedMenus[idx]
															+ "')\">"
															+ lastVisitedMenus[idx]
															+ "</a> </li>";
												}
											} else {
												for (idx = lastVisitedMenusEndIdx - 1; idx >= 0; idx--) {
													lastSeenMenusHTML += "<li ><a  onclick=\"callMenu('"
															+ lastVisitedURLs[idx]
															+ "','"
															+ lastVisitedMenus[idx]
															+ "')\">"
															+ lastVisitedMenus[idx]
															+ "</a> </li>";
												}
												for (idx = maxLastVisitedMenuCount - 1; idx >= lastVisitedMenusStartIdx; idx--) {
													lastSeenMenusHTML += "<li ><a  onclick=\"callMenu('"
															+ lastVisitedURLs[idx]
															+ "','"
															+ lastVisitedMenus[idx]
															+ "')\">"
															+ lastVisitedMenus[idx]
															+ "</a> </li>";
												}

											}
											$("#lastSeenMenusID").html(
													lastSeenMenusHTML);

										});

					});

});

ddsmoothmenu.init({
	mainmenuid : "menuStrip", // menu DIV id

})
ddsmoothmenu.init({
	mainmenuid : "smoothmenu", // menu DIV id

})

function reloadCashDtl() {

}

// To Reload the Alert Dtls in the Desk
function reloadAlertDtl() {

}

function addTab(menu, targetURL) {

	if ($('#tabframe').tabs('exists', menu) && checkTabHasURL(targetURL)) {
		$('#tabframe').tabs('select', menu);

	} else {

		ajaxStartTab();
		var content = '<iframe id="'
				+ menu
				+ '_iframe" scrolling="auto" frameborder="0" src="'
				+ targetURL
				+ '" style="width:100%;height:100%;" class="col-md-12 noPadding" onLoad="ajaxCompleteTab();"></iframe>';
		tabCount = $('#tabframe ul li').length;
		$('#tabframe').tabs('add', {
			title : menu,
			content : content,
			closable : true,
			heightStyle : "content",
			id : targetURL

		});

	}
}

function tabMenuRefresh(menu, targetURL) {
	document.getElementById(menu + '_iframe').contentDocument.location = targetURL;
}

function tabRefresh() {
	var tab = $('#tabframe').tabs('getSelected');
	var targetURL = tab.panel('options').id;
	var menu = tab.panel('options').title;
	if (targetURL.indexOf("/") >= 0)
		document.getElementById(menu + '_iframe').contentDocument.location = targetURL;
}

function menuViewDisplay() {	
		parent.frmMainMenu.style.display = "block";
}

function checkTabHasURL(targetURL) {

	var urlFound = false;
	var tabs = $('#tabframe').tabs('tabs');
	for (var i = 0; i < tabs.length; i++) {
		if (tabs[i].panel('options').id == targetURL)
			urlFound = true;
	}
	return urlFound;

}

function menuSelected(menuName, isSelectHomeScreen) {
	var moduleId = 63;
	if ((menuName.toLowerCase()).indexOf("emms") > -1) {
		moduleId = 39;
	} else {
		moduleId = 63;
	}
	var action = "/SSO/hislogin/refreshHomeUserDesk.sso";

	var data = {
		varUserChoiceMenu : menuName
	};
	$
			.ajax({
				url : action,
				type : "POST",
				async : true,
				dataType : "text",
				data : data,
				success : function(returnHTML) {
					if ($('#frmMainMenu').length && typeof menu != 'undefined')
						$('#frmDashboardMenu').attr(
								'src',
								'/SSO/hislogin/transactions/jsp/dashboardMenue.jsp?moduleId='
										+ moduleId);
					$('#frmMainMenu')
							.attr('src',
									'/SSO/hislogin/transactions/jsp/st_desk_homeMenuTab_page.jsp');

					if (isSelectHomeScreen)
						$('#tabframe').tabs('select', 0);
					else {
						$('#tabframe').tabs('select', 1);
						$('#tabframe').tabs('select', 0);
					}

					$("ul#menuList li").removeClass('selectedMenu');
					menuName = menuName.toString().replace(/ /g, '_');
					$("#" + menuName).addClass('selectedMenu');

				},
				error : function(errorMsg, textstatus, errorthrown) {
					alert("Sorry !! Not Able to Refresh the Home Tab");
				}
			});
}

function showHomeTab() {
	$('#tabframe').tabs('select', 0);
}

function closeTab(url) {
	var targetURL = url;
	var elemFrame = document.getElementById("frmMain");

	if (elemFrame != null) {
		elemFrame.src = targetURL;
		elemFrame.refresh();
	} else {
		if (typeof $('#tabframe') != 'undefined') {
			var tab = $('#tabframe').tabs('getSelected');
			var index = $('#tabframe').tabs('getTabIndex', tab);
			$('#tabframe').tabs('select', index - 1);
			$('#tabframe').tabs('close', index);

		}
	}
}

function maintainLastSeenMenuArray(url, menu) {
	if (menu === undefined) {
	} else {
		if (lastVisitedMenus.indexOf(menu) != -1) {
			deleteMenuFromCircularQueue(url, menu);
		}
		addMenuToCircularQueue(url, menu);
	}

}

function addMenuToCircularQueue(url, menu) {
	if (lastVisitedMenusStartIdx == -1 && lastVisitedMenusEndIdx == -1) {// empty
		// array
		lastVisitedMenus[++lastVisitedMenusEndIdx] = menu;
		lastVisitedURLs[lastVisitedMenusEndIdx] = url;
		lastVisitedMenusStartIdx = 0;
		lastVisitedMenusEndIdx++;
	} else {
		lastVisitedMenus[lastVisitedMenusEndIdx] = menu;
		lastVisitedURLs[lastVisitedMenusEndIdx] = url;
		if (lastVisitedMenusEndIdx == lastVisitedMenusStartIdx)
			lastVisitedMenusStartIdx = (lastVisitedMenusStartIdx + 1)
					% maxLastVisitedMenuCount;
		lastVisitedMenusEndIdx = (lastVisitedMenusEndIdx + 1)
				% maxLastVisitedMenuCount;
	}
}
function deleteMenuFromCircularQueue(url, menu) {
	try {
		var menuIdx = lastVisitedMenus.indexOf(menu);
		var idx;
		var noOfShuflings = lastVisitedMenusEndIdx - menuIdx - 1;
		if (noOfShuflings < 0) {
			noOfShuflings = noOfShuflings + maxLastVisitedMenuCount;
		}
		if (noOfShuflings > 0) {
			for (idx = 1; idx <= noOfShuflings; idx++) {
				lastVisitedMenus[menuIdx] = lastVisitedMenus[(menuIdx + 1)
						% maxLastVisitedMenuCount];
				lastVisitedURLs[menuIdx] = lastVisitedURLs[(menuIdx + 1)
						% maxLastVisitedMenuCount];
				menuIdx = (menuIdx + 1) % maxLastVisitedMenuCount;
			}
			lastVisitedMenus[menuIdx] = '-1';
			lastVisitedURLs[menuIdx] = '-1';
			lastVisitedMenusEndIdx = lastVisitedMenusEndIdx - 1;
			if (lastVisitedMenusEndIdx < 0)
				lastVisitedMenusEndIdx = lastVisitedMenusEndIdx
						+ maxLastVisitedMenuCount;
		} else if (noOfShuflings == 0) { // only one element is there in
			// array make array empty
			lastVisitedMenus[menuIdx] = '-1';
			lastVisitedURLs[menuIdx] = '-1';
			lastVisitedMenusStartIdx = -1;
			lastVisitedMenusEndIdx = -1;
		}
	} catch (err) {
		alert(err);
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

function callLogOut(e) {
	deleteCookies();
	submitForm("logoutLogin");

}

function searchMenu() {
	openURLInPopup('/SSO/hislogin/transactions/jsp/st_menu_search.jsp', '500',
			'200');

}

function showDiv() {
	document.getElementById("envato-widget1").style.display = "block";
}
function hideDiv() {
	document.getElementById("envato-widget1").style.display = "none";
}

var secs;
var timerID = null;
var timerRunning = false;
var delay = 1000;
var currentDate = null;

function setTime() {
	if ('<s:property value="varIsFirstTimeLogin" />' == '1')
		openURLInPopupWithoutClose("/SSO/hislogin/initFirstLoginLgnFtr.sso",
				"600", "400");

	// Setting Time initially on Load
	var dateAsString = document.getElementsByName("varCurrentDate")[0].value;
	currentDate = convertStrToDate(dateAsString, 'dd-MM-yyyy hh:mm'); // for
	// format
	// dd-MM-yyyy
	// HH:mm
	// of
	// 'dateAsString2'
	var tdDate = document.getElementById("dateTdId");
	var newDateFormat = convertDateToStr(currentDate, "Week, dd-Mon-yyyy hh:mm");
	tdDate.innerHTML = newDateFormat;

	InitializeTimer();
}

function InitializeTimer() {
	// Set the length of the timer, in seconds
	secs = 60;
	StopTheClock();
	StartTheTimer();
}

function StopTheClock() {
	if (timerRunning)
		clearTimeout(timerID);
	timerRunning = false;
}

function StartTheTimer() {
	if (secs == 0) {
		StopTheClock();
		var tdDate = document.getElementById("dateTdId");
		var objnewDate = addToDate(currentDate, 1, "MI");
		var newDateFormat = convertDateToStr(objnewDate,
				"Week, dd-Mon-yyyy hh:mm");
		var newDate = convertDateToStr(objnewDate, "dd-MM-yyyy hh:mm");
		currentDate = objnewDate;

		tdDate.innerHTML = newDateFormat;
		document.getElementsByName("varCurrentDate")[0].value = newDate;

		InitializeTimer();
	} else {
		self.status = secs;
		secs = secs - 1;
		timerRunning = true;
		timerID = self.setTimeout("StartTheTimer()", delay);
	}
}
function getNextMonth(monthId) {
	var monthArray = [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",
			"Sep", "Oct", "Nov", "Dec" ];
	return monthArray[monthId];
}

function getNextDay(dayId) {
	var daysArray = [ "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday",
			"Friday", "Saturday" ];
	return daysArray[dayId];
}

function checkIfSlideBarRequired() {
	var menuContainerWidth = $("#menuContainer").width();
	var menuWidth = 0;
	$("#menuStrip #smoothmenu ul#menuList").children("li").each(
			function(index) {
				currentMenuWidth = $(this).outerWidth(true);
				menuWidth += currentMenuWidth;

			});
	if (menuContainerWidth > menuWidth) {
		$('#arrow_left').css({
			'display' : 'none'
		});
		$('#arrow_right').css({
			'display' : 'none'
		});
		$('#menuStrip').css({
			'left' : '0'
		});
	}

}
function adjustMenuAlignment() {
	var listColumnWidth = 0;
	var menuContainerWidth = $("#menuContainer").width();
	var leftOffset = Math.abs($("#menuStrip").offset().left);
	/* Find leftmost menu item */
	var cummulativeLeftMenuWidth = 0;
	var currentMenuWidth = 0;
	var currentWindowMenuWidth = 0;
	$("#menuStrip ul#menu")
			.children("li")
			.each(
					function(index) {
						currentMenuWidth = $(this).outerWidth(true);
						cummulativeLeftMenuWidth += currentMenuWidth;
						if (cummulativeLeftMenuWidth > leftOffset
								&& currentWindowMenuWidth < menuContainerWidth) {
							currentWindowMenuWidth += currentMenuWidth;
							listColumnWidth = $($(this).children('div'))
									.outerWidth(true);
							if (currentWindowMenuWidth + listColumnWidth > menuContainerWidth) {
								//alert('class added to '+ $(this).children("a").text());
								$(this).children('div').addClass("align_right");
							} else {
								//alert('class removed from '+ $(this).children("a").text());
								$(this).children('div').removeClass(
										"align_right");
							}

						}

					});

}

function ajaxStart() {
	$("#loadingmessage").css("display", "block");
}

function ajaxComplete() {
	$("#loadingmessage").css("display", "none");
};
function ajaxStartMenu() {
	$("#loadingMenu").css("display", "block");
}

function ajaxCompleteMenu() {
	$("#loadingMenu").css("display", "none");
};
function ajaxStartTab() {
	$("#loadingTab").css("display", "block");
}

function ajaxCompleteTab() {
	$("#loadingTab").css("display", "none");
};
