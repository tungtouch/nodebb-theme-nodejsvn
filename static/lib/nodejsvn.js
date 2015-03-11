$('document').ready(function() {
	requirejs([
		'static/vendor/imagesLoaded'
	], function(imagesLoaded) {

		$(".quick-menu-left").hover(
			function(){
			$("#content").addClass('blur');
			}, function(){
			$("#content").removeClass('blur');
			});

		$(".toggleQuickMenu").click(function () {
			console.log("Toggle Class");
			//$("#content").toggleClass('blur');
		});

		$(window).on('action:ajaxify.end', function(ev, data) {
			var url = data.url;

			if(!/^admin\//.test(data.url) && !/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {

				if ($('.home').length) {
					$('.category-header .badge i').tooltip();
				}
			}
		});

	});

	(function() {
		// loading animation
		var refreshTitle = app.refreshTitle,
			loadingBar = $('.loading-bar');

		socket.on('event:user_status_change', function(){
			console.log('user status 2:', arguments);

		});
		$(window).on('action:ajaxify.start', function(data) {
			loadingBar.fadeIn(0).removeClass('reset');
		});

		$(window).on('action:ajaxify.loadingTemplates', function() {
			loadingBar.css('width', '90%');
		});

		app.refreshTitle = function(url) {
			loadingBar.css('width', '100%');
			setTimeout(function() {
				loadingBar.fadeOut(250);

				setTimeout(function() {
					loadingBar.addClass('reset').css('width', '0%');
				}, 250);
			}, 750);

			return refreshTitle(url);
		};
	}());
});