/**
 * 
 */
let buyer_tel = "";
let people_num = "";
let buyer_name = "";
let merchant_uid = "";
let camp_name="";
let buyer_email="";
let camp_total="";
let memo = "";
let udate="";

$(document).ready(function(){
	camp_idx = sessionItem.campIdx;
	buyer_tel = document.getElementById("buyer_tel").value;
	people_num = sessionItem.peopleNum;
	buyer_name = document.getElementById("buyer_name").value;
	camp_name = sessionItem.campName;
	buyer_email = document.getElementById("buyer_email").value;
	sort_idx = sessionItem.sort_idx
	udate = sessionItem.checkDate

	$("#camp_idx").val(camp_idx);
	$("#buyer_tel").val(buyer_tel);
	$("#my_points").val(my_point_type_num);
	$("#people_num").val(parseInt(people_num));
	$("#sort_idx").val(sort_idx);
	$("#udate").val(udate);
	$("#amount").val(camp_total_type_num);
})

function setName(){
	buyer_name = document.getElementById("reserver_name").value;
	document.getElementById("buyer_name").value=buyer_name;
	merchant_uid = buyer_name+'_'+new Date().getTime();
}

function setMemo(){
	memo = document.getElementById("buyer_memo").value
	console.log("memo : "+memo);
	document.getElementById("memo").value=memo;
}

function setPoint(){	//custom-booking.js에서 쓰임
	use_point = document.getElementById("point").value
	use_point_type_num = stringNumberToInt(use_point);
	if(isNaN(use_point_type_num)){
		use_point_type_num=0;
	}
	console.log(">>>use_point_type_num : "+use_point_type_num);
	document.getElementById("use_points").value=use_point_type_num;
}


function requestPay(){
	
	
	if($("#reserver_name").val()===null||$("#reserver_name").val()==""){
		alert("성함을 입력해 주세요!");
		return false;
	}
	if($("#phone_num").val()===null||$("#phone_num").val()==""){
		alert("휴대폰 번호를 입력해 주세요!");
		return false;
	}
	
	camp_total = document.getElementById("camp_total").innerText
	camp_total_type_num = stringNumberToInt(camp_total)
	

	var IMP = window.IMP; // 생략해도 괜찮습니다.
	IMP.init("imp72876855"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.

	IMP.request_pay({ // param
		pg: "html5_inicis", //이니시스(웹 표준결제)
		pay_method: "card", //신용카드
		merchant_uid: merchant_uid, //주문번호
		name: camp_name,	//주문명(결제창에서 보여질 이름)
		amount: camp_total_type_num,	//가격
		buyer_email: buyer_email,	
		buyer_name: buyer_name,
		buyer_tel: buyer_tel,
	}, function (rsp) { // callback
		if (rsp.success) {
			$("#remaining_point").val(after_payment_my_point);
			$("#imp_uid").val(rsp.imp_uid); //결제번호
			$("#service_fee").val(service_fee_type_num);
			$("#pay_fee").val(camp_total_type_num);
			$("#use_point").val(use_point_type_num);
			var buyer_information = document.buyerInformation;
			buyer_information.submit();
			
			
		} else {
			var msg = '결제에 실패하였습니다.';					
		}
		alert(msg);
	});
}

