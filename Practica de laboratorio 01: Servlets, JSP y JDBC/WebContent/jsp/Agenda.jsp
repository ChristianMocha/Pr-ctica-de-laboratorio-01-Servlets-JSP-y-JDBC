<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.15.0/css/mdb.min.css" rel="stylesheet">
   
    <link href="../css/index.css" rel="stylesheet" type="text/css"/>
    <link href="../css/agenda.css" rel="stylesheet" type="text/css"/>

<title>Insert title here</title>
</head>
<body>


<!--Cabecera-->
<header>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark griss row scrolling-navbar fixed-top">
        <!-- logo -->
        <div class="col-xs-9 col-sm-8 col-md-4 col-mg-4 letter" >
            <a href="index.html" id="prin">
                <img src="../img/2.png" height="50px" width="50px" />
            </a>
        </div>
        <!-- Search form -->
        <form class=" col-xs-12 col-sm-8 col-md-4 col-mg-4 mr-sm-2" id="formulario">
            <input class="form-control my-0 py-1" type="text" placeholder="Search" aria-label="Search">
        </form>
        
        <!-- Datos extras -->
		<form class=" nav navbar-nav nav-flex-icons ml-auto mr-sm-2"  >
			<input class="btn  btn-block" style="color: white; font-size: 15px;" type="submit" name="accion" value="Salir">
		</form> 	

        </ul>
    </nav>
</header>
<!--Cabecera-->

   

<br>
<br>
<br>
<br>
<br>
<br>







<div class="container">

<button class="btn blue-gradient"> <span><i class="fas fa-phone"></i>  </span>   Agregar Telefonos</button>

<br>
<br>

<div class="row row-cols-1 row-cols-md-3">
  <div class="col mb-4">
    <!-- Card -->
    <div class="card">

      <!--Card image-->
      <div class="view overlay">
        <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/Work/4-col/img%20%2821%29.jpg"
          alt="Card image cap">
        <a href="#!">
          <div class="mask rgba-white-slight"></div>
        </a>
      </div>

      <!--Card content-->
      <div class=" card-body elegant-color white-text rounded-bottom">

        <!--Title-->
        <h4 class="card-title">Nombre:</h4>
        <hr class="hr-light">
        <!--Text-->
        <p class="card-text white-text mb-4">Numero:</p>
        <p class="card-text white-text mb-4">Tipo:</p>
        <p class="card-text white-text mb-4">Operadora:</p>
        <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
        <div class="row justify-content-center">
   			<!-- <button type="button" id="ventana1" class="btn btn-light-blue btn-md">Editar</button>
        	<button type="button" class="btn btn-light-blue btn-md">Eliminar</button> -->
        	<a href="#editar" class="btn btn-primary btn-lg btn young-passion-gradient">Editar</a>
        	<a href="#eliminar" class="btn btn-primary btn-lg btn young-passion-gradient">Eliminar</a>
		</div>
       
      </div>

    </div>
  </div>
</div>


</div>



<div class="modal fade " id="editar">
        <div class="modal-dialog ">
            <div class="modal-content md">
                <div class="modal-header">
					<h2 class="modal-title">Editar</h2>
                </div>
                <div class="modal-body">
					<p class="card-text">eliminar</p>  
                </div>
            </div>
        </div>
</div>




   
   
   
   
   
   
   
   
   


 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
    <!-- JQuery -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.15.0/js/mdb.min.js"></script>
    <script src="js/funcion.js"></script>
</body>
</html>