function Model(obj_file, mtl_file) constructor{
	objects = load_obj(obj_file, mtl_file);
	
	static draw = function(_x,_y,_z, xrot, yrot, zrot, scale){
		var o_size = ds_list_size(objects);
		for(var i = 0; i < o_size; i++){
			matrix_set(matrix_world, matrix_build(_x, _y, _z, xrot, yrot, zrot, scale, scale, scale));
			vertex_submit(objects[|i], pr_trianglelist, -1);
			matrix_set(matrix_world, matrix_build_identity());
		}
	};
}