<head>
<meta charset="utf-8">
<title>Quartz Operator</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String webRoot = request.getContextPath();
	request.setAttribute("webRoot", webRoot);
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma", "No-cache");
%>
<script type="text/javascript">
	var webRoot = "${webRoot}";
</script>
<!-- The styles -->
<link href="${webRoot}/css/bootstrap-darkly.min.css" rel="stylesheet">
<link href="${webRoot}/css/charisma-app.css" rel="stylesheet">
<link href='${webRoot}/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
<link href='${webRoot}/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
<link href='${webRoot}/bower_components/chosen/chosen.min.css' rel='stylesheet'>
<link href='${webRoot}/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
<link href='${webRoot}/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
<link href='${webRoot}/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
<link href='${webRoot}/css/jquery.noty.css' rel='stylesheet'>
<link href='${webRoot}/css/noty_theme_default.css' rel='stylesheet'>
<link href='${webRoot}/css/elfinder.min.css' rel='stylesheet'>
<link href='${webRoot}/css/elfinder.theme.css' rel='stylesheet'>
<link href='${webRoot}/css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='${webRoot}/css/uploadify.css' rel='stylesheet'>
<link href='${webRoot}/css/animate.min.css' rel='stylesheet'>

<!-- jQuery -->
<script src="${webRoot}/bower_components/jquery/jquery.min.js"></script>

<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- The fav icon -->
<link rel="shortcut icon" href="${webRoot}/img/favicon.ico">

</head>