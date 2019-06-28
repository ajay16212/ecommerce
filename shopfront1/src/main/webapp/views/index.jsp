<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CloudsCart</title>
<link rel="stylesheet" href="assets/css/index.css">
<link href='https://fonts.googleapis.com/css?family=Lato|Roboto:400,900' rel='stylesheet' type='text/css'>
</head>

<body>
<div class="load"></div>
    <div id="clouds">
           
        <div class="cloud x1"></div>
        <!-- Time for multiple clouds to dance around -->
        <div class="cloud x2"></div>
        <div class="cloud x3"></div>
        <img class="swingimage" src="assets/images/name logo.png"alt="a" >
        <div class="cloud x4"></div>
        <!-- button -->
        <div class="container" id="ss">
                <a href="home" class="btn">
                <svg width="277" height="62">
                  <defs>
                      <linearGradient id="grad1">
                          <stop offset="0%" stop-color="#508CED"/>
                          <stop offset="100%" stop-color="#4DE850" />
                      </linearGradient>
                  </defs>
                   <rect x="5" y="5" rx="25" fill="none" stroke="url(#grad1)" width="266" height="50"></rect>
                </svg>
                <!--<span>Voir mes réalisations</span>-->
                  <span>click to explore>></span>
              </a>
              </div>
        
        <div class="cloud x5"></div>
    </div>
    <!-- 	Disregard --><a style="position: fixed; bottom: 10px; right: 10px;color:#CCC" href="https://plus.google.com/111052275277622928148?rel=me">Google+</a>
    <div class="ocean">
        <div class="wave"></div>
        <div class="wave"></div>
    </div>
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
    
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