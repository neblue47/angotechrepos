<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<html lang="pt">  
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>.: Entrar no Sistema :.</title>  
 <link rel="stylesheet" type="text/css" href="css/login-css.css"/>
 
 <!-- Bootstrap -->
 <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
 <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
 <link rel="stylesheet" type="text/css" href="css/fonts/stylesheet.css">
 
<!-- /Bootstrap -->

<!--  Favicon -->

<link rel="shortcut icon" type="image/x-icon" href="icons/gh-favicon.ico">

<!--  Favicon -->

</head>
<body class="body">
	<div class="bg_log" id="tela_login">
		<div class="container">
		  <div class="row">
			  <div class="col-md-4 col-md-offset-4">
			  	<img alt="Logo GestHosp" src="img/Log-gesthosp.jpg" class="img-responsive" border="0">		  
			   <div class="panel panel-default">
                <div class="panel-heading"><span class="title">Entrar no Sistema</span></div>                
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="post" action="LoginController">
                     <c:if test="${not empty mensLogin }">
						<div class="alert alert-danger" role="alert">
						  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
						  <span class="sr-only">Error:</span>
						  ${"Nome do Utilizador ou Senha Inválida!"} 
						</div>				      
							      </c:if>
                        <div class="form-group">              
             	        <div class="col-sm-12 left-inner-addon">  
                    			<i class="fa fa-user"></i>              
                        <input type="text" name="user" id="userId" class="form-control" placeholder="Utilizador" required="required" autocomplete="off">
                            </div>
                 </div>
                       <div class="form-group">                   
			             <div class="col-sm-12 left-inner-addon">
                            	<i class="fa fa-lock"></i>                        		
                                <input type="password" name="senha" class="form-control" placeholder="Senha" onkeypress="checar_caps_lock(event)"  required="required" autocomplete="off">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="check_box">
                                	 <label>
                                        <input type="checkbox" id="checkLembra" class="" onchange="lembrarMe()"><span>Lembrar-me</span>
                                     </label>
                                     <div id="aviso_caps_lock" style="visibility: hidden">CAPS LOCK ATIVADO</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <div class="col-sm-12">
                            <button type="submit" class="btn btn-success btn-sm">
							    <span class="fa fa-sign-in" aria-hidden="true"></span> Entrar
						    </button>                                
                            <button type="reset" class="btn btn-default btn-sm">
                                 <span class="fa fa-eraser" aria-hidden="true"></span> Limpar
                             </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>   
			  </div>
			</div><!-- /Row -->
		  </div><!-- /Container -->	  
		  <footer class="footer">
		      <div class="container">
			      <div class="row">
					  <div class="col-md-4 col-md-offset-4">				      	
				        <p>Angotech &copy; 2016 Todos Direitos Reservados - Versão <span>1.0</span></p>
				      </div>
			      </div>
		      </div>
		  </footer>
	</div><!--/bg_log  -->
	
<script>	
	function checar_caps_lock(ev) 
	{
	var e = ev || window.event;
	codigo_tecla = e.keyCode?e.keyCode:e.which;
	tecla_shift = e.shiftKey?e.shiftKey:((codigo_tecla == 16)?true:false);
	if(((codigo_tecla >= 65 && codigo_tecla <= 90) && !tecla_shift) || ((codigo_tecla >= 97 && codigo_tecla <= 122) && tecla_shift)) {
		document.getElementById('aviso_caps_lock').style.visibility = 'visible';
	}
	else {
		document.getElementById('aviso_caps_lock').style.visibility = 'hidden';
	}
}
	
	function lembrarMe()
	{
		var checkLembra = document.getElementById('checkLembra');
		var userId = document.getElementById('userId');
		if(checkLembra.checked)
		{
			userId.setAttribute('autocomplete','on'); 
		}
		else
		{
			userId.setAttribute('autocomplete','off');	 
		}	 
	}
</script>
</body>
</html>
