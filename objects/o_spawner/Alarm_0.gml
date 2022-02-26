alarm[0] = (room_speed / 2) / (o_cart.sped / BASE_SPEED);;

instance_create_depth(0.5 * (room_width - TRACK_WIDTH_PIXELS) + irandom(5)*(TRACK_WIDTH_PIXELS/5), 0, depth - 1, o_tree);