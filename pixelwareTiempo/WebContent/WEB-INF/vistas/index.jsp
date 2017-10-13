<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="appTiempo">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pixelware</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body ng-controller="appController" >
	<%-- Incluir la pagina que contiene los enlaces --%>
	<jsp:include page="cabecera.jsp" />
	<div class="col-xs-12">
		<div class="center-block">

			<h1>Datos de temperatura</h1>

			<div class="input-group">
				<span class="input-group-addon">Ubicacion</span> <input
					ng-model="localization">
				<button ng-click="sendURL()">Buscar</button>
			</div>


			<div class="col-xs-3">
				<table class="table table-hover" ngCloak>
					<tr>
						<th>Ciudad:</th>
						<th>{{geo.location.name}}</th>
					</tr>
					<tr>
						<td>Region:</td>
						<td>{{geo.location.region}}</td>
					</tr>
					<tr>
						<td>Pais:</td>
						<td>{{geo.location.country}}</td>
					</tr>
					<tr>
						<td>Temperatura Cº:</td>
						<td>{{geo.current.temp_c}}</td>
					</tr>
					<tr>
						<td>Temperatura Fº:</td>
						<td>{{geo.current.temp_f}}</td>

					</tr>



				</table>

			</div>

			<div class="col-xs-3 col-md-5">
				<table class="table table-hover" ngCloak>
					<tr>
						<td>Ciudad</td>
						<td>Region</td>
						<td>Pais</td>
						<td>Temperatura C</td>
						<td>Temperatura F</td>
					</tr>
					<!-- | orderBy:'-' | limitTo:10" ordncion invertida y con limite 10 -->
					<tr ng-repeat="temperatura in lista | orderBy:'-' | limitTo:10">
						<td>{{temperatura.ciudad}}</td>
						<td>{{temperatura.region}}</td>
						<td>{{temperatura.pais}}</td>
						<td>{{temperatura.temperaturaC}}</td>
						<td>{{temperatura.temperaturaF}}</td>
						<td><img ng-src="{{temperatura.ico}}" /></td>
					</tr>

				</table>
			</div>

		</div>

	</div>


	<!-- AngularJS -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.8/angular.min.js"></script>


	<script type="text/javascript">

		var servicios = angular.module("appTiempo", []);
		
		// CreaciÃ³n del controlador principal
		var controlador = servicios.controller("appController",
				["$scope", "$log", "$http", 
					function($scope, $log, $http) {
					
					$scope.datos = [];
					
					$scope.geo = {};
					
					
					$scope.lista=[
						{
						}];
					
					$scope.listaGenerada = function () {
						//lista de ciudades visitadas
						$scope.lista.push(
								{
									ciudad:$scope.geo.location.name,
									region: $scope.geo.location.region,
									pais: $scope.geo.location.country,
									temperaturaC: $scope.geo.current.temp_c,
									temperaturaF: $scope.geo.current.temp_f,
									ico: $scope.geo.current.condition.icon
								});
						
						
					}
					
					
					
					$scope.sendURL = function (){
					/*
					*   mirar en consola
					*	console.log("http://api.apixu.com/v1/current.json?key=2a7216e2f84b439185b110910170610&q="+$scope.localolization)
					*
					*	PeticiÃ³n GET con parametro para la localizacion
					*/
			$http({
						method: 'GET',
						url: 'http://api.apixu.com/v1/current.json?key=2a7216e2f84b439185b110910170610&q='+$scope.localization
					}).success(function(datos, status, headers, config) { 
						
						
						
						$scope.geo = datos;
						
						
						$scope.listaGenerada($scope.geo);
						
						//VERIFICCAON
						//console.log("funciona envio");
						
					}).error(function(datos, status, headers, config) {
						//sacar por pantalla el error y estatus del servicio
						alert("Error en carga de datos $http\n" + 
								"CÃ³digo de error HTTP: " + status);
					});
					
					}
					
				}]);

		
		



			
			
		

	</script>

</body>
</html>