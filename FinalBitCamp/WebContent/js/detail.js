/**
 * 
 */
function detail(sc){
	$(".theme-search-results-item-book").on('click', '.theme-search-results-item-price-btn', function(){
		var campId = $(this).attr('id');
		location.href = "campDetailInfo.do?campId=" + campId + "&type=" + sc.type + 
				"&chkIn=" + sc.chkIn + "&chkOut=" + sc.chkOut;
	})
}