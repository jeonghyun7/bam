<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!-- ================================
       START FOOTER AREA
================================= -->

<section id ="footer" class="footer-area section-bg padding-top-140px padding-bottom-60px">
    <div class="box-icon"></div>
    <div class="box-icon"></div>
    <div class="box-icon"></div>
    <div class="box-icon"></div>
    <div class="box-icon"></div>
    <div class="box-icon"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 column-td-6">
                <div class="footer-item">
                    <div class="logo">
                        <a href="index.html" class="foot-logo"><img src="/images/logo.png" alt="logo"></a>
                        <p class="footer__desc">
                            WeCamp -- We provides camping reservation. and We also offer camping information and community
                        </p>
                        <ul class="social-profile">
                            <li>
                                <a href="https://www.instagram.com/wecamp_kr/">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/wecamp_kr/">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/wecamp_kr/">
                                    <i class="fa fa-instagram"></i>
                                </a>
                            </li>

                        </ul>
                    </div><!-- end logo -->
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
            <div class="col-lg-3 column-td-6">
                <div class="footer-item">
                    <h4 class="footer__title">Quick Links</h4>
                    <ul class="list-items">
                        <li><a href="/howto">사이트 활용법</a></li>
                        <c:if test="${ empty member }">
                        <li><a href="/sign_up/sign_up_page.wcc">회원가입</a></li>
                        <li><a href="/login/login.wcc">로그인</a></li>
                        </c:if>
                        <li><a href="/trust">신뢰와 안전</a></li>
                        <li><a href="/newsroom">뉴스룸</a></li>
                    </ul>
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
            <div class="col-lg-3 column-td-6">
                <div class="footer-item">
                    <h4 class="footer__title">Categories</h4>
                    <ul class="list-items">
                        <li><a href="#">커뮤니티</a></li>
                        <li><a href="#">친구 초대하기</a></li>
                        <li><a href="/owner/add_camp.wcc">캠핑장 호스팅</a></li>
                        <li><a href="#">채용 정보</a></li>
                        <li><a href="/owner/com_inquiry.wcc">업체 문의</a></li>
                    </ul>
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
            <div class="col-lg-3 column-td-6">
                <div class="footer-item">
                    <h4 class="footer__title">Contact with Us</h4>
                    <ul class="info-list contact-links">
                        <li><span class="la la-home"></span> 서울 마포구 백범로 23 3층</li>
                        <li><span class="la la-headphones"></span> <a href="#">+ 81 02 707 1480</a></li>
                        <li><span class="la la-envelope-o"></span> <a href="mailto:wecamp0420@naver.com">wecamp0420@naver.com</a></li>
                    </ul>
                </div><!-- end footer-item -->
            </div><!-- end col-lg-3 -->
        </div><!-- end row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="copy-right margin-top-50px padding-top-60px">
                    <p class="copy__desc">
                        &copy; Copyright WeCamp 2020. Made with
                        <span class="la la-heart-o"></span> by <a href="https://github.com/Binveloper">SB</a>, <a href="https://github.com/OnceDeveloper">HW</a>, <a href="https://github.com/cateto">DS</a>, <a href="https://github.com/dlalstj0213">MS </a>
                    </p>
                    <ul class="list-items">
                        <li><a href="#">Terms & Conditions</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Help Center</a></li>
                    </ul>
                </div><!-- end copy-right -->
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end footer-area -->
<!-- ================================
       START FOOTER AREA
================================= -->

<!-- start back-to-top -->
<div id="back-to-top">
    <i class="fa fa-angle-up" title="Go top"></i>
</div>
<!-- end back-to-top -->

<!-- Template JS Files-->
<script src="/resources/js/browser-close.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/jquery.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/jquery-ui.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/popper.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/bootstrap.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/owl.carousel.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/jquery.magnific-popup.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/isotope-3.0.6.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/animated-headline.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/select2.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/moment.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/daterangepicker.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/waypoints.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/jquery.counterup.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/jquery.show-more.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/jquery-rating.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/jquery.filer.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/smooth-scrolling.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/resources/js/main.js?ver=<%=System.currentTimeMillis()%>"></script>
