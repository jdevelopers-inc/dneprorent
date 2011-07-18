<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="UTF-8" />
     <link rel="shortcut icon" href="/img/favicon.gif" />
     <link rel="icon" href="/img/favicon.gif" type="image/x-icon" />
     <link rel="stylesheet" href="/js/jquery/ui/themes/base/jquery.ui.all.css" 
           type="text/css" media="all" />
     <title>Аренда недвижимости в Днепропетровске</title>
     <script src="/js/jquery/jquery-core.js"></script>
     <script src="/js/jquery/ui/ui/jquery-ui-1.8.14.custom.js"></script>
     <script>
      $(function() {
 		$( "#tabs" ).tabs();
 	  });
 	</script>
     </script>
  </head>
<body>
  <div class="ui-widget">
    <div class="ui-widget-header ui-corner-top">    
     <span style="font-size: 16pt;">&nbsp;&nbsp;&nbsp;Аренда недвиживости в Днепропетровске</span>
    </div> 
    <div class="ui-widget-content">
		 <div id="tabs">
			<ul>
				<li><a href="#tabs-1">Главная</a></li>
				<li><a href="#tabs-2">Сдам (0)</a></li>
				<li><a href="#tabs-3">Сниму (0)</a></li>
			</ul>
			<div id="tabs-1">				
				<div><img src="/img/apartment-rent-002.jpg"></div>
			</div>
			<div id="tabs-2">
				<p>Предложения: ...</p>
			</div>
			<div id="tabs-3">
				<p>Предложения: ...</p>
			</div>
		</div>
    </div>
  </div>
  <center><img src="http://code.google.com/appengine/images/appengine-noborder-120x30.gif"
alt="Технология Google App Engine" /></center>
</body>
</html>