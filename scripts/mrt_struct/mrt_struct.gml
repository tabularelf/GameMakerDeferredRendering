// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mrt_system_struct(_shader, _width, _height) constructor {
	
	shader_mrt_builder	= _shader;
	shader_mrt_type		= os_type == os_windows ? "HLSL" : "GLSL";
	
	width = _width;
	height = _height;
	
	// Used for MRTs
	surf_diffuse		= -1;
	surf_normal			= -1;
	surf_depth			= -1;
	surf_specular		= -1;
	// Master piece
	surf_mrt_final		= -1;
	
	// Used for Sun Shadowmap
	surf_sun_shadow		= -1;
	
	#region Functions
	function mrt_refresh() {
		
		// Main MRT
		if !(surface_exists(surf_diffuse))		{surf_diffuse = surface_create(width, height);}	
		if !(surface_exists(surf_normal))		{surf_normal = surface_create(width, height);}
		if !(surface_exists(surf_depth))		{surf_depth = surface_create(width, height);}
		//if !(surface_exists(surf_specular))		{surf_specular = surface_create(width, height);}
	}
	
	function mrt_free() {
		
		// Main MRT
		if (surface_exists(surf_diffuse))		{surface_free(surf_diffuse);}	
		if (surface_exists(surf_normal))		{surface_free(surf_normal);}	
		if (surface_exists(surf_depth))			{surface_free(surf_depth);}	
		//if (surface_exists(surf_specular))		{surface_free(surf_specular);}	
	}
	
	function mrt_set_target() {
		// For use to setting up the shader
		shader_set(shader_mrt_builder);
		surface_set_target_ext(0,surf_diffuse);
		surface_set_target_ext(1,surf_depth);
		surface_set_target_ext(2,surf_normal);

		draw_clear_alpha(0,0);
		gpu_set_blendenable(false);
	}
	#endregion
	
	function toString() {
		return "MRT System v" + string(MRT_VERSION) + " on " + shader_mrt_type + " - " + MRT_CREDITS;
	}
}