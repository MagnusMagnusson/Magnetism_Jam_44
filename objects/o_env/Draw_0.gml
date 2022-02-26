draw_set_color(TRACK_GROUND_COLOR);
draw_rectangle(-500,0,500+room_width,room_height,false);
draw_set_color(TRACK_ROAD_COLOR);
draw_rectangle(
	(room_width / 2) - TRACK_WIDTH_PIXELS/2,
	0,
	(room_width / 2) + TRACK_WIDTH_PIXELS/2,
	room_height,
	false);