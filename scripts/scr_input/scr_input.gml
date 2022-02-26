#macro input_left 1
#macro input_right 2
#macro input_up 3
#macro input_down 4
#macro input_ldash 5
#macro input_rdash 6

function input(input){
	return genInputCheck(keyboard_check, input);
}


function input_pressed(input){
	return genInputCheck(keyboard_check_pressed, input);
}

function genInputCheck(f, key){
	switch(key){
		case input_left : {
			return f(vk_left);
			break;
		}
		case input_right : {
			return f(vk_right);
			break;
		}
		case input_up : {
			return f(vk_up);
			break;
		}
		case input_down : {
			return f(vk_down);
			break;
		}		
		case input_ldash : {
			return f(ord("A"));
			break;
		}
		case input_rdash : {
			return f(ord("D"));
			break;
		}
		default : {
			throw "scr_input.input: NO SUCH INPUT KEY "+string(input);
		}
	}
}