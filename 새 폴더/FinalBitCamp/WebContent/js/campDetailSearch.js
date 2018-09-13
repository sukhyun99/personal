/**
 * 
 */
function detailSearch(campDetail){
	if($(".datePickerStart").val()==''){				
		alert("캠핑장 도착 날짜를 먼저 지정해주세요");
	}
	else if($(".datePickerStart").val()==''&$(".datePickerEnd").val()==''){
		alert("검색 날짜를 입력해주세요.")
	}
	else if($(".datePickerStart").val()!=''&$(".datePickerEnd").val()==''){
		alert("떠날 날짜를 입력하시오");
	}
	else if($(".datePickerStart").val()==$(".datePickerEnd").val()){
		alert("출발일과 동일한 날짜를 선택할 수 없습니다");
	}
	else if($(".datePickerStart").val()!=''&$(".datePickerEnd").val()!=''){
		var date = new Date();
		var maxMonth = date.getMonth()+4;				
		date.setMonth(maxMonth);
		var campId = campDetail[0].campId;
		var type = campDetail[0].type;
		var start = $(".datePickerStart").val();
		var splitStart = start.split('-');
		var chkIn = splitStart[0]+splitStart[1]+splitStart[2];
		var end = $(".datePickerEnd").val();
		var splitEnd = end.split('-');
		var chkOut = splitEnd[0]+splitEnd[1]+splitEnd[2];
		var rate = campDetail[0].rate;
		var chkinDate = new Date(splitStart[0], splitStart[1], splitStart[2]);
		var chkoutDate = new Date(splitEnd[0], splitEnd[1], splitEnd[2]);
		if(date.getTime()<chkinDate.getTime()){
			alert("3개월이내만 검색 할 수 있습니다.");
		}
		if(date.getTime()<chkoutDate.getTime()){
			alert("3개월이내만 검색 할 수 있습니다.");
		}
		location.href = "campDetailSearch.do?campId="+campId+"&type="+type+"&chkIn="+chkIn
				+"&chkOut="+chkOut+"&rate="+rate;
	}
}