/**
 * 
 */
function mapLoad(csl, sc, cslArray){
		var csllength = csl.length;
		var container = document.getElementById('daum'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new daum.maps.LatLng(csl[0].latitude, csl[0].longitude), //지도의 중심좌표.
			level : 7 //지도의 레벨(확대, 축소 정도)
		};
		var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
		for (var i = 0; i < csl.length; i++) {
			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : new daum.maps.LatLng(csl[i].latitude, csl[i].longitude) // 마커를 표시할 위치
			});			
			var iwPosition = new daum.maps.LatLng(csl[i].latitude, csl[i].longitude); //인포윈도우 표시 위치입니다
			var iwContent = [
			     '<div class="iw_inner" style="height: 100px; width: 300px;">',
			     '   <h4>'+csl[i].campName+'</h4>',
			     '   <p>'+csl[i].campAddr+'<br /> 전화번호: ',
			     +csl[i].campPhone+' 가격: '+csl[i].price+'<br />',
			     '   </p>',
			     '</div>'
			 ].join('');
		     //인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
//	 		position : iwPosition,
			content : iwContent
			});
			daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		 	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다			
		};
		function makeOverListener(map, marker, infowindow) {
			 return function() {
			     infowindow.open(map, marker);
			 };
		}
		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
			 return function() {
			     infowindow.close();
			 };
		}
		$("#next").click(function(){
			sc.page = sc.page + 1;
			$.ajax({
				type: 'get',
				url: 'campSiteSearch.do',
				data: {
					'search': sc.search,
					'chkIn': sc.chkIn,
					'chkOut': sc.chkOut,
					'campPerson': sc.campPerson,
					'type': sc.type,
					'page': sc.page
				},
				success: function(data){
					$.each(data, function(index, item){
						cslArray.push(item);
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
															+'<p id=rate'+ index + csllength + ' class="theme-search-results-item-hotel-rating-title">'
																+'<b>' + item.rate + '</b>'
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
						if(data.length<5){
							$("#nextBtn").remove();
						}
						for (var i = 0; i < data.length; i++) {
							// 마커를 생성합니다
							var marker = new daum.maps.Marker({
								map : map, // 마커를 표시할 지도
								position : new daum.maps.LatLng(data[i].latitude, data[i].longitude) // 마커를 표시할 위치
							});			
							var iwPosition = new daum.maps.LatLng(data[i].latitude, data[i].longitude); //인포윈도우 표시 위치입니다
							var iwContent = [
							     '<div class="iw_inner" style="height: 100px; width: 300px;">',
							     '   <h4>'+data[i].campName+'</h4>',
							     '   <p>'+data[i].campAddr+'<br /> 전화번호: ',
							     +data[i].campPhone+' 가격: '+data[i].price+'<br />',
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
					},
					error: function(xhrReq, status, error){
						alert(status);
						alert(error);
					}
				})
		});
		$(".dropdown-menu").on('click','li',function (){
			if($(this).text()=="낮은가격순"){
				$("#start").children().remove();
				for(var i=0; i<cslArray.length; i++){
					var first = cslArray[i];
					for(var p=i+1; p<cslArray.length; p++){
						if(cslArray[i].price>cslArray[p].price){
							cslArray[i] = cslArray[p];
							cslArray[p] = first;
							first = cslArray[i];
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
															+'<b>' + item.rate + '</b>'
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
															+'<b>' + item.rate + '</b>'
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
			}
		});
}