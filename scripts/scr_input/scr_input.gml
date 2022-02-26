#macro input_left 1
#macro input_right 2

function input(input){
	switch(input){
		case input_left : {
			return keyboard_check(vk_left);
			break;
		}
		case input_right : {
			return keyboard_check(vk_right);
			break;
		}
		default : {
			throw "scr_input.input: NO SUCH INPUT KEY "+string(input);
		}
	}
}