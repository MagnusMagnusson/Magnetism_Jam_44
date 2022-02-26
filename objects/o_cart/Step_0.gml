if(input(input_left)){
	x += delta(3);
}

if(input(input_right)){
	x -= delta(3);
}

if(input_pressed(input_ldash)){
	dashing += 3;
}

if(input_pressed(input_rdash)){
	dashing -= 3;
}

if(input(input_up)){
	acc += delta(1);
} else if(input(input_down)){
	acc -= delta(1);
} else{
	acc -= delta(sign(acc));
	if(abs(acc) < 1){
		acc = 0;
	}
}

sped += 1/800 + acc/800;

if(dashing != 0){
	x += TRACK_WIDTH_PIXELS / (3 * 5) * sign(dashing);
	dashing -= sign(dashing);
}
acc = clamp(acc, -36,36);

x = clamp(x, room_width/2 - TRACK_WIDTH_PIXELS/2 + 5, 0.5*(room_width + TRACK_WIDTH_PIXELS) - 5);