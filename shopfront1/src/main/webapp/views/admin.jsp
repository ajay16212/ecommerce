<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- google icons -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="./src/docs/resources/css/home.css">
<script src="http://code.jquery.com/jquery-[latest].min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Lobster+Two"
	rel="stylesheet">
<script src="./src/docs/resources/js/jquery.slidereveal.min.js"></script>
<link rel="stylesheet" href="./css/manage.css">

<title>manage</title>
</head>
<body>
 <div id="navb" class="navbar-fixed ">
        <nav>
            <div class="nav-wrapper">
                <a href="#!" class="brand-logo"><img id="logo" src="/asserts/images/cloud1.png" style="width:20%;padding-left: 2px;"
                        alt=""></a>
                <img class="lo" src="./name logo.png" alt="">
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
                    <li><a href="#"><i class="material-icons">shopping_cart</i></a></li>
                    <li><a href="home">home</a></li>
                   
                    <li><a href="regester">regester</a></li>
                    <security:authorize access="isAnonymous()">
                     <li><a class="modal-trigger" href="login_page">login</a></li>
                    </security:authorize>
                     <security:authorize access="isAuthenticated()">
                     <li><a class="modal-trigger" href="logout">logout</a></li>
                    </security:authorize>
                    <li><a class="trigger-side-nav" href="#"><i class="material-icons">menu</i></a></li>
                </ul>
            </div>
        </nav>
    </div>
	<h1>admin page</h1>
	<div id="cen" class="row">
		<div class="col s12 m6 l10">
			<div class="card z-depth-5">
				<div class="head">
					<h1 id="fo">manage products</h1>
					<br>
				</div>
				<div id="form" class="row">
					<form class="col s12" action="/shopfront1/sucess" method="post"
						enctype=multipart/form-data>
						<div class="input-field col s12 m6 l10">
							<i class="material-icons prefix">add_to_photos</i> <input
								id="last_name" name="productName" type="text" class="validate">
							<label for="productName">product Name</label>
						</div>

						<div class="input-field col s12 m6 l10">
							<i class="material-icons prefix">assistant_photo</i> <input
								id="last_name" name="BrandName" type="text" class="validate">
							<label for="BrandName">brand name</label>
						</div>
						<div class="input-field col s12 m6 l10">
							<i class="material-icons prefix">art_track</i> <input
								id="last_name" name="Description" type="text" class="validate">
							<label for="Description">description</label>
						</div>
						<div class="input-field col s12 m6 l10">
							<i class="material-icons prefix">style</i> <input id="price"
								name="price" type="text" class="validate"> <label
								for="price">unit peice</label>
						</div>
						<div class="input-field col s12 m6 l10">
							<i class="material-icons prefix">clear_all</i> <input
								id="last_name" name="quantity[]" type="text" class="validate">
							<label for="quantity[]">quantity</label>
						</div>
						
							<div class="file-field input-field col s12 m6 l10">
								<div id="btn" class="btn">
									<span>upload</span> <input name="file" path="file" for="file"type="file">
								</div>
								<div class="file-path-wrapper" onload="myFunction()">
									<input type="file" id="myFile" multiple size="50" for="file" name="file" onchange="myFunction()"
										placeholder="Upload file">
										
<p id="demo"></p>
  
<script>
function myFunction(){
  var x = document.getElementById("myFile");
  var txt = "";
  if ('files' in x) {
    if (x.files.length == 0) {
      txt = "Select one or more files.";
    } else {
      for (var i = 0; i < x.files.length; i++) {
        txt += "<br><strong>" + (i+1) + ". file</strong><br>";
        var file = x.files[i];
        if ('name' in file) {
          txt += "name: " + file.name + "<br>";
        }
        if ('size' in file) {
          txt += "size: " + file.size + " bytes <br>";
        }
      }
    }
  } 
  else {
    if (x.value == "") {
      txt += "Select one or more files.";
    } else {
      txt += "The files property is not supported by your browser!";
      txt  += "<br>The path of the selected file: " + x.value; // If the browser does not support the files property, it will return the path of the selected file instead. 
    }
  }
  document.getElementById("demo").innerHTML = txt;
}
</script>
										
								</div>
							</div>
						
				</div>
				<input style="border-radius: 25px; left: 40%;" type="submit"
						name="submit" value="Save"
						class="waves-effect waves-light btn green s8 m7 l10" class="material-icons right="send">
						 <br> <br>
				<br>
				</form>
			</div>
		</div>
	</div>


</body>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		M.updateTextFields();
	});
</script>
<style>
nav{
    background-color: rgb(51, 155, 247);
}
html, body {
	width: 100%;
	height: 100%;
}

#cen {
	padding-left: 15%;
	padding-top: 1%;
	border-color: rgb(255, 0, 34) 20px;
}

.head {
	background-color: rgb(17, 235, 82);;
	border-radius: 15px;
}

#fo {
	color: white;
	font-family: 'Lobster Two', cursive;
	padding-left: 25%;
}

.card {
	border-radius: 15px;
}

#form {
	padding-left: 100px;
}

.btn {
	background-color: rgb(51, 155, 247);
}

#btn:hover {
	background-color: black !important;
	transition: 1s;
}
</style>
</body>
</html>