
<%-- Importamos la librería core de JSTL --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- Generamos los enlaces de la aplicación --%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#barraNavegacion">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Temperaturas Pixelware</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<c:url value='/' />">Inicio</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="<c:url value='/' />">Invitado<span class="caret"></span></a>
          <ul class="dropdown-menu">
          <!-- queria implementar en este caso sistema de log out y camio de cuenta-->
            <li><a href="#">log out</a></li>
            <li><a href="#' />">Cambiar cuenta</a></li>

          </ul>
        </li>
        <li><a href="#">pagina 2</a></li>
        <li><a href="#">pagina 3</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value='/signUp' />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="<c:url value='/login' />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  



