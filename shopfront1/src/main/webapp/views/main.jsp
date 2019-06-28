<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- google icons -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<title>Insert title here</title>
<!-- Compiled and minified CSS -->
</head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<body>
	<link rel="stylesheet" href="./src/docs/resources/css/home.css">
	<div id="navb" class="navbar-fixed ">
		<script src="http://code.jquery.com/jquery-[latest].min.js"></script>
		<nav>
			<script src="./src/docs/resources/js/jquery.slidereveal.min.js"></script>
			<div class="nav-wrapper">
				<a href="#!" class="brand-logo"><img id="logo"
					src="/asserts/images/cloud1.png"
					style="width: 20%; padding-left: 2px;" alt=""></a> <img
					class="lo" src="./name logo.png" alt="">
				<ul class="right hide-on-med-and-down">
					<li>
						<div class="center row">
							<div class="col s12 l12 ">
								<div class="row" id="topbarsearch">
									<div class="input-field col  s12 white-text">
										<i class="white-text material-icons prefix">search</i> <input
											type="text" placeholder="search" id="autocomplete-input"
											class="autocomplete white-text">
									</div>
								</div>
							</div>
						</div>
					</li>

					<!--  <li><a href="home">home</a></li>
                   
                    <li><a href="regester">regester</a></li> -->
                    
					<security:authorize access="isAnonymous()">
						<li><a class="modal-trigger" href="login_page">login</a></li>
					</security:authorize>
					<security:authorize access="isAuthenticated()">
						<li><a class="modal-trigger" href="logout">logout</a></li>
					</security:authorize>
					<security:authorize access="hasAuthority('ADMIN')">
						<li><a href="admin">manageProducts</a></li>
					</security:authorize>
					<security:authorize access="hasAuthority('USER')">
						<li><a href="#"><i class="material-icons">shopping_cart</i></a></li>
					</security:authorize>

					<li><a class="trigger-side-nav" href="#"><i
							class="material-icons">menu</i></a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="side" close="true">
		<div id="test-slider"></div>
	</div>
	<div class="carousel carousel-slider" data-indicators="true">
		<a class="carousel-item" href="#one!"><img
			src="assets/images/lap.jpg" height="100%"></a> <a
			class="carousel-item" href="#two!"><img
			src="assets/images/processers.jpg" height="100%"></a> <a
			class="carousel-item" href="#three!"><img
			src="assets/images/hp-omen-15-5116tx.jpg" height="100%"></a> <a
			class="carousel-item" href="#four!"><img
			src="assets/images/vivo.jpg" height="100%"></a>
	</div>
	<div>
		<div id="we">
			<ul class="collapsible z-depth-4 truncate">
				<li>
					<div class="collapsible-header">
						<i class="material-icons">filter_drama</i>laptops
					</div>
					<div class="collapsible-body">
						<span><ul>
								<li><a href="">hp</a></li>
								<li><a href="">dell</a></li>
							</ul> </span>
					</div>
				</li>
				<li>
					<div class="collapsible-header">
						<i class="material-icons">place</i>processers
					</div>
					<div class="collapsible-body">
						<span>Lorem </span>
					</div>
				</li>
				<li>
					<div class="collapsible-header">
						<i class="material-icons">whatshot</i>Third
					</div>
					<div class="collapsible-body">
						<span>Lorem </span>
					</div>
				</li>
			</ul>
		</div>

		<div class="fixed-action-btn trigger-side-nav">
			<a class="btn-floating btn-large blue"> <i
				class="large material-icons">filter_list</i>
			</a>

		</div>
		<h2
			style="color: rgb(9, 107, 163); font-family: 'Kaushan Script', cursive;">products</h2>
		<div class="row">
			<div class="col s12 l4">
				<div class="hoverable card" style="height: 400px;">
					<div class="card-image" style="height: 70%;">
						<img src="./images.jpg" style="height: 100%;"> <span
							class="card-title">processers</span> <a
							class="btn-floating halfway-fab waves-effect waves-light red"><i
							class="material-icons">add_shopping_cart</i></a>
					</div>
					<div class="card-content">
						<a href="#" class="waves-effect waves-teal blue btn-flat">button</a>
					</div>
				</div>
			</div>
			<div class="col s12 l4">
				<div class="hoverable card">
					<div class="card-image">
						<img src="./processers.jpg" height="100%"> <span
							class="card-title">Card Title</span> <a
							class="btn-floating halfway-fab waves-effect pluse waves-light red"><i
							class="material-icons">add_shopping_cart</i></a>
					</div>
					<div class="card-content">
						<a href="#" class="waves-effect waves-teal blue btn-flat">button</a>
					</div>
				</div>
			</div>
			<div class="col s12 l4">
				<div class="hoverable card">
					<div class="card-image">
						<img src="./lap.jpg" height="100%"> <span class="card-title">Card
							Title</span> <a
							class="btn-floating halfway-fab waves-effect pluse waves-light red"><i
							class="material-icons">add_shopping_cart</i></a>
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

		<div class="row margin">
			<div class="input-field col s12 ">
				<i class="material-icons prefix">contact_mail</i> <input
					id="user_email" type="email" class="validate"> <label
					for="user_email" class="center-align">Email</label>
			</div>
		</div>
		<div class="row margin">
			<div class="input-field col s12">
				<i class="material-icons prefix">https</i> <input id="user_passw"
					type="password" class="validate"> <label for="user_passw">Password</label>
			</div>
		</div>
		</form>
		<a class="ho" href="#">forget password???</a> <br> <a class="ho"
			href="./regester.html">Are you a new uer??</a>
		<div class="modal-footer">
			<a href="./index1.html" class="modal-close blue btn ">login</a>
		</div>
	</div>
	</div>
	<br>



	<!-- jquery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- Compiled and minified JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script src="./src/docs/resources/js/home.js"></script>
	<script>
		$(document).scroll(function() {
			$('#logo').css({
				width : $(this).scrollTop() > 20 ? "10%" : "20%"
			});
			$('#navb').css({
				width : $(this).scrollTop() > 50 ? "10%" : "50%"
			});

		});
		$(document).ready(function() {
			setTimeout(function() {
				$(".load").fadeOut("slow");
			}, 1000);
		});
	</script>
</body>
<style>
nav {
	background-color: rgb(51, 155, 247);
}
</style>
</html>