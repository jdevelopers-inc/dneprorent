 <%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"
         session="true" %>
 <%@include file="/WEB-INF/jsp/headers/header.jsp"%>   
							
<div style="float: left; margin: 3px;">
					<img src="/img/apartment-rent-003.jpg">
</div>	
		
<div style="float: left; width: 400px;">		
					<b>Договора аренды</b>: 
			
			<a href="/export/rent-standart.doc"><ul id="icons">
				<li class="ui-state-default ui-corner-all" title="Info">
					<span class="ui-icon ui-icon-document"></span>
				</li>
			</ul>Типовой договор аренды</a><br/>		
			<a href="/export/rent-appartment.doc"><ul id="icons">
				<li class="ui-state-default ui-corner-all" title="Info">
					<span class="ui-icon ui-icon-document"></span>
				</li>
			</ul> Аренда помещения</a><br/>
			<a href="/export/rent-house.doc"><ul id="icons">
				<li class="ui-state-default ui-corner-all" title="Info">
					<span class="ui-icon ui-icon-document"></span>
				</li>
			</ul> Аренда дома, помещения</a>
</div>

<%@include file="/WEB-INF/jsp/footers/footer.jsp"%>