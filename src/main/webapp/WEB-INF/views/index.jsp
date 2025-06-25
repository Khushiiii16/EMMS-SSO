
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.sso.config.TokenConfig" %>
<html>
<head>
    <!-- Chrome, Firefox OS and Opera -->
    <meta name="theme-color" content="#003065">
    <!-- Windows Phone -->
    <meta name="msapplication-navbutton-color" content="#003065">
    <!-- iOS Safari -->
    <meta name="apple-mobile-web-app-status-bar-style" content="#003065">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta name="description" content="eUpkaran, EMMS, UPMSCL, equipment maintenance, equipment management, hospital equipment">
    <meta name="author" content="CDAC- Noida">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>eUpkaran | KSMSCL</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Icons -->
    <link rel="apple-touch-icon" sizes="57x57" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/SSOKa/HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/favicon-16x16.png">
    <link rel="manifest" href="HIS/hisglobal/eUpkaranTemplate/dist/icons/manifest.json">

    <!-- CSS -->
    <link rel="stylesheet" href="HIS/hisglobal/eUpkaranTemplate/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="HIS/hisglobal/eUpkaranTemplate/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <link rel="stylesheet" href="HIS/hisglobal/eUpkaranTemplate/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <link rel="stylesheet" href="HIS/hisglobal/eUpkaranTemplate/dist/css/adminlte.min.css">
    <link rel="stylesheet" href="HIS/hisglobal/eUpkaranTemplate/plugins/animate/animate.min.css">
    
    <link rel="stylesheet" id="css-theme" href="/SSOKa/HIS/preset1.css">

    <!-- JavaScript -->
    <script src="HIS/hisglobal/eUpkaranTemplate/plugins/jquery/jquery.min.js"></script>
    <script src="HIS/hisglobal/eUpkaranTemplate/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="HIS/hisglobal/eUpkaranTemplate/dist/js/adminlte.js"></script>
    <script src="HIS/hisglobal/eUpkaranTemplate/plugins/animate/wow.min.js"></script>
    <script src="HIS/hisglobal/eUpkaranTemplate/plugins/scroll/jquery.scrollUp.min.js"></script>
    <script src="HIS/hisglobal/eUpkaranTemplate/plugins/scroll/jquery.sticky.js"></script>
    <script src="HIS/hisglobal/eUpkaranTemplate/plugins/typed/typed.js"></script>
    <script src="HIS/hisglobal/js/hashFunctions.js"></script>
<!--     <script src="/SSOKa/HIS/hisglobal/js/ssoLogin.js"></script> -->
    <script src="/SSOKa/HIS/hisglobal/js/security.js"></script>

    <script>
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);

        function noBack() {
            window.history.forward(1);
        }

        $(document).ready(function () {
            disableBackButton();
            $(".close").click(function () {
                $("#signinModal").modal('hide');
            });
		captchaReset();
            /* Preloader */
            $('#preloader-active').delay(450).fadeOut('slow');
            $('body').delay(450).css({
                'overflow': 'visible'
            });

            /* Typed Animation */
            var typed = $(".typed");
            $(function () {
                var strings = $('.typed-items').text();
                strings = $('.typed-items').data('typed-person') + ',' + strings;
                strings = strings.split(',');
                typed.typed({
                    strings: strings,
                    typeSpeed: 100,
                    loop: true,
                });
            });

            /* Prevent Default for Buttons */
            $("button, input[type=button]").click(function (event) {
                event.preventDefault();
            });

            /* Sticky Menu */
            $(window).on('scroll', function () {
                var scroll = $(window).scrollTop();
                if (scroll < 245) {
                    $(".header-sticky").removeClass("sticky-bar");
                } else {
                    $(".header-sticky").addClass("sticky-bar");
                }
            });

            /* ScrollUp */
            $.scrollUp({
                scrollName: 'scrollUp',
                topDistance: '300',
                topSpeed: 300,
                animation: 'fade',
                animationInSpeed: 200,
                animationOutSpeed: 200,
                scrollText: '<i class="fas fa-lg fa-chevron-up"></i>',
                activeOverlay: false,
            });

            /* Navigation Scroll */
            $(window).scroll(function (event) {
                Scroll();
            });

            $('.scroll a').on('click', function () {
                $('html, body').animate({ scrollTop: $(this.hash).offset().top - 50 }, 1000);
                return false;
            });

            function Scroll() {
                var contentTop = [];
                var contentBottom = [];
                var winTop = $(window).scrollTop();
                var rangeTop = 200;
                var rangeBottom = 500;
                $('.scroll a').each(function () {
                    contentTop.push($($(this).attr('href')).offset().top);
                    contentBottom.push($($(this).attr('href')).offset().top + $($(this).attr('href')).height());
                });
                $.each(contentTop, function (i) {
                    if (winTop > contentTop[i] - rangeTop) {
                        $('li.scroll').removeClass('active').eq(i).addClass('active');
                    }
                });
            }

            /* WOW Animation */
            new WOW().init();

            /* Show/Hide Error Div */
            if ($('#divElementErrorsId').html().trim() === "") {
                $('#divElementErrorsId').addClass('hideData');
            } else {
                $('.signIn').trigger('click');
            }

            /* Navbar Toggler */
            $('.nav-link').click(function () {
                if ($('.navbar-toggler').is(":visible")) {
                    $('.navbar-toggler').trigger('click');
                }
            });

            /* Theme Change (Commented out for now) */
            /*
            $('.btnTheme').click(function () {
                var cssNewFile = "${pageContext.request.contextPath}/HIS/hisglobal/eUpkaranTemplate/dist/css/Theme/" + this.id + ".css";
                $('#preloader-active').show();
                $('#css-theme').attr('href', cssNewFile);
                var data = { "theme": this.id };
                $.ajax({
                    url: "${pageContext.request.contextPath}/changeTheme",
                    data: data,
                    success: function (resp) {
                        $('#preloader-active').delay(450).fadeOut('slow');
                    },
                    error: function () {
                        alert("Error occurred");
                    }
                });
            });
            */
        });

        function captchaReset() {
            var url = "${pageContext.request.contextPath}/captcha";
            var data = { "t": new Date().getTime() };
            $.ajax({
                url: url,
                success: function (data) {
                    document.getElementById("captchaDiv").innerHTML = '<img id="imageid" src="data:image/png;base64,' + data + '" class="captcha"> <i class="fas fa-sync refreshCaptcha" alt="Refresh" onClick="captchaReset();" aria-hidden="true"/>';
                },
                error: function () {
                    alert("Error occurred");
                }
            });
        }

        
        $("button, input[type=button]").click(function (event) {
    event.preventDefault();
});
    </script>
    <style type="text/css">
        .modal {
            top: 40px !important;
        }
        .thememenu {
            left: -60px !important;
        }
        .slider-heightt {
		  background-image: url('/SSOKa/HIS/hisglobal/images/banner1.png');	
		  min-height: 650px;
		  background-repeat: no-repeat;
		  background-position: center center; 
		   background-size: cover; 
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

    <!-- Modal Dialog Start -->
    <div class="modal fade" id="divForModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button data-dismiss="modal" class="close" type="button">×</button>
                </div>
                <div class="modal-body">
                    <iframe id='iframeForModal' src="" height="200px" style='border:0' width="100%"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Dialog Ends -->

    <!-- Home Starts -->
    <div id='home' style="width: 100%">
        <!-- Header Starts -->
        <div class="container-fluid top-bg d-none d-lg-block">
            <div class="col-xl-12">
                <div class="row d-flex justify-content-between align-items-center">
                    <div class="header-info-left">
                        <ul>
                            <li><i class="fas fa-lg fa-phone-square-alt"></i> +91-120-3063311-13</li>
                            <li><i class="fas fa-lg fa-envelope"></i> www.cdacnoida.in</li>
                        </ul>
                    </div>
                    <div class="header-info-right hideData">
                        <ul>
                            <li>
                                <div class="btn-group">
                                    <a aria-expanded="true" data-toggle="dropdown" type="button" class="btnthemedropDown">
                                        <i class="fas fa-palette"></i>
                                    </a>
                                    <ul role="menu" class="dropdown-menu thememenu">
                                        <li style="color: black; width: 100%; text-align: center; text-decoration: underline; font-weight: bold;">
                                            Change Theme<br/><br/>
                                        </li>
                                        <li>
                                            <button class="btn btnTheme" style="background:#C6426E" id="preset1"></button>
                                            <button class="btn btnTheme" style="background:#093882;" id="preset2"></button>
                                            <button class="btn btnTheme" style="background:#ADD100;" id="preset3"></button>
                                        </li>
                                        <li>
                                            <br>
                                            <button class="btn btnTheme" style="background:#1e5f8d;" id="preset4"></button>
                                            <button class="btn btnTheme" style="background:#1b1b1b;" id="preset5"></button>
                                            <button class="btn btnTheme" style="background:#aa0000;" id="preset6"></button>
                                            <br>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="navbar navbar-expand-lg navbar-light navbar-white header-sticky">
            <div class="container-fluid">
                <a href="${pageContext.request.contextPath}/login" class="navbar-brand">
                    <span style='float:left;width:53px;'>
                        <img src="/SSOKa/HIS/hisglobal/images/karnataka.jpg" alt="" class='img-fluid'>
                    </span>
                    <div class="d-flex flex-row mt-1">
                        <div class="brandlogo eupkaranLogo">eUpkaran</div>
                        <div>
                            <div class="d-flex flex-column">
                                <div class="d-block d-lg-none brandlogo"> | KSMSCL</div>
                                <div class="d-none d-lg-block d-xl-block brandlogo"> | Karnataka State Medical Supplies Corporation Ltd.</div>
                                <div class="d-none d-lg-block d-xl-block brandlogo3">(A Government of Karnataka Undertaking)</div>
                            </div>
                        </div>
                    </div>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><i class='fas fa-bars'></i></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav">
                        <li class="nav-item scroll"><a class='nav-link' href="#home">Home</a></li>
                        <li class="nav-item scroll"><a class='nav-link' href='#Services'>Services</a></li>
                        <li class="nav-item scroll"><a class='nav-link' href='#Features'>Features</a></li>
                        <li class="nav-item scroll"><a class='nav-link' href='#AboutEMMS'>About Us</a></li>
                        <li class="nav-item scroll" style='display: none;'><a class='nav-link' href='${pageContext.request.contextPath}/register' target="_blank">Sign Up</a></li>
                        <li class="nav-item scroll getbtn"><a class='nav-link signIn' data-toggle="modal" data-target="#signinModal">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Header Ends -->
        <div class='slider-heightt'>
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-8 col-md-8">
                        <div class="hero__caption">
                            <h1>eUpkaran | KSMSCL</h1>
                            <h2>Equipment <span class="typed"></span></h2>
                            <p class="typed-items hideData" data-typed-person="Management">Maintenance, Inventory, Complaint, Procurement, Transfer, Condemnation</p>
                            <div class="scroll hero__btn" data-animation="fadeInUp" data-delay=".7s">
                                <a href="" class="btn btnsso hero-btn" data-toggle="modal" data-target="#signinModal">Sign In</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Home Ends -->

    <!-- Services Starts -->
    <div class="container-fluid services-area testimonial-padding" id='Services'>
        <div class="row">
            <div class="col-xl-12 text-center">
                <h2 class="headingdetailMenu"><span class="eupkaranLogo">eUpkaran</span> Services</h2>
            </div>
        </div>
        <div class="container-fluid p-0">
            <div class="row no-gutters gallery-area">
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                    <div class="gallery-box">
                        <div class="single-gallery">
                            <div class="gallery-img">
                                <img src="${pageContext.request.contextPath}/HIS/global/images/features/procurement.png" alt="">
                            </div>
                            <div class="g-caption1">
                                <h4>Procurement</h4>
                            </div>
                            <div class="g-caption2">
                                <span></span>
                                <h4>Procurement</h4>
                                <p>Turnkey Supply Chain Solution</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Other gallery items remain the same, just update the image paths -->
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                    <div class="gallery-box">
                        <div class="single-gallery">
                            <div class="gallery-img">
                                <img src="${pageContext.request.contextPath}/HIS/global/images/features/inventory.jpg" alt="">
                            </div>
                            <div class="g-caption1">
                                <h4>Inventory</h4>
                            </div>
                            <div class="g-caption2">
                                <h4>Inventory</h4>
                                <p>Systematic Management of Equipment Stock</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Add remaining gallery items with updated paths -->
            </div>
        </div>
    </div>
    <!-- Services Ends -->

    <!-- Features Starts -->
    <div class="services-area d-flex justify-content-lg-between testimonial-padding" id="Features">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 text-center">
                    <h2 class="headingdetailMenu"><span class="eupkaranLogo">eUpkaran</span> Features</h2>
                </div>
            </div>
        </div>
        <div class="single-services">
            <div class="services-icon eupkaranLogo text-center" style="font-size:300%">
                <i class="fas fa-globe"></i>
            </div>
            <div class="services-caption">
                <h4>Web Based Open Source Platform</h4>
                <p>System developed on Open Source Platform</p>
            </div>
        </div>
        <!-- Other feature items remain the same -->
    </div>
    <!-- Features Ends -->

    <!-- About Us Starts -->
    <div class="testimonial-area testimonial-padding" id="AboutEMMS">
        <div class="safe-industery-area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md pr-0">
                        <div class="safe-caption pt-10 mb-40">
                            <h2 class='headingdetailMenu'>About <span class="eupkaranLogo">eUpkaran</span></h2>
                            <p class="safe-pera-one">eUpkaran is a web-based Equipment Inventory & Maintenance Management System that deals in Purchase, supply, inventory & complaint management of bio-medical equipment by linking health institutes. The system ensures that these equipments remain safe for its intended use, the operational life is maximized and lifetime costs are minimized</p>
                            <h2 class='headingdetailMenu'>About <span class="eupkaranLogo">KSMSCL</span></h2>
                            <p class="safe-pera-one">Government of Karnataka is committed to provide timely and effective Health Care Services to the people of Karnataka. A majority of the poor people of Karnataka usually depend on Public/Government Health Care Delivery Systems to address their preventative and curative health needs...</p>
                        </div>
                    </div>
                    <div class="col-xl-5 offset-xl-1 col-lg-6 pl-0">
                        <div class="safe-caption-right">
                            <div class="safe-img"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About Us Ends -->

    <!-- Sign In Start -->
    <div class="modal" id='signinModal'>
        <div class="d-flex justify-content-center h-100">
            <div class="user_card">
                <div class="d-flex justify-content-center">
                    <div class="brand_logo_container">
                        <img src="${pageContext.request.contextPath}/HIS/hisglobal/images/Karnataka_logo.png" class="brand_logo" alt="Logo">
                    </div>
                </div>
                <div class="form_container">
                    <form action="${pageContext.request.contextPath}/login" method="POST">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        <div class="input-group mb-3">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" name="varUserName" id="varUserName" maxlength="50" class="form-control input_user" placeholder="username" onkeypress="return validateAlphaNumWithUnderscoreOnly(this,event);" autocomplete="off" required>
                            <div class="validation"></div>
                        </div>
                        <div class="input-group mb-2">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" name="varPassword" class="form-control input_pass" placeholder="varPassword" maxlength="10" onkeypress="if(event.keyCode==13) this.form.submit();" autocomplete="off" required>
                            <div class="validation"></div>
                        </div>
                        <div class="input-group mb-2">
                           <%--  <div id='captchaDiv' class="captcha">
                                <img id="imageid" src="${pageContext.request.contextPath}/captcha" class="img-fluid"> <i class="fas fa-sync refreshCaptcha" aria-hidden="true" onClick="captchaReset();"></i>
                            </div> --%>
							<div id='captchaDiv' class="captcha">
								<img id="imageid" src="" class="img-fluid">
								<!-- Leave src empty initially -->
								<i class="fas fa-sync refreshCaptcha" aria-hidden="true"
									onClick="captchaReset();"></i>
							</div>
						</div>
                        <div class="input-group">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fas fa-lg fa-lock"></i></span>
                            </div>
                            <input type="text" name="varCaptcha" id="varCaptcha" maxlength="50" class="form-control input_user" placeholder="Captcha" onkeypress="if(event.keyCode==13) this.form.submit();" autocomplete="off" required>
                            <div class="validation"></div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class='col-sm-12'>
                                    <div class="d-flex justify-content-center mt-2 ml-1 hero__btn" data-animation="fadeInUp" data-delay=".7s">
                                        <button type="submit" class="btn btnsso hero-btn">Login</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="divElementErrorsId" class="alert alert-danger" style="${empty errorMessage ? 'display:none' : ''}">
                            ${errorMessage}
                        </div>
                        <!-- CSRF Token for Spring Security -->
                        <input type="hidden" name="csrf_token"	value="<%=TokenConfig.GenerateSecureRandomNumber(request)%>">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Sign In Ends -->

    <!-- Footer Start -->
    <footer>
        <div class="footer-bottom-area footer-bg">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-xl-10 col-lg-10">
                            <div class="footer-copy-right">
                                <p><a target="_blank" href="http://www.cdac.in">Designed and Developed by Centre for Development of Advanced Computing (C-DAC)</a></p>
                            </div>
                        </div>
                    </div>
                    <div class='row'>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4 style='color:#fff;'>Browser Support</h4>
                                    <ul>
                                        <li class="themeTextColor">Cross Browser Support</li>
                                        <li class="themeTextColor">Best viewed in Mozilla Firefox 74.0 and above</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer End -->
</body>
</html>