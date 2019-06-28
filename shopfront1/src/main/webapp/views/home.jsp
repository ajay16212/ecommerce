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
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <link rel="stylesheet" href="assets/css/home.css">
  <script src="http://code.jquery.com/jquery-[latest].min.js"></script>
  <script src="./src/docs/resources/js/jquery.slidereveal.min.js"></script>
  <title>home</title>

</head>

<body>
<div class="load"></div>
  <div  id="navb"class="navbar-fixed ">
    <nav>
      <div class="nav-wrapper">
        <a href="#!" class="brand-logo"><img id="logo" src="assets/images/cloud1.png" style="width:20%;padding-left: 2px;" alt=""></a>
        <img class="lo" src="assets/images/name logo.png" alt="">
        <ul class="right hide-on-med-and-down">
          <li>
            <div class="center row">
              <div class="col s12 l12 ">
                <div class="row" id="topbarsearch">
                  <div class="input-field col  s12 white-text">
                    <i class="white-text material-icons prefix">search</i>
                    <input type="text" placeholder="search" id="autocomplete-input" class="autocomplete white-text">
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li><a href="login_page">login</a></li>
          <li><a href="regester1">register</a></li>
          <li><a class="trigger-side-nav" href="#"><i class="material-icons">menu</i></a></li>
        </ul>
      </div>
    </nav>
  </div>

  <div class="side" close="true">
  </div>
  <div class="carousel carousel-slider"  data-indicators="true">
    <a class="carousel-item" href="#one!"><img src="assets/images/lap.jpg" height="100%"></a>
    <a class="carousel-item" href="#two!"><img src="assets/images/processers.jpg" height="100%"></a>
    <a class="carousel-item" href="#three!"><img src="assets/images/hp-omen-15-5116tx.jpg" height="100%"></a>
    <a class="carousel-item" href="#four!"><img src="assets/images/vivo.jpg" height="100%"></a>
  </div>
<div>
  <h2 style="color:rgb(9, 107, 163); font-family: 'Kaushan Script', cursive;">offers</h2>
  
  <c:forEach items="" var="">
  
  </c:forEach>
  
  <div class="row">
    <div class="col s12 l4">
      <div class="hoverable card" style="height:400px;">
        <div class="card-image" style="height:70%;">
          <img src="assets/images/mobile.jpg" style=" height:100%;">
          <span class="card-title">processers</span>
          <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add_shopping_cart</i></a>
        </div>
        <div class="card-content">
          <a href="#" class="waves-effect waves-teal blue btn-flat">button</a>
        </div>
      </div>
    </div>
    <div class="col s12 l4">
      <div class="hoverable card">
        <div class="card-image">
          <img src="assets/images/mobile.jpg" height="100%">
          <span class="card-title">headsets</span>
          <a class="btn-floating halfway-fab waves-effect pluse waves-light red"><i class="material-icons">add_shopping_cart</i></a>
        </div>
        <div class="card-content">
          <a href="#" class="waves-effect waves-teal blue btn-flat">button</a>
        </div>
      </div>
    </div>
    <div class="col s12 l4">
      <div class="hoverable card">
        <div class="card-image">
          <img src="assets/images/lap.jpg" height="100%">
          <span class="card-title">laptops</span>
          <a class="btn-floating halfway-fab waves-effect pluse waves-light red"><i class="material-icons">add_shopping_cart</i></a>
        </div>
        <div class="card-content">
          <a href="#" class="waves-effect waves-teal blue btn-flat">button</a>
        </div>
      </div>
    </div>
  </div>  

</div>
  
  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <form action="home" method="post">
          <div class="row margin">
            <div class="input-field col s12 ">
                <i class="material-icons prefix">contact_mail</i>
              <input for="email"name="email" id="user_email" type="email" class="validate">
              <label  class="center-align">Email</label>
            </div>
          </div>
          <div class="row margin">
            <div class="input-field col s12">
                <i class="material-icons prefix">https</i>
              <input for="password" name="password"id="user_passw" type="password" class="validate">
              <label >Password</label>
            </div>
          </div>
      
      <a  class="ho"href="#">forget password???</a>
      <br>
      <a class="ho" href="regester1">Are you a new user??</a>
      <div class="modal-footer">
      <input type="submit"class="modal-close blue btn" value="login"/>
      
       </div>
        </form>
     </div>
    <br>



    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="./src/docs/resources/js/home.js"></script>
    <script>
      $(document).scroll(function () {
        $('#logo').css({ width: $(this).scrollTop() > 20 ? "10%" : "20%" });
        $('#nav').css({ width: $(this).scrollTop() > 50 ? "10%" : "50%" });

      });
      
      <!--script in home.js-->
      $('.trigger-side-nav').click(function () {
    	    
    	    if ($('.side').attr("close") === "true"){
    	        $('.side').css({
    	            left: "0%",
    	        })
    	    setTimeout(function () {
    	        $('.side').css({
    	            transtion: "1s",
    	            left: "-3%"
    	        })
    	        $('.side').attr("close", "false");
    	    },800)
    	}else {
    	    $('.side').css({
    	        left:"-28%",
    	    })
    	    $('.side').attr("close","true");

    	}
    	});
    	$('.carousel.carousel-slider').carousel({
    	    indicators: true,

    	  });
    	  setInterval(function () {
    	    $('.carousel.carousel-slider').carousel('next');
    	  }, 2000);
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
}</style>
</body>

</html>