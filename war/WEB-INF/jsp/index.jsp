 <%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"
         session="true" %>
<%@include file="/WEB-INF/jsp/headers/header.jsp"%>   
<div class="ui-widget-content ui-corner-bottom " style="height: 380px;">
							
	<div style="float: left; margin: 3px;">
		<img src="/img/apartment-rent-003.jpg">
	</div>	
	
	<div class="ui-corner-all ui-widget-content" 
	     style="text-align: left; float: left; margin: 3px; padding:3px; height: 366px; width: 412px;">
	     <span style="float: left;">
	     <font style="color: gray; font-size: 10pt;">
	       <b>Статистика:</b>
	       <ul>
	         <li>Общее количество объвлений в системе: ${count}
	         <li>Зарезервировано:</li>
	         <li>Свободно:</li>
	       </ul>
	     </font>
	     </span>
	</div>		
	<div class="ui-corner-all ui-widget-content" 
	style="float: left; width: 242px; margin: 3px; padding: 3px; text-align: left;">
	           <a style="font-size: 10pt;" href="/export/rent-standart.doc">
	             <img style="float: left;" align="left" src="/img/msword-ico.jpg">
	               <span style="float: left;">Типовой договор аренды</span>
	           </a><br/><br/>
	           <a style="font-size: 10pt;" href="/export/rent-appartment.doc">
	             <img style="float: left;" align="left" src="/img/msword-ico.jpg">
	               <span style="float: left;">Договор аренды<br/>помещения</span>
	           </a><br/><br/>
	           <a style="font-size: 10pt;" href="/export/rent-house.doc">
	             <img style="float: left;" align="left" src="/img/msword-ico.jpg">
	               <span style="float: left;">Договор аренды дома,<br/>помещения</span>
	           </a>			
	</div>
</div>
<%@include file="/WEB-INF/jsp/footers/footer.jsp"%>