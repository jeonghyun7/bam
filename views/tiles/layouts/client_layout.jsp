<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><tiles:getAsString name="title" /></title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="author" content="TechyDevs(remade by JHW, LMS, LSB, HDS)">
    <meta name="description" content="WeCamp -- We provides camping reservation. and We also offer camping information and community">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge, chrome=1">

    <!-- Favicon -->
    <link rel="icon" href="/images/favicon.png" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	
    <!-- Template CSS Files -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/font-awesome.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/line-awesome.css?ver=<%=System.currentTimeMillis()%>">
	<link rel="stylesheet" href="/resources/css/owl.carousel.min.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/owl.theme.default.min.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/magnific-popup.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/animated-headline.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/daterangepicker.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/jquery-ui.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/jquery.filer.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/jquery.filer-dragdropbox-theme.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/select2.min.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="/resources/css/style.css?ver=<%=System.currentTimeMillis()%>">
    <script src="/resources/js/modernizr.js?ver=<%=System.currentTimeMillis()%>"></script> <!-- Modernizr -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js?ver=<%=System.currentTimeMillis()%>"></script><!--jquery-->
	<script>
	  window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '306095397264311',
	      xfbml      : true,
	      version    : 'v7.0'
	    });
	    FB.AppEvents.logPageView();
	  };
	
	  (function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "https://connect.facebook.net/en_US/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
	</script>
</head>
  
<body onbeforeunload="handleBrowserCloseButton(event);">
    <header id="header">
        <tiles:insertAttribute name="header" />
    </header>
     
    <section id="body">
        <tiles:insertAttribute name="body" />
    </section>

    <footer id="footer">
        <tiles:insertAttribute name="footer" />
    </footer>
</body>
</html>
