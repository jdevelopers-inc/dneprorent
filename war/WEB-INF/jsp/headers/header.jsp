<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"
         session="true" %>
<html>
  <head>
     <meta charset="UTF-8" />
     <title>Аренда недвижимости в Днепропетровске</title>
     
     <link rel="shortcut icon" href="/img/favicon.gif" />
     <link rel="icon" href="/img/favicon.gif" type="image/x-icon" />
     <link rel="stylesheet" href="/js/jquery/ui/themes/base/jquery.ui.all.css" type="text/css" media="all" />
     <link rel="stylesheet" type="text/css" href="/css/main.css" />
        
     <script src="/js/jquery/jquery-core.js"></script>
     <script src="/js/jquery/ui/ui/jquery-ui-1.8.14.custom.js"></script>
     <script src="/js/main.js"></script> 
     
     <script type="text/javascript" src="http://api.recaptcha.net/js/recaptcha_ajax.js"></script>     
  </head>
<body>


<div class="ui-widget ui-helper-clearfix header">
      <img align="left" src="/img/header-img.jpg" >
      <div>
        <font style="vertical-align: middle; color: white; font-size: 15pt; 
            font-family: Arial; font-weight: bold;">Аренда недвижимости в Днепропетровске
        </font>
      </div>
            <font style="font-size: 8pt;">Пользователь:</font> 
               <input style="width: 100px;" class="ui-corner-all">
            <font style="font-size: 8pt;">Пароль:</font> 
               <input style="width: 100px;" type="password" class="ui-corner-all">
            <input type="button" class="fg-button ui-state-default ui-corner-all" value="Войти">
            <br/><font style="font-size: 9pt;"><a href="">Забыли пароль</a>?&nbsp;<a href="">Регистрация</a></font>            
</div>
   
<div class="container">
	  <div class="ui-widget content"> 
	  
	      <div class="fg-toolbar ui-widget-header ui-helper-clearfix ui-corner-top"> 
		       <div class="fg-buttonset fg-buttonset-single">
					<a href="/"><button class="fg-button ui-state-default ui-corner-left">Главная</button></a>
					<a href="/input"><button class="fg-button ui-state-default ">Добавить объявлениие</button></a>			
					<a href="/view"><button class="fg-button ui-state-default ui-corner-right">Обзор</button></a>
					<a href="/guestbook"><button class="fg-button ui-state-default ui-corner-right">Отзывы</button></a>
					<span style="display: none;">main menu</span>
				</div> 
	      </div>