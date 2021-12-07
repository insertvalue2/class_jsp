/**
 * 
 */

function inputCheck2() {
	
	if(document.regForm.id.value =="") {
		alert("아이디를 입력해주세요");
		document.regForm.id.focus();
		return; 
	}
}