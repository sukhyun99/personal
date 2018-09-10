/**
 * 
 */
function findId(){
	var name = '';
	var email = '';
	if($("#inputName").val()!=''){
		name = $("#inputName").val();
		if($("#inputEmail").val()!=''){
			email = $("#inputEmail").val();
			$.ajax({
				type: 'post',
				url: 'findId.do',
				data: {
					'name': name,
					'email': email
				},
				success: function(data){
					if(data==1){
						alert("요청하신 정보를 이메일로 발송하였습니다.")
						location.href = "main.do";
					}
					else if(data==2){
						alert("존재하지 않는 이메일입니다.")
					}
					else if(data==3){
						alert("존재하지 않는 이름입니다")
					}
				},
				error: function(xhrReq, status, error){
					alert(status);
					alert(error);
				}
			})
		}
		else{
			alert('이메일을 입력하시오');
		}
	}
	else{
		alert('이름을 입력하시오');
	}
}

function findPass(){
	var userId = '';
	var email = '';
	if($("#inputId").val()!=''){
		userId = $("#inputId").val();
		if($("#inputPassEmail").val()!=''){
			email = $("#inputPassEmail").val();
			$.ajax({
				type: 'post',
				url: 'findPass.do',
				data: {
					'userId': userId,
					'email': email
				},
				success: function(data){
					if(data==1){
						alert("요청하신 정보를 이메일로 발송하였습니다.")
						location.href = "main.do";
					}
					else if(data==2){
						alert("존재하지 않는 이메일입니다.")
					}
					else if(data==3){
						alert("존재하지 않는 아이디입니다.")
					}
				},
				error: function(xhrReq, status, error){
					alert(status);
					alert(error);
				}
			})
		}
		else{
			alert('이메일을 입력하시오');
		}
	}
	else{
		alert('아이디를 입력하시오');
	}
}