///@desc mrt_surfaces_draw
///@arg [debug]
function mrt_surfaces_draw() {

	draw_surface_ext(global.mrt_surf[0],0,0,1,1,0,-1,1);

	if argument_count && argument[0]
	{
		gpu_set_colorwriteenable(1,1,1,0);
		gpu_set_blendmode_ext(bm_one,bm_zero);
		draw_surface_ext(global.mrt_surf[0],000,0,1/4,1/4,0,-1,1);
		draw_surface_ext(global.mrt_surf[1],320,0,1/4,1/4,0,-1,1);
		draw_surface_ext(global.mrt_surf[2],640,0,1/4,1/4,0,-1,1);
		gpu_set_blendmode(bm_normal);
		gpu_set_colorwriteenable(1,1,1,1);
	}


}
