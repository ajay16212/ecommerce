<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- google icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="./src/docs/resources/css/home.css">
    <script src="http://code.jquery.com/jquery-[latest].min.js"></script>
    <script src="./src/docs/resources/js/jquery.slidereveal.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div id="navb" class="navbar-fixed ">
        <nav>
            <div class="nav-wrapper">
                <a href="#!" class="brand-logo"><img id="logo" src="assets/images/cloud1.png" style="width:20%;padding-left: 2px;"
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
                   
                    <li><a href="regester1">regester</a></li>
                    <li><a class="trigger-side-nav" href="#"><i class="material-icons">menu</i></a></li>
                </ul>
            </div>
        </nav>
    </div>
    <!-- form login -->
    <div class="row" id="card">
        <div class="col s12 m6 l9" >
            <div class="card" id="radius">
                <div class="card-content ">
                    <span class="card-title">login</span>
                    <div class="row">
                        <div class="col s12 m6 l9">
                            <form action="login" method="post">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">person</i>
                                    <input id="email" name="email"type="email" class="validate">
                                    <label for="email">Email</label>
                                    <span class="helper-text" data-error="wrong" data-success="right">Helper text</span>
                                </div>

                                <div class="row">
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">lock</i>
                                        <input id="password"name="password" type="password" class="validate">
                                        <label for="password">Password</label>
                                    </div>
                                </div>
                                <button class="btn waves-effect waves-light" type="submit" name="action">Submit
                                    <i class="material-icons right">send</i>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>
</body>
<style>
    body{
        background-image: url("assets/images/bg-login.jpg");
       background-position: center;
       background-repeat: no-repeat;
       background-size: cover;
         
    }
    #card {
        padding-left: 20%;
        padding-top: 10%;
    }
    #radius{
        border-radius: 25px ;
        box-shadow: 2px 2px 60px rgb(247, 101, 5);
    }
    nav{
    background-color: rgb(51, 155, 247);
}
</style>
</html>