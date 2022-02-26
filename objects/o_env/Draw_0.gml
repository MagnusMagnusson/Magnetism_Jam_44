matrix_set(matrix_world, matrix_build(0, 0, 0, 0, 0, 0, 1, 1, 1));

draw_set_color(TRACK_GROUND_COLOR);
draw_rectangle(-2000,0,2000+room_width,room_height,false);

draw_set_color(TRACK_BORDER_COLOR);
draw_rectangle(
	((room_width / 2) - TRACK_WIDTH_PIXELS/2) * 0.99,
	0,
	((room_width / 2) + TRACK_WIDTH_PIXELS/2) * 1.01,
	room_height,
	false);


draw_set_color(TRACK_ROAD_COLOR);
draw_rectangle(
	(room_width / 2) - TRACK_WIDTH_PIXELS/2,
	0,
	(room_width / 2) + TRACK_WIDTH_PIXELS/2,
	room_height,
	false);

matrix_set(matrix_world, matrix_build_identity());draw_set_color(TRACK_GROUND_COLOR);