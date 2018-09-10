/**
 * 
 */
function pwUpdate(memberInfo){
	if($("#pwNow").val()!=''&&$("#pwNew").val()!=''&&$("#pwChk").val()!=''){
		var passChk = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
		if(passChk.test($("#pwNew").val())==false){
			alert('비번입력 제대로');
			$("#pwNew").focus();
		}
		else{
			$.ajax({
				type: 'post',
				url: 'pwUpdate.do',
				data: {
					'pwNow': $("#pwNow").val(),
					'pwNew': $("#pwNew").val(),
					'pwChk': $("#pwChk").val(),
					'userId': memberInfo.userId
				},
				success: function(data){
					if(data==0){
						alert("현재 디비에 저장되어있는 비번과 입력 받은 비번 값이 일치하지 않음.");
					}
					else if(data==1){
						alert("새로운 비번이 비번확인값과 일치하지 않음.");
					}
					else if(data==2){
						alert("변경완료");
						$("#pwNow").val('')
						$("#pwNew").val('')
						$("#pwChk").val('')
					}
					else if(data==3){
						alert("변경실패");
						$("#pwNow").val('')
						$("#pwNew").val('')
						$("#pwChk").val('')
					}
				},
				error: function(xhrReq, status, error){
					alert(status);
					alert(error);
				}
			})
		}
	}
	else{
		alert('빈칸없이 제대로')
	}
}

function emailUpdate(memberInfo){
	if($("#emailNew").val()!=''){
		var email = $("#emailNew").val();
		$.ajax({
			type: 'get',
			url: 'emailUpdate.do',
			data: {
				'email': email,
				'userId': memberInfo.userId
			},
			success: function(data){
				if(data==1){
					$("#email").text(email);
					$("#emailNew").val('');
					alert("변경완료");
				}
				else{
					alert("변경실패");
					$("#emailNew").val('');
				}
			},
			error: function(error, status){
				alert(status);
				alert(error);
			}
		})
	}
	else{
		alert('빈칸없이 제대로')
	}
}

function telUpdate(memberInfo){
	if($("#telNew").val()!=''){
		var tel = $("#telNew").val();
		$.ajax({
			type: 'post',
			url: 'phoneUpdate.do',
			data: {
				'userId': memberInfo.userId,
				'phone': tel
			},
			success: function(data){
				if(data==1){
					$("#tel").text(tel);
					$("#telNew").val('');
					alert("변경완료");
				}
				else{
					alert("변경실패");
					$("#telNew").val('');
				}
			},
			error: function(status, error){
				alert(status);
				alert(error);
			}
		})
	}
	else{
		alert('빈칸없이 제대로')
	}
}

function addrUpdate(memberInfo){
	if($("#roadAddrPart1").val()!=''&&$("#addrDetail").val()!=''&&$("#zipNo").val()!=''){
		var post = $("#zipNo").val();
		var addr = $("#roadAddrPart1").val() + " " + $("#addrDetail").val();
		$.ajax({
			type: 'post',
			url: 'addrUpdate.do',
			data: {
				'post': post,
				'addr': addr,
				'userId': memberInfo.userId
			},
			success: function(data){
				if(data==1){
					$("#addr").text(addr);
					$("#roadAddrPart1").val('');
					$("#addrDetail").val('');
					$("#zipNo").val('');
					alert("변경완료");
				}
				else{
					$("#roadAddrPart1").val('');
					$("#addrDetail").val('');
					$("#zipNo").val('');
					alert("변경실패");
				}
			},
			error: function(status, error){
				alert(status);
				alert(error);
			}
		})
	}
	else{
		alert('빈칸없이 제대로')
	}
}