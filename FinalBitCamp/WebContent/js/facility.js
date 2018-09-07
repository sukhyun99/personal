/**
 * 
 */
function facilityLoad(campDetail){
	if(campDetail[0].campShower==true){
		$("#facility1").append(
				'<div class="theme-item-page-facilities-item">'
		         +'<i class="fa fa-shower theme-item-page-facilities-item-icon"></i>'
		         +'<h5 class="theme-item-page-facilities-item-title">Bathroom</h5>'
		         +'</div>'
		)
	}
	if(campDetail[0].campFood==true){
		$("#facility2").append(
				'<div class="theme-item-page-facilities-item">'
		         +'<i class="fa fa-glass theme-item-page-facilities-item-icon"></i>'
		         +'<h5 class="theme-item-page-facilities-item-title">Food and Drink</h5>'
		         +'</div>'
		)
	}
	if(campDetail[0].campElect==true){
		$("#facility3").append(
				'<div class="theme-item-page-facilities-item">'
		         +'<i class="fa fa-shower theme-item-page-facilities-item-icon"></i>'
		         +'<h5 class="theme-item-page-facilities-item-title">campElect</h5>'
		         +'</div>'
		)
	}
	if(campDetail[0].campToilet==true){
		$("#facility4").append(
				'<div class="theme-item-page-facilities-item">'
		         +'<i class="fa fa-shower theme-item-page-facilities-item-icon"></i>'
		         +'<h5 class="theme-item-page-facilities-item-title">campToilet</h5>'
		         +'</div>'
		)
	}
	if(campDetail[0].campPlayground==true){
		$("#facility1").append(
				'<div class="theme-item-page-facilities-item">'
		         +'<i class="fa fa-shower theme-item-page-facilities-item-icon"></i>'
		         +'<h5 class="theme-item-page-facilities-item-title">campPlayground</h5>'
		         +'</div>'
		)
	}
}