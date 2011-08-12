 <%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"
         session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/WEB-INF/jsp/headers/header.jsp"%>  

<c:forEach items="${promos}" var="promosItem">
  <div style="padding: 3px; 
              spacing: 5px; 
              border-style: dashed; 
              border-color: green; 
              border-width: 1px; 
              font-family: Courier; 
              font-size:10pt;">
   <b>Тип аренды</b>: ${promosItem.rentType}            
   <br/><b>Почтовый индекс</b>: ${promosItem.address.index}
   <br/><b>Улица</b>: ${promosItem.address.street}
   <br/><b>Номер здания</b>: ${promosItem.address.buildingNumb}
   <br/><b>Номер комнаты</b>: ${promosItem.address.roomNumb}
   <br/><b>Количество комнта</b>: ${promosItem.roomsAmount}
   <br/><b>Метка</b>: ${promosItem.tag}
   <br/><b>Комментарий</b>: ${promosItem.comment}
   <br/><b>Телефоны</b>: <ul>
   <c:forEach items="${promosItem.phones}" var="phoneItem">
    <li>${phoneItem}</li>
   </c:forEach>
   </ul>
  </div>
</c:forEach>

<%@include file="/WEB-INF/jsp/footers/footer.jsp"%>