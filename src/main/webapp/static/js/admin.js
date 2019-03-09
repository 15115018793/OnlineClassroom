$(function() {

	$(".collapse_all > li > a ").click(function(el) {

		el.preventDefault(); //禁用a标签原有的功能
		var $this = $(this);
		$(".collapse_all > li > a").removeClass("navactive");
		$this.addClass("navactive");

	})

})