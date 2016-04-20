<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container">
    <ul class="nav nav-tabs">
        <li>
            <spring:url value="/events" var="eventsUrl" htmlEscape="true"/>
            <a href="${eventsUrl}">Events</a>
        </li>
        <li>
            <spring:url value="/about" var="aboutUrl" htmlEscape="true"/>
            <a href="${aboutUrl}">Who we are</a>
        </li>
    </ul>
</div>

