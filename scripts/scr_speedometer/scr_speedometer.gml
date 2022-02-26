#macro speedometer_background_color c_olive
#macro speedometer_background_alpha 0.5
#macro speedometer_bar_empty_color 0
#macro speedometer_minimum_color c_red
#macro speedometer_maximum_color c_lime
#macro speedometer_precision 3

function draw_speedometer(xx, yy, radius, display_value, val, maximum){
	draw_set_color(speedometer_background_color);
	draw_set_alpha(speedometer_background_alpha);
	draw_circle(xx,yy, radius, false);
	draw_set_alpha(1);
	
	draw_primitive_begin(pr_trianglestrip);
	var c;
	var start, stop;
	start = 0;
	stop = 180;
	var steps = stop - start;
	for(var i =start; i < stop; i += speedometer_precision){
		if( ((i + start) / steps) >= val/maximum){
			c = speedometer_bar_empty_color;
		} else{
			c = merge_color(speedometer_minimum_color, speedometer_maximum_color, (i + start) / steps);
		}
		var _x = xx + lengthdir_x(radius * 0.9, i);
		var _y = yy + lengthdir_y(radius * 0.9, i);
		draw_vertex_color(_x, _y, c, 1);
		_x = xx + lengthdir_x(radius * 0.8, i + speedometer_precision);
		_y = yy + lengthdir_y(radius * 0.8, i + speedometer_precision);
		draw_vertex_color(_x, _y, c, 1);
	}
	
	c = merge_color(speedometer_minimum_color, speedometer_maximum_color, val/maximum);
	draw_primitive_end();
	draw_set_color(c);
	draw_set_halign(fa_center);
	draw_text(xx,yy, display_value);	
}