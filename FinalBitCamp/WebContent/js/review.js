/**
 * 
 */
function reviewLoad(campReview){
	$.each(campReview, function(index, item){
		$(".theme-reviews-list").append('<article class="theme-reviews-item">'
			    +'<div class="row" data-gutter="10">'
			    +'<div class="col-md-3 ">'
			    +'<div class="theme-reviews-item-info">'
			    +'<img class="theme-reviews-item-avatar" src="./img/70x70.png" alt="Image Alternative text" title="Image Title"/>'
			    +'<p class="theme-reviews-item-date">'+item.writeDate+'</p>'
			    +'<p class="theme-reviews-item-author">by'+item.writer+'</p>'
			    +'</div>'
			    +'</div>'
			    +'<div class="col-md-9 ">'
			    +'<div class="theme-reviews-rating">'
			    +'<div class="theme-reviews-rating-header">'
			    +'<span class="theme-reviews-rating-num">'+item.rate+'</span>'
			    +'<span class="theme-reviews-rating-title">Excellent</span>'
			    +'</div>'
			    +'<div class="theme-reviews-rating-bar">'
			    +'<div style="width:87%;"></div>'
			    +'</div>'
			    +'</div>'
			    +'<div class="theme-reviews-item-body">'
			    +'<p class="theme-reviews-item-text">'+item.content+'</p>'
			    +'</div>'
			    +'</div>'
			    +'</div>'
			    +'</article>'			
				)
				if(index==campReview.length-1){
					$(".theme-reviews-list").append('<div class="row">'
                    +'<div class="col-md-9 col-md-offset-3">'
                    +'<a class="theme-reviews-more" href="#">&#x2b; More Reviews</a>'
                    +'</div>'
                    +'</div>'
					)
					
				}
	})
}