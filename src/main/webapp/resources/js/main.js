$(document).ready(function(){
	$('.w3-button').click(function(){
		var tmp = $(this).attr('id');
		var spath = '';
		switch(tmp){
			case 'lbtn':
				spath = '/social/member/login.cnu';
				break;
			case 'obtn':
				spath = '/social/member/logout.cnu';
				break;
			case 'jbtn':
				spath = '/social/member/join.cnu';
				break;
			case 'blg':
				spath = '/social/main.cnu';
				break;
			case 'ibtn':
				$('#frm').submit();
				return;
				break;
			case 'gbtn':
				spath = '/social/guestBoard/gBoardList.cnu';
				break;
			case 'irbtn':
				spath = '/social/reBoard/initRBD.cnu';
				break;
			case 'rbtn':
				spath = '/social/reBoard/reBoardList.cnu';
				break;
			case 'sbtn':
				spath = '/social/survey/surveyInfo.cnu';
				break;
			case 'fbtn':
				spath = '/social/board/boardList.cnu';
				break;
			}
		
		$(location).attr('href', spath);
	});
	
	function s1(){
		var db = $('ptext').val();
		
		if(!db){
			alert('입력 내용이 없읍니다!');
			return;
		}
		
		$('#frm').attr('method', 'post');
		$('#frm').attr('action', '/social/board/boardWriteProc.cnu');
		$('#frm').submit();
	}
	
	$('#post').click(s1);
	
});