
var camera = camera_get_active();
var fov = 70;
if(o_cart.acc < 0){
	fov += o_cart.acc / 4;
} else{
	fov += o_cart.acc;
}
camera_set_view_mat(camera, matrix_build_lookat( room_width / 2, room_height, z, room_width / 2, 0, 0, 0, 0, -1));
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(fov, window_get_width() / window_get_height(), 1, 32000));
camera_apply(camera);