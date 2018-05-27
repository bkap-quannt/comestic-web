(function($){
	$(document).ready(function() {
		$.fn.customPaginate = function(options)
		{
			var paginationContainer = this;
			var itemsToPaginate;
			var defaults = {
				//itemsPerPage: số lượng sản phẩm trên một trang
				itemsPerPage: 12

			};
			var settings = []
			$.extend(settings, defaults, options);
		
			 itemsToPaginate = $(settings.itemsToPaginate);
			var numberOfPaginationLinks = Math.ceil((itemsToPaginate.length / settings.itemsPerPage));
			$("<ul class='pagination pager'></ul>").prependTo(paginationContainer);

			 for(var index = 0; index < numberOfPaginationLinks; index ++)
			 {
			 	paginationContainer.find("ul").append("<li> <a href='#'>"+ (index + 1)+" </a></li>");

			 }
			itemsToPaginate.filter(":gt("+ ((settings.itemsPerPage) - 1) +")").hide();
			 paginationContainer.find("ul li a").on('click', function() {
			 	var linknumber = $(this).text();
			 	var itemsToHide = itemsToPaginate.filter(":lt(" + ((linknumber-1) * settings.itemsPerPage) + ")");
			 	$.merge(itemsToHide, itemsToPaginate.filter(":gt(" + ((linknumber * settings.itemsPerPage) -1) + ")"));
			 		itemsToHide.hide();
			 	var itemsToShow = itemsToPaginate.not(itemsToHide);

			 	itemsToShow.show();
			 });
		}
	});
}(jQuery));