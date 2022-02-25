if(input_pressed(input_left)){
	track--;
	if(track < 0){
		track = 0;
	}
}

if(input_pressed(input_right)){
	track++;
	if(track > 4){
		track = 4;
	}
}