$(function() {
	var checkId = false;
	var checkPw = false;
	var checkPwCheck = false;
	var checkName = false;
	var checkTel = false;
	var checkEmail = false;
	var checkAuthentication = false;
	// 인증번호 저장용
	var saveNum;

	// 아이디 중복&유효성 검사
	$('#checkId').click(function() {
		var userId = $('#userId').val();
		var idChk = RegExp(/^(?=.*[a-zA-Z])(?=.*[0-9]).{8,12}$/);
		if (idChk.test(userId) == false) {
			$('#alertId').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">8~12자의 영문 대소문자와 숫자의 조합으로 만들어주세요.</td>').css('color', 'red');
		} else {
			$.ajax({
				url: 'idCheck',
				type: 'GET',
				data: { "userId": userId },
				success: function(data) {
					if (data != 0) {
						$('#alertId').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">해당 아이디는 현재 사용중입니다.</td>').css('color', 'red');
						checkId = false;
					} else {
						$('#alertId').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">사용가능한 아이디입니다.</td>').css('color', 'blue');
						checkId = true;
					}
				},
				error: function(request, status, error) { }
			});
		}
	});
	// 비밀번호 유효성 검사
	$('#userPw').focusout(function() {
		var userPw = $('#userPw').val();
		var pwCheck = RegExp(/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\,.<>\/?]).{8,20}$/);
		if (pwCheck.test(userPw) == false) {
			$('#alertPw').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">8~20자의 영문 대소문자와 숫자, 특수문자가 하나이상 포함되어야 합니다.</td>').css('color', 'red');
			checkPw = false;
		} else {
			$('#alertPw').html('');
			checkPw = true;
		}
	});
	
	// 비밀번호 중복 검사
	$('#userPwCheck').focusout(function() {
		var userPw = $('#userPw').val();
		var userPwCheck = $('#userPwCheck').val();
		if (userPw != userPwCheck) {
			$('#alertPwCheck').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">비밀번호를 다시 확인해주세요.</td>').css('color', 'red');
			checkPwCheck = false;
		} else {
			$('#alertPwCheck').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">비밀번호가 일치합니다.</td>').css('color', 'blue');
			checkPwCheck = true;
		}
	});
	
	// 이름 유효성 검사
	$('#userName').focusout(function() {
      for (var i = 0; i < $("#userName").val().length; i++) {
         var checkName = $("#userName").val().substring(i, i + 1);
         if (checkName.match(/[0-9]|[a-z]|[A-Z]/)) {
            $('#alertName').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">이름을 정확히 입력해주세요</td>').css('color', 'red');
            chkName = false;
            return;
         }
         if (checkName.match(/([^가-힣\x20])/i)) {
            $('#alertName').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">이름을 정확히 입력해주세요</td>').css('color', 'red');
            chkName = false;
            return;
         }

         if ($("#userName").val() == " ") {
            $('#alertName').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">이름을 정확히 입력해주세요</td>').css('color', 'red');
            chkName = false;
            return;
         }else{
            $('#alertName').html('');
            chkName = true;
         }
      }
   });
	
	// 전화번호 유효성 검사
	$('#userTel').focusout(function() {
		var userPhone = $('#userTel').val();
		var phoneCheck = RegExp(/^\d{3}-\d{4}-\d{4}$/);
		if (phoneCheck.test(userPhone) == false) {
			$('#alertPhone').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">다시 입력해주세요.</td>').css('color', 'red');
			checkTel = false;
		} else {
			$('#alertPhone').html("");
			checkTel = true;
		}
	});

	// 이메일 중복&유효성 검사
	$('#userEmail').focusout(function() {
		var userEmail = $('#userEmail').val();
		var emailCheck = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		if (emailCheck.test(userEmail) == false) {
			$('#alertEmail').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">이메일 형식을 다시 확인해주세요.</td>').css('color', 'red');
			$('#authButton').attr('disabled', true);
			checkEmail = false;
		} else {
			$.ajax({
				url: 'emailCheck',
				type: 'GET',
				data: { 'userEmail': userEmail },
				success: function(data) {
					if (data != 0) {
						$('#alertEmail').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">해당 이메일은 현재 사용중입니다.</td>').css('color', 'red');
						$('#authButton').attr('disabled', true);
						checkEmail = false;
					} else {
						$('#alertEmail').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">사용가능한 이메일입니다.</td>').css('color', 'blue');
						$('#authButton').attr('disabled', false);
						checkEmail = true;
					}
				},
				error: function(request, status, error) { }
			});
		}
	});
	// 인증메일 보내기
	$('#authButton').click(function() {
		var userEmail = $('#userEmail').val();
		$.ajax({
			url: 'authNum',
			type: 'POST',
			data: { authNum: userEmail },
			success: function(data) {
				alert('해당 이메일로 인증 메일이 발송되었습니다.');
				saveNum = data;
				console.log(saveNum);
			},
			error: function(request, status, error) { }
		});
	});

	// 인증번호 검증
	$('#checkAuthNum').click(function() {
		var authNum = $('#authNum').val();
		if (authNum != saveNum) {
			$('#alertAuth').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">인증번호가 일치하지 않습니다.</td>').css('color', 'red');
			checkAuthentication = false;
		} else {
			$('#alertAuth').html('<th></th><td style="padding: 0px 0px 0px 15px !important;">인증되었습니다.</td>').css('color', 'blue');
			checkAuthentication = true;
		}
	});

	// 각 항목 null 체크 및 중복, 인증했는지 확인
	$('#regForm').submit(function() {
		if (checkId == false) {
			alert('아이디를 입력후 중복확인을 해주세요.');
			return false;
		}
		if (checkPw == false) {
			alert('비밀번호를 입력해주세요');
			return false;
		}

		if (checkPwCheck == false) {
			alert('비밀번호 확인을 해주세요.');
			return false;
		}

		if (checkName == false) {
			alert('이름을 입력해주세요.');
			return false;
		}

		if (checkTel == false) {
			alert('전화번호를 입력해주세요.');
			return false;
		}

		if (checkEmail == false) {
			alert('이메일을 입력해주세요');
			return false;
		}

		if (checkAuthentication == false) {
			alert('인증번호를 확인해주세요.');
			return false;
		}

		if ($('#authCheckbox').is(":checked") == false) {
			alert('개인정보 처리방침 동의체크를 해주세요.');
			return false;
		}
	});
});

$().ready(function() {
	$(".modify").click(function(e) {
		var pwd = $('input[name=userPw]').val();
		console.log(pwd)
		var inpwd = prompt('비밀번호를 입력하세요');
		if (pwd == inpwd) {
			if (e.target.id == 'modifyPw') {
				alert(1)
				$("form").attr("action", "modifyPwPage");
				$("form").submit();
			} else if (e.target.id == 'modifyInfo') {
				alert(2)
				$("form").attr("action", "myPageEdit");
				$("form").submit();
			} else if(e.target.id == 'delInfo'){
				alert(3)
				$("form").attr("action", "delInfo");
				$("form").submit();
			}
		} else {
			alert('비밀번호가 틀렸습니다.')
			return;
		}
	});
});