$(function() {
	$("#icons li")
	.mouseenter(function() {
		$(this).addClass('ui-state-hover');
	})
	.mouseleave(function() {
		$(this).removeClass("ui-state-hover");
	});
});