
/*검색창의 위치입력칸 */
$(function(){
	$("#search").on("keyup", function(){
		document.getElementById('searched-place').value = document.getElementById('search').value;
	});
})

/*검색창의 인원수 설정칸 */
function selectPeopleNum() {
	document.getElementById("peopleNum").value = document.getElementById("optionNo").value;
}

/*검색창의 검색버튼 */
function submitSearch(){
	document.getElementById('searched-data').submit();
}

/*검색창에서 enter누르면 위의 검색버튼함수 실행*/
function enterkey() {
    if (window.event.keyCode == 13) {
    	submitSearch();
    }
}
