$('document').ready(function () {
	requirejs([
		'static/vendor/imagesLoaded'
	], function (imagesLoaded) {

		$(".quick-menu-left").hover(
			function () {
				$("#content").addClass('blur');
			}, function () {
				$("#content").removeClass('blur');
			});

		$(".toggleQuickMenu").click(function () {
			console.log("Toggle Class");
			//$("#content").toggleClass('blur');
		});

		$(window).on('action:ajaxify.end', function (ev, data) {
			var url = data.url;

			if (!/^admin\//.test(data.url) && !/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {

				if ($('.home').length) {
					$('.category-header .badge i').tooltip();
				}
			}
		});

	});


	socket.on('event:user_status_change', function (data) {
		if(data.status == 'offline'){
			$('.status-user').attr('status-uid',function(index, value){
				if(value == data.uid) {
					$(this).css({"color":"gray"});
				}
			});
		}
	});

	function getUsers() {
		$.get('http://localhost:4567/api/users/', {}, function (data) {
			var users = data.users,
				temp_html = "",
				row_html;

				for(var i=0; i < users.length; i++) {
						var name =  (users[i].fullname) ? users[i].fullname : users[i].username;
						row_html = "<li onclick=\"app.openChat('"+ users[i].username+"', "+users[i].uid+");\" class='user-online-row'><a data-ajaxify='false'><img src='"+users[i].picture +"' class='img-circle pull-left' /><span class='online-name'>" + name +
						"</span></a><i status-uid='"+users[i].uid +"' class='status-user mdi-image-brightness-1'></i></li>";
						temp_html += row_html;
				}
			$(".user-content ul").html(temp_html);

		});


	};

	getUsers();

	setInterval(function () {
		getUsers();
	}, 100000);


	(function () {
		// loading animation
		var refreshTitle = app.refreshTitle,
			loadingBar = $('.loading-bar');


		$(window).on('action:ajaxify.start', function (data) {
			loadingBar.fadeIn(0).removeClass('reset');
		});

		$(window).on('action:ajaxify.loadingTemplates', function () {
			loadingBar.css('width', '90%');
		});

		app.refreshTitle = function (url) {
			loadingBar.css('width', '100%');
			setTimeout(function () {
				loadingBar.fadeOut(250);

				setTimeout(function () {
					loadingBar.addClass('reset').css('width', '0%');
				}, 250);
			}, 750);

			return refreshTitle(url);
		};
	}());
});