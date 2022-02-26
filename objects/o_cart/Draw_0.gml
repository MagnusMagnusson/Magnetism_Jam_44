matrix_set(matrix_world, matrix_build(x, y, 64, 0, 0, 0, scale, scale, scale));
vertex_submit(o_loader.mdl_cart, pr_trianglelist, -1);
matrix_set(matrix_world, matrix_build_identity());