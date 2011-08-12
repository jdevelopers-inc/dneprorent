 <%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"
         session="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>         
<%@ include file="/WEB-INF/jsp/headers/header.jsp"%>   											
<div>   

<div style="color: lightgray;">Общее число объявлений в системе: ${count}</div>         
<form:form method="post" modelAttribute="rentPromo">
<fieldset style="border-style: dashed; border-color: lightgray; border-width: 1px;">  
    <legend style="font-weight:  bold; ">Адрес</legend> 
    <table border="0">
       <tr>
         <td>Улица: <form:input path="address.street" /></td>
         <td><form:errors path="address.street" cssClass="error" /></td>
       </tr>
       <tr>
         <td>Номер дома: <form:input path="address.buildingNumb" /></td>
         <td><form:errors path="address.buildingNumb" cssClass="error" /></td>
       </tr>
       <tr>
         <td>Номер квартиры: <form:input path="address.roomNumb" /></td>
         <td><form:errors path="address.roomNumb" cssClass="error" /></td>
       </tr>
       <tr>
         <td>Почтовый индекс: <form:input path="address.index"/></td>
         <td><form:errors path="address.index" cssClass="error" /></td>
       </tr>
    </table>   
</fieldset>

<fieldset style="border-style: dashed; border-color: lightgray; border-width: 1px;">  
    <legend style="font-weight:  bold; ">Дополнительно</legend>  
    <table>
       <tr>
         <td>Контактный телефон: 
         <form:input path="phones[0]" /></td>        
         <td><form:errors path="phones[0]" cssClass="error" /></td>
       </tr> 
       <tr>
         <td>Тип аренды:
            <form:select path="rentType">
			     <form:option value="-" label="--Выберите значение"/>
			     <form:options items="${rentTypes}" />
			</form:select>            
         </td>
         <td><form:errors path="rentType" cssClass="error" /></td>
       </tr>
       <tr>
         <td>Количество комнат: <form:input path="roomsAmount" /></td>
         <td><form:errors path="roomsAmount" cssClass="error" /></td>
       </tr>
       <tr>
         <td>Метка: <form:input path="tag" /></td>
         <td><form:errors path="tag" cssClass="error" /></td>
       </tr>
       <tr>
         <td>Комментрарий: <form:input path="comment" /></td>
         <td><form:errors path="comment" cssClass="error" /></td>
       </tr>
    </table>  
</fieldset>

<input type="button" value="Сохранить" 
       onclick="javascript: document.getElementById('rentPromo').submit();"/>
</form:form>

<center><span>${msg_form}</span></center>
</div>
<%@include file="/WEB-INF/jsp/footers/footer.jsp"%>


