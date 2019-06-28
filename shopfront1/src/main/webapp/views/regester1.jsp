<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- google icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Courgette|Kaushan+Script" rel="stylesheet">
  <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>
    <link rel="stylesheet" href="./src/docs/resources/css/regester.css">
    <title>register</title>
</head>

<body>
    <div class="load"></div>
    <h2 style="color:rgb(117, 231, 226); font-family: 'Kaushan Script', cursive; padding-left: 550px;">register page</h2>
    
    <div id="register-page" class="row">
    <form action="/shopfront1/suces" method="post">
        <div class="col s12 l10 z-depth-6 card-panel">
           
                <div class="row margin">
                    <div class="input-field col s10 l6">
                        <i class="mdi-social-person-outline prefix"></i>
                        <input id="user_name" type="text" name="firstName"class="validate">
                        <label for="firstName" class="center-align">first name</label>
                    </div>
                
                <div class="row margin">
                        <div class="input-field col s10 l6">
                            <i class="mdi-social-person-outline prefix"></i>
                            <input id="lastName"name="lastName" type="text" class="validate">
                            <label for="lastName" class="center-align">last name</label>
                        </div>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s10 l12">
                          <i class="material-icons prefix">call</i>
                        <input id="mob"name="mobileNumber" type="text" class="validate">
                        <label for="mobileNumber" class="center-align">mobile number</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="mdi-communication-email prefix"></i>
                        <input id="user_email" name="email"type="email" class="validate">
                        <label for="email" class="center-align">Email</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="mdi-action-lock-outline prefix"></i>
                        <input id="user_passw" name="password"type="password" class="validate">
                        <label for="password">Password</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="mdi-action-lock-outline prefix"></i>
                        <input id="confirm_pass"name="rePassword" type="password">
                        <label for="rePassword">Re-type password</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                 <a>  <input id="button" type="submit"class="btn waves-effect waves-light col s12" value="Register Now"/></a>
                        
                    </div>
                    </div>
                   
                    <div class="input-field col s12">
                        <p class="margin center medium-small sign-up">Already have an account? <a class="modal-trigger" href="#modal1">Login</a></p>
                    </div>
                     </form>
                </div>
            
      
    <div id="modal1" class="modal">
    
        <div class="row margin">
          <div class="input-field col s12 ">
              <i class="material-icons prefix">contact_mail</i>
            <input id="user_email" type="email" class="validate">
            <label for="user_email" class="center-align">Email</label>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
              <i class="material-icons prefix">https</i>
            <input id="user_passw" type="password" class="validate">
            <label for="user_passw">Password</label>
          </div>
        </div>
   
    <div class="modal-footer">
      <a href="#" class="modal-close blue btn ">login</a>
    </div>
  </div>
  </div>
     <!-- jquery -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
    $(document).ready(function () {
    $('.modal').modal();
  });
    $(document).ready(function(){
		setTimeout(function() {
			$(".load").fadeOut("slow");
		}, 1000);			
	});		
  </script>
  <style>
  .load{
  position:fixed;
  left:0;
  top:0;
  width:100%;
  height:100%;
  z-index:9999;
  background:url(assets/images/load.gif) 50% no-repeat rgba(0, 0, 0, 0.5);
}
  #register-page{
    padding-left: 15%;
    
}
.card-panel{
    opacity: 0.90;
    
    border-radius: 25px;
    border-color: 22px#000;
}
#button{
    border-radius: 25px;
}
body{
    background-image: linear-gradient(to bottom, #7351df, #4572f2, #008dfc, #00a4fd, #00b8f9, #00c3f7, #00cdf2, #1dd6eb, #00dbdf, #00dece, #00e1b7, #2ce29b);
}
input{
    background-color: blueviolet
}
  
  </style>
</body>

</html>