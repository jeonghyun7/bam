<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ================================
    START BOOKING CONFIRM AREA
================================= -->
<section class="booking-confirm-area padding-top-200px padding-bottom-140px overflow-hidden">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="booking-confirm-page text-center">
                    <span class="la la-check-circle-o"></span>
                    <div class="section-heading pt-3">
                        <h2 class="sec__title pt-0 mb-2 before-none">예약이 성공적으로 완료되었습니다!</h2>
                        <!-- <p class="sec__desc">You'll receive a confirmation email at mail@example.com</p> -->
                        
                        <%-- 	imp_uid : ${imp_uid} <br/>
					        email : ${email} <br/>
					        total_fee : ${total_fee} <br/>
					        check_date : ${bdate} <br/>
					        buyer_tel : ${tel} <br/>
					        memo : ${memo} <br/>
					        p_num : ${p_num} <br/>
					        buyer_name : ${name} <br/> --%>
					        
					        
					       <%--  imp_uid : ${booking.imp_uid} <br/>
					        email : ${booking.email} <br/>
					        total_fee : ${booking.total_fee} <br/>
					        check_date : ${booking.udate} <br/>
					        buyer_tel : ${booking.tel} <br/>
					        memo : ${booking.memo} <br/>
					        p_num : ${booking.p_num} <br/>
					        buyer_name : ${booking.name} <br/>
					        camp_idx : ${booking.camp_idx} <br/>
					        my_point : ${my_point} <br/>
					        remaining_point : ${remaining_point} <br/> 
					        sort_idx : ${booking.sort_idx} <br/> 
					        check_in : ${booking.check_in}
					        check_out : ${booking.check_out}
					        
					        pay_fee : ${booking.pay_fee}
					        use_point : ${booking.use_point}
					        save_point : ${booking.save_point}
					        --%>
                    </div>
                    <div class="btn-box padding-top-30px">
                        <a href="../member/mypage.wcc" class="theme-btn">예약 내역</a>
                    </div>
                </div>
            </div><!-- end col-lg-12 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end booking-confirm-area -->
<!-- ================================
    END BOOKING CONFIRM AREA
================================= -->
