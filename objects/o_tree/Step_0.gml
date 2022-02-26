/// @description Insert description here
// You can write your code in this editor
if(y > room_height + 100){
	instance_destroy();
}
vspeed = 3 * (o_cart.sped / BASE_SPEED);

if(abs(y - o_cart.y) < 8){
	if(abs(x - o_cart.x) < 6.5){
		//show_message("NOOO");
	}
}