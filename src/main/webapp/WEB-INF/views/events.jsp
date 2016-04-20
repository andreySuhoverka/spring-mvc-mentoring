<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="container">
            <div class="new-event-container">
                <button data-toggle="modal" data-target="#new-event-modal" class="btn btn-default new-event-btn">new
                    event
                </button>
            </div>
            <div class="modal fade" id="new-event-modal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h3 class="modal-title create-event-title">Event Creation</h3>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" role="form" action="/events" method="post">
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="event-title">Event title:</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" id="event-title" placeholder="Event Title" name="eventTitle">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="event-description">Description:</label>
                                    <div class="col-sm-7">
                                        <textarea class="form-control" rows="5" cols="5" id="event-description" placeholder="Event Description" name="eventDescription"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="event-description">Event start date:</label>
                                    <div class="col-sm-6">
                                        <div class='input-group date' id='datetimepicker2'>
                                            <input type='text' class="form-control" name="startDate"/>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="create-event-submition">
                                        <button type="submit" class="btn btn-default">Create Event</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>
            </div>
            <div class="events-area">
                <c:forEach items="${allEvents}" var="item">
                    <div class="event-box">
                        <p class="event-name">${item.title}</p>
                        <p class="event-start-time">
                            <fmt:formatDate pattern="dd-MMM-yyyy"
                                            value="${item.startDate}"/>
                            <br>${item.location}
                        </p>
                    </div>
                </c:forEach>
            </div>

        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>

<script>
    $(document).ready(function () {
        $(".nav.nav-tabs li").first().addClass("active");

        $('#datetimepicker2').datetimepicker({
            locale: 'ru'
        });

    });
</script>

