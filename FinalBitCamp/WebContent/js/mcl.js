/**
 * 
 */
function myCampList(mcl){
	$.each(mcl, function(index, item){
		alert(item);
		$("[id='myCamp"+item+"']").css('color', '#0093d2');
	})
}

function bookMark(userId){
	$(".campBookmark").on('click', '.theme-search-results-item-bookmark', function(){
		var siteId = $(this).attr('id');
		MyCamp(siteId, userId);
	})
}

function addMyCamp(siteId, userId){
	var num = siteId.split("myCamp");
	$.ajax({
		type: 'post',
		url:'myCamp.do',
		data: {
			'userId': userId,
			'siteId': num[1]
		},
		success: function(){
		}
	})
}

function MyCamp(siteId, userId){
	var num = siteId.split("myCamp");
	if('rgb(0, 147, 210)'==$("[id="+siteId+"]").css('color')){
		$.ajax({
			type: 'get',
			url: 'removeMyCamp.do',
			data: {
				'siteId': num[1],
				'userId': userId
			},
			success: function(){
				alert('success');
				$("[id="+siteId+"]").css('color', '#8c8c8c');
			}
		})
	}
	else{
		$("[id="+siteId+"]").css('color', '#0093d2');
		addMyCamp(siteId, userId);
	}
}