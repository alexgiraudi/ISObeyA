<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Login to IsoBeya</title>
           <!-- Le styles -->
            <link type="text/css" href="./Librairies/greensock/logo.css" rel="stylesheet" />
            <link type="text/css" href="./Librairies/bootstrap/css/bootstrap.css" rel="stylesheet"/>
            <link type="text/css" href="./Librairies/jquery/css/custom-theme/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
            <link type="text/css" href="./Librairies/jquery/css/custom-theme/dashboard.css" rel="stylesheet" />
            <link type="text/css" href="./Librairies/jquery/assets/css/font-awesome.min.css" rel="stylesheet" />
            <link type="text/css" href="./Librairies/jquery/assets/css/docs.css" rel="stylesheet"/>
       		<link type="text/css" href="./Librairies/lobibox/dist/css/lobibox.css" rel="stylesheet"/>
 			<link type="text/css" href="./Librairies/perso/isobeya.css" rel="Stylesheet"/>
			<link type="text/css" href="./Librairies/perso/style.css" rel="Stylesheet"/>
       		<link rel="stylesheet" href="./Librairies/perso/login.css"/>
    </head>
    <body style="background-image: url('Librairies/images/space.png';)">
        <div class="login-wrapper fadeInDown animated">
            <form action class="lobi-form login-form visible">
                <div class="login-header">
                    Login to your account
                </div>
                <div class="login-body no-padding">
                    <fieldset>
                        <div class="form-group">
                            <label>Username</label>
                            <label class="input">
                                <span class="input-icon input-icon-prepend fa fa-user"></span>
                                <input type="text" name="username" placeholder="Username">
                                <span class="tooltip tooltip-top-left"><i class="fa fa-user text-cyan-dark"></i> Please enter the username</span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <label class="input">
                                <span class="input-icon input-icon-prepend fa fa-key"></span>
                                <input type="password" name="password" placeholder="Password">
                                <span class="tooltip tooltip-top-left"><i class="fa fa-key text-cyan-dark"></i> Please enter your password</span>
                            </label>
                            <button type="button" class="btn-link btn-forgot-password">Forgot your password?</button>
                        </div>

                        <div class="row">
                            <div class="col-xs-8">
                                <label class="checkbox lobicheck lobicheck-info lobicheck-inversed lobicheck-lg">
                                    <input type="checkbox" name="remember_me" value="0"> 
                                    <i></i> Remember me
                                </label>
                            </div>
                            <div class="col-xs-4">
                                <button type="submit" class="btn btn-info btn-block"><span class="glyphicon glyphicon-log-in"></span> Login</button>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="login-footer">
                    New user? <button type="button" class="btn btn-xs btn-info btn-sign-up pull-right">Sign up</button>
                </div>
            </form>
            <!--Sign up form-->
            <form action class="lobi-form signup-form">
                <div class="login-header">
                    New user? Sign up.
                </div>
                <div class="login-body no-padding">
                    <fieldset>
                        <div class="row">
                            <div class="col-xxs-12 col-xs-6">
                                <label>First name</label>
                                <label class="input">
                                    <span class="input-icon input-icon-prepend fa fa-user"></span>
                                    <input type="text" name="firstname" placeholder="Firstname">
                                </label>
                            </div>
                            <div class="col-xxs-12 col-xs-6">
                                <label>Last name</label>
                                <label class="input">
                                    <span class="input-icon input-icon-prepend fa fa-user"></span>
                                    <input type="text" name="lastname" placeholder="Lastname">
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Username</label>
                            <label class="input">
                                <span class="input-icon input-icon-prepend fa fa-user"></span>
                                <input type="text" name="username" placeholder="Username">
                            </label>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <label class="input">
                                <span class="input-icon input-icon-prepend fa fa-envelope"></span>
                                <input type="text" name="email" placeholder="Email address">
                            </label>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <label class="input">
                                <span class="input-icon input-icon-prepend fa fa-key"></span>
                                <input type="password" name="password" placeholder="Password">
                            </label>
                        </div>
                        <div class="form-group">
                            <label>Confirm password</label>
                            <label class="input">
                                <span class="input-icon input-icon-prepend fa fa-key"></span>
                                <input type="password" name="confirm_password" placeholder="Confirm password">
                            </label>
                        </div>
                        <div class="row">
                            <div class="col-xs-4 col-xs-offset-8">
                                <button type="submit" class="btn btn-info btn-block">Register</button>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="login-footer">
                    Do you already have an account? <button type="button" class="btn btn-xs btn-info btn-sign-in pull-right">Sign in</button>
                </div>
            </form>
            <!--Forgot password form-->
            <form action class="lobi-form pass-forgot-form">
                <div class="login-header">
                    Forgot your password?
                </div>
                <div class="login-body">
                    <fieldset>
                        <div class="form-group">
                            <label>Email or username</label>
                            <label class="input">
                                <span class="input-icon input-icon-prepend fa fa-envelope"></span>
                                <span class="input-icon input-icon-append fa fa-user"></span>
                                <input type="text" name="username" placeholder="Email or username">
                                <span class="tooltip tooltip-bottom-right">Type the email or username used for registration</span>
                            </label>
                            <button type="button" class="btn-link btn-sign-in">Remember your password?</button>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 text-right">
                                <button type="submit" class="btn btn-info btn-block"><i class="fa fa-refresh"></i> Restore password</button>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="login-footer">
                    New user? <button type="button" class="btn btn-xs btn-info btn-sign-up pull-right">Sign up</button>
                </div>
            </form>
        </div>
        

        <script type="text/javascript" src="js/lib/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap/bootstrap.min.js"></script>
        <script type="text/javascript">
            $('.login-wrapper').ready(function(){
                $('.login-form').submit(function(){
                    window.location.href = "/IsObeya-MainPageContent.jsp";
                    return true;
                });
                $('.signup-form').submit(function(){
                    return false;
                });
                $('.pass-forgot-form').submit(function(){
                    return false;
                });
            });
            $('.btn-forgot-password').click(function(ev){
                var $form = $(this).closest('form');
                $form.removeClass('visible');
                $form.parent().find('.pass-forgot-form').addClass('visible');
            });
            $('.btn-sign-in').click(function(){
                var $form = $(this).closest('form');
                $form.removeClass('visible');
                $form.parent().find('.login-form').addClass('visible');
            });
            $('.btn-sign-up').click(function(){
                var $form = $(this).closest('form');
                $form.removeClass('visible');
                $form.parent().find('.signup-form').addClass('visible');
            });
        </script>
    </body>
</html>
