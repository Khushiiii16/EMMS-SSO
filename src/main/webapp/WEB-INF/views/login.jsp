
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">
    <script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/resources/js/custom.js'/>"></script>
</head>
<body>
<!-- Sign In Start -->
<div class="modal" id="signinModal" tabindex="-1" role="dialog">
    <div class="d-flex justify-content-center h-100">
        <div class="user_card">
            <div class="d-flex justify-content-center">
                <div class="brand_logo_container">
                    <img src="<c:url value='/resources/images/Karnataka_logo.png'/>" class="brand_logo" alt="Logo">
                </div>
            </div>
            <div class="form_container">
                <form action="login" method="POST">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <c:if test="${param.error != null}">
                        <div class="alert alert-danger">
                            Invalid username, password, or CAPTCHA.
                        </div>
                    </c:if>
                    <c:if test="${param.logout != null}">
                        <div class="alert alert-success">
                            You have been logged out.
                        </div>
                    </c:if>
                    <div class="input-group mb-3">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" name="username" id="varUserName" maxlength="50" class="form-control input_user" placeholder="username" autocomplete="off" required>
                    </div>
                    <div class="input-group mb-2">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" name="password" class="form-control input_pass" placeholder="password" maxlength="10" autocomplete="off" required>
                    </div>
                    <div class="input-group mb-2">
                        <div id="captchaDiv" class="captcha">
                            <img id="imageid" src="<c:url value='/captcha'/>" class="img-fluid">
                            <i class="fas fa-sync refreshCaptcha" aria-hidden="true" onclick="captchaReset();"></i>
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-lg fa-lock"></i></span>
                        </div>
                        <input type="text" name="captcha" id="varCaptcha" maxlength="50" class="form-control input_user" placeholder="Captcha" autocomplete="off" required>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="d-flex justify-content-center mt-2 ml-1">
                                    <button type="submit"  class="btn btnsso hero-btn">Login</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- CSRF Token -->
                   <%--  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> --%>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Sign In Ends -->
<script>
    function captchaReset() {
        document.getElementById('imageid').src = '<c:url value="/captcha"/>?' + new Date().getTime();
    }

    function validateAlphaNumWithUnderscoreOnly(element, event) {
        var charCode = event.which ? event.which : event.keyCode;
        var charStr = String.fromCharCode(charCode);
        return /[a-zA-Z0-9_]/.test(charStr);
    }
</script>
</body>
</html>