///@desc mrt_surfaces_create
///@arg width
///@arg height
function mrt_surfaces_create() {

	global.mrt_surf[0] = surface_create(argument[0],argument[1]);
	global.mrt_surf[1] = surface_create(argument[0],argument[1]);
	global.mrt_surf[2] = surface_create(argument[0],argument[1]);


}
