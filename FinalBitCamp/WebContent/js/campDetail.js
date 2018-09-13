/**
 * 
 */
function detailLoad(campDetail, stockList){
	$.each(campDetail, function(index, item){
		$("tbody").append('<tr>'
        +'<td class="theme-item-page-rooms-table-type" id="siteId" value="'+item.siteId+'">'
        +'<h5 class="theme-item-page-rooms-table-type-title">'+item.campSiteName+'</h5>'
        +'<img class="theme-item-page-rooms-table-type-img" src="./img/'+item.file+'" alt="Image Alternative text" title="Image Title"/>'
        +'<ul class="theme-item-page-rooms-table-type-feature-list">'
        +'<li>'
        +'<span id="campSeason'+item.siteId+'" class="" value=""></span>'
        +'<span id=price>'+item.price+'</span>'
        +'</li>'
        +'</ul>'
        +'</td>'
        +'<td>'
        +'<ul id="guestCnt'+item.siteId+'" class="theme-item-page-rooms-table-guests-count">'
        +'</ul>'
        +'</td>'
        +'<td>'
        +'<ul class="theme-item-page-rooms-table-options-list">'
        +'<li><span class="campStock' + index + '" id="' + item.siteId + '">자리수</span></li>'
        +'</ul>'
        +'</td>'
        +'<td class="theme-item-page-rooms-table-price">'
        +'<div>'
        +'<div class="theme-item-page-rooms-table-price-night">'
        +'<p class="theme-item-page-rooms-table-price-sign">1박</p>'
        +'<p class="theme-item-page-rooms-table-price-night-amount">'
        +'<i class="fas fa-won-sign" id="' + item.siteId + '">'+item.price+'</i>'
        +'</p>'
        +'</div>'
        +'</div>'
        +'</td>'
        +'<td>'
        +'<div class="bookingBtn">'
        +'<a class="btn btn-primary-inverse btn-block btn-booking-form" id="' + item.siteId + '">예약</a>'
        +'</div>'
        +'</td>'
        +'</tr>')
        for(var i=0; i<campDetail[index].campPerson; i++){
			$("#guestCnt"+item.siteId).append('<li>'
											+ '<i class="fa fa-male"></i>'
											+ '</li>')
		}		
	});
	$.each(stockList, function(index, item){
		var siteId = item.siteId;
		for(var i=0; i<campDetail.length; i++){
			if($(".campStock"+i).attr('id')==item.siteId){
				$(".campStock"+i).text(item.campSiteStock+"자리");
			}
		}
	})
	if(campDetail[0].type==0||campDetail[0].type==1){
		$.each(campDetail, function(index, item){
			$("#campSeason"+item.siteId).attr('class', 'camp-season1');
			$("#campSeason"+item.siteId).text('성');
		})
	}
	else if(campDetail[0].type==2){
		$.each(campDetail, function(index, item){
			$("#campSeason"+item.siteId).attr('class', 'camp-season3');
			$("#campSeason"+item.siteId).text('주');
		})
	}
	else if(campDetail[0].type==3){
		$.each(campDetail, function(index, item){
			$("#campSeason"+item.siteId).attr('class', 'camp-season2');
			$("#campSeason"+item.siteId).text('평');
		})
	}
	$(".bookingBtn").on('click', '.btn-booking-form', function(){
		var siteId = $(this).attr('id');
		var campSiteStock = $("span[id|='"+siteId+"']").text();
		var campId = campDetail[0].campId;
		var type = campDetail[0].type;
		var price = $("i[id|='"+siteId+"']").text();
		var chkIn = campDetail[0].chkIn;
		var chkOut = campDetail[0].chkOut;
		location.href = "memberGetOneSiteInfo.do?campId="+campId+"&siteId="+siteId+"&campSiteStock="+campSiteStock
														+"&type="+type+"&price="+price+"&chkIn="+chkIn+"&chkOut="+chkOut;
	})
}