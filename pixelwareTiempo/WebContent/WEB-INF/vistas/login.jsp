<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="appTiempo">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pixelware</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
</head>
<body ng-controller="appController">
	<%-- Incluir la pagina que contiene los enlaces --%>
	<jsp:include page="cabecera.jsp" />

	
  <div class="container">    
   <!-- formulario centrado  links no funcional por falta de implementacion -->
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Login</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Contraseña perdida?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form" ng-submit="enviar(usuario)">
                                   
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-username"  type="text" class="form-control" name="username" placeholder="username or email" ng-model="login.nombre">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="login-password"  type="password" class="form-control" name="password" placeholder="password" ng-model="login.pass">
                                    </div>
                                    

                                



                                <div style="margin-top:10px" class="form-group">
                                

                                    <div class="col-sm-12 controls">
                                   
                                    
                                    <button id="btn-login" ng-click="login()" class="btn btn-success">Login</button>
                                    
                                

                                    </div>
                                </div>


                              
                            </form>     



                        </div>                     
                    </div>  
       </div>
       </div>
	<!-- AngularJS -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.8/angular.min.js"></script>


	<script type="text/javascript">

	var servicios = angular.module("appTiempo", []);
	
	// CreaciÃ³n del controlador principal
	var controlador = servicios.controller("appController",
			["$scope", "$log", "$http", 
				function($scope, $log, $http) {
				//futura function($scope, $log, $http) para adaptacion a nodejs con mongodb
				alert("Esta pagina solo es visual " );
				
				
				$scope.loginForm=[
					{
						nombreUser: "nombre",
						contraseña: "pass"
					}];
				
				
				$scope.login = function (){
				
					$scope.loginForm.push(
							{
								nombreUser: $scope.login.nombre,
								contraseña: $scope.login.pass
								
							});
					
					//queria conectar con mongo db usando nodejs
					//console.log($scope.loginForm.nombreUser+" "+$scope.loginForm.contraseña);
					
				}
				
				
					
	}]);

		
		



			
			
		

	</script>
</body>
</html>