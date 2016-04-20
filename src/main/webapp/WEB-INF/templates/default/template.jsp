<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>


    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <%--we need font's here so url from net todo: download fonts and remove net url--%>
    <%--<link rel="stylesheet" href="/assets/css/bootstrap/bootstrap.min.css">--%>
    <link rel="stylesheet" href="/assets/css/bootstrap/bootstrap-datetimepicker.css">
    <script src="/assets/js/jquery/jquery.min.js"></script>
    <script src="/assets/js/bootstrap/bootstrap.min.js"></script>
    <script src="/assets/js/moments/moment-with-locales.js"></script>
    <script src="/assets/js/bootstrap/bootstrap-datetimepicker.js"></script>




</head>
<body>
<div class="page">
    <tiles:insertAttribute name="header" />
    <div class="content">
        <tiles:insertAttribute name="menu" />
        <tiles:insertAttribute name="body" />
    </div>
    <tiles:insertAttribute name="footer" />
</div>
</body>
</html>