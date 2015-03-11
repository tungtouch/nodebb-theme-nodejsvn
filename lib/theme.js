(function(module) {
	"use strict";

	var Theme = {};

	Theme.defineWidgetAreas = function(areas, callback) {
		areas = areas.concat([
			{
				'name': 'Homepage Sidebar',
				'template': 'home.tpl',
				'location': 'sidebar'
			},
			{
				'name': 'Recent News Home',
				'template': 'home.tpl',
				'location': 'main'
			},
			{
				'name': 'Category Sidebar',
				'template': 'category.tpl',
				'location': 'sidebar'
			},
			{
				'name' : 'Quick Menu',
				'template': 'header.tpl',
				'location': 'quickmenu'
			},
			{
				'name' : 'User Online',
				'template': 'header.tpl',
				'location': 'useronline'
			}
		]);

		callback(null, areas);
	};

	module.exports = Theme;

}(module));