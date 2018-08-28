/**
 * 
 */
$(".dropdown-menu").on('click','li',function (){
	if($(this).text()=="낮은가격순"){
	}
	else if($(this).text()=="높은가격순"){
		$("#start").children().remove();
		for(var i=0; i<cslArray.length; i++){
			var first = cslArray[i];
			for(var p=i+1; p<cslArray.length; p++){
				if(cslArray[i].price<cslArray[p].price){
					cslArray[i] = cslArray[p];
					cslArray[p] = first;
					first = cslArray[i];
//						alert("cslArray["+i+"] = " + cslArray[i].price);
				}
			}
		}
		$.each(cslArray, function(index, item){
			$("#start").append('<div class="theme-search-results-item _mb-10 theme-search-results-item-full">'
					+'<div class="theme-search-results-item-preview">'
					+'<a class="theme-search-results-item-mask-link" href="#searchResultsItem-" role="button"	data-toggle="collapse" aria-expanded="false" aria-controls="searchResultsItem-"></a>'
					+'<div class="row row-no-gutter row-eq-height">'
						+'<div class="col-md-4 ">'
							+'<div class="banner theme-search-results-item-img-full banner-">'
								+'<div class="banner-bg" style="background-image: url(./img/315x225.png);"><img style="width: 315px; height: 225px;" src="img/' + item.file + '"></div>'
								+'<a class="banner-link" href="#"></a>'
							+'</div>'
						+'</div>'
						+'<div class="col-md-8 ">'
							+'<div class="theme-search-results-item-body">'
								+'<div class="row row-eq-height" data-gutter="20">'
									+'<div class="col-md-9 ">'
										+'<h5	class="theme-search-results-item-title theme-search-results-item-title-lg">' + item.campName+ ' / ' + item.campSiteName + '</h5>'
										+'<div class="theme-search-results-item-hotel-rating">'
											+'<p id=rate'+ index + ' class="theme-search-results-item-hotel-rating-title">'
												+'<b></b>'
											+'</p>'
										+'</div>'
										+'<p class="theme-search-results-item-location">'
											+'<i class="fa fa-map-marker"></i>' + item.campAddr	+ '</p></div>'
									+'<div class="col-md-3 ">'
										+'<div class="theme-search-results-item-book">'
											+'<div class="theme-search-results-item-price">'
												+'<p class="theme-search-results-item-price-tag">' + item.price + '</p>'
												+'<p class="theme-search-results-item-price-sign">1박</p>'
											+'</div>'
											+'<a class="btn btn-primary-inverse btn-block theme-search-results-item-price-btn" href="#">상세보기</a>'
											+'<a class="theme-search-results-item-bookmark theme-search-results-item-bookmark-bottom"	href="#">' 
												+'<i class="fa fa-bookmark"></i> <span>찜하기</span>'
											+'</a>'
										+'</div>'
									+'</div>'
								+'</div>'
							+'</div>'
						+'</div>'
					+'</div>'
				+'</div>'
			+'</div>');
	});
		for (var i = 0; i < cslArray.length; i++) {
			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : new daum.maps.LatLng(cslArray[0].latitude, cslArray[0].longitude) // 마커를 표시할 위치
			});			
			var iwPosition = new daum.maps.LatLng(cslArray[i].latitude, cslArray[i].longitude); //인포윈도우 표시 위치입니다
			var iwContent = [
			     '<div class="iw_inner" style="height: 100px; width: 300px;">',
			     '   <h4>'+cslArray[i].campName+'</h4>',
			     '   <p>'+cslArray[i].campAddr+'<br /> 전화번호: ',
			     +cslArray[i].campPhone+' 가격: '+cslArray[i].price+'<br />',
			     '   </p>',
			     '</div>'
			 ].join('');
		     //인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
			content : iwContent
			});
			daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		};
	}	//else if
});		//click