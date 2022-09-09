<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<!-- Left Sidebar -->
	<div class="left main-sidebar">
	
		<div class="sidebar-inner leftscroll">

			<div id="sidebar-menu">
        
			<ul>

					<li class="submenu">
						<a class="" href="main.wcc"><i class="fa fa-fw fa fa-home"></i><span> 관리자 메인 </span> </a>
                    </li>
					<li class="submenu">
						<a class="" href="/"><i class="fa fa-fw fa fa-home"></i><span> 위캠프 홈 </span> </a>
                    </li>

					<li class="submenu1">
                        <a id="member-menu" href="#"><i class="fa fa-group bigfonts" aria-hidden="true"></i>
                        	<span> 회원 관리 </span>
                        	<span class="menu-arrow"></span>
                        </a>
                            <ul class="list-unstyled">
								<li class="active" id="member-submenu">
                                    <a href="member_manage.wcc"><span>회원</span></a>
                                </li>
                                <li id="withdrawal-member-submenu">
                                    <a href="leave_member_manage.wcc"><span>탈퇴 회원</span> </a>
                                </li>                                
                            </ul>
                    </li>

					<li class="submenu">
                        <a href="inquiry_manage.wcc"><i class="fa fa-list-alt bigfonts" aria-hidden="true"></i><span> 업체문의 관리 </span> </a>
                    </li>
                    
					<li class="submenu">
                        <a href="#"><i class="fa fa-fw fa-area-chart"></i><span> 통계 </span> </a>
                        <ul class="list-unstyled">
								<li class="active" id="member-submenu">
                                    <a href="sales_camp_daily.wcc"><span>캠핑장 일자별 매출</span></a>
                                </li>
								<li id="member-submenu">
                                    <a href="sales_camp_monthly.wcc"><span>캠핑장 월별 매출</span></a>
                                </li>
                                <li id="withdrawal-member-submenu">
                                    <a href="sales_camp_yearly.wcc"><span>캠핑장 연도별 매출</span> </a>
                                </li>                                
                                <li id="withdrawal-member-submenu">
                                    <a href="sales_wecamp_daily.wcc"><span>사이트 일자별 매출</span> </a>
                                </li>                                
                                <li id="withdrawal-member-submenu">
                                    <a href="sales_wecamp_monthly.wcc"><span>사이트 월별 매출</span> </a>
                                </li>                                
                                <li id="withdrawal-member-submenu">
                                    <a href="sales_wecamp_yearly.wcc"><span>사이트 연도별 매출</span> </a>
                                </li>                                
                            </ul>
                    </li>

					<li class="submenu">
                       <a href="camp_manage.wcc"><i class="fa fa-list"></i><span> 캠핑장 관리 </span> </a>
                    </li>
                    
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
      </div>
	</div>
	<!-- End Sidebar -->