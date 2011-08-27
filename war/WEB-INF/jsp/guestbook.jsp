 <%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"
         session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/WEB-INF/jsp/headers/header.jsp"%>  

<div class="ui-widget-content ui-corner-bottom " style="height: 380px; padding: 3px; overflow: auto; text-align: left; ">

<script type="text/javascript">
	      var PUBLIC_KEY = "6LdSh8cSAAAAAL9RBSsg17DDL-tvoPCM-pgp8a9_",
		  xmlhttp,
		  postUrl="/guestbook";

	      function PreloadCaptcha() { showRecaptcha(); }
	      
	      function showRecaptcha() {
		  Recaptcha.create(PUBLIC_KEY, "dynamic_recaptcha_1", {
			theme: "white",
			lang: "ru",
			callback: Recaptcha.focus_response_field
		  });
		}  
		
	      function submitFormData(name){  	 
		    xmlhttp=null;
		    if (window.XMLHttpRequest){ xmlhttp=new XMLHttpRequest(); }
		    else if (window.ActiveXObject){ xmlhttp=new ActiveXObject("Microsoft.XMLHTTP"); }
		    if (xmlhttp!=null){
		      xmlhttp.onreadystatechange=state_Change;
		      var url = postUrl;
		      var params = "name="+name+"&recaptcha_challenge_field=" + Recaptcha.get_challenge() + "&recaptcha_response_field="+Recaptcha.get_response();
		      var status = document.getElementById("status");
		      status.innerHTML = "<img src='img/ajax-loader.gif'><b>Отправка формы. Пожалуйста подождите..</b>";
		      xmlhttp.open("POST",url,true);
		      xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		      xmlhttp.setRequestHeader("Content-length", params.length);
		      xmlhttp.setRequestHeader("Connection", "close");  
		      xmlhttp.send(params);
		      }
		    else {alert("Your browser does not support XMLHTTP."); }
	      }
		
	      function state_Change(){
		  if (xmlhttp.readyState==4){// 4 = "loaded"
		      if (xmlhttp.status==200){// 200 = "OK"
			var status = document.getElementById("status");
			status.innerHTML = xmlhttp.responseText;;
			Recaptcha.reload();
			setTimeout(function() { status.innerHTML = ""; }, 3000);   
		      }else{
			  var status = document.getElementById("status");
			  status.innerHTML = xmlhttp.responseText;;
			  Recaptcha.reload();
			  setTimeout(function() { status.innerHTML = ""; }, 3000);   
		      }
		  }
	      }
</script>
<img src="/img/guestbook.jpg" align="right">
<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>Уважаемые посетители</b>, в этом разделе прошу оставлять свои мнения, пожелания, предложения и отзывы.
</p><br/>
<!-- div style="width: auto; border-width: 1px; border-style: dashed; border-color: grey; " -->
<form action="/sign" method="post">
    <table border="0" cellspacing="1" cellpadding="1">
      <tr><td>Имя: <input name="user" type="text"></td></tr>
      <tr><td>Обратная связь (контакты): <input name="callback" type="text"></td></tr>
      <tr><td><textarea name="content" rows="3" cols="50"></textarea></td></tr>
      <tr><td><div id="dynamic_recaptcha_1"></div></td></tr>
      <tr><td><input type="submit" value="Оставить отзыв" /></td></tr>
    </table>
</form>
<!-- /div -->
<br/><hr/>
<!-- вывод всех отзывов -->
</div>
<%@include file="/WEB-INF/jsp/footers/footer.jsp"%>