// Create Function
///@func mrt_system_create
///@param width
///@param height
function mrt_system_create(_width, _height) {
		
	// Get OS and use approriate MRT Shader or throw error
	var _shader = undefined;
	switch(os_type) {
		// Desktops
		case os_windows: _shader = shd_mrt_xor; break;
		case os_macosx: case os_linux: _shader = shd_mrt_tab; break;
		default: 
		// This stricly replies to OSes that are either untested or do not support GLSL/HLSL. 
		// (Mobile/HTML5 only supports GLSL ES)
		#region Default Behaviour
		if !(MRT_ENABLE_GLSLES) {
			if (MRT_ENABLE_DEBUG_ERRORS) {show_debug_message("Error! OS not supported!");} 
			return undefined; break;
		}
		#endregion
		
		#region Alternative Behaviour 
			if (MRT_ENABLE_GLSLES) {
				_shader = shd_mrt_xor; break;	
			}
		#endregion
	}
	
	// Check if Shader is compiled
	if !shader_is_compiled(_shader) {
		if (MRT_ENABLE_DEBUG_ERRORS) {
			show_debug_message("Error! MRT Shader not compiled!");
		}
			
		return undefined;
	}
	
	return new mrt_system_struct(_shader, _width, _height);
}

// Generic Functions
///@func mrt_system_destroy
///@param mrt_struct
function mrt_system_destroy(_struct) {
	_struct.mrt_free();
	delete _struct;
	return -1;
}

///@func mrt_system_resize
///@param mrt_struct
///@param width
///@param height
function mrt_system_resize(_struct, _width, _height) {
	_struct.width = _width;
	_struct.height = _height;
	_struct.mrt_free();
	_struct.mrt_refresh();
}

///@func mrt_system_set
///@param mrt_struct
function mrt_system_set(_struct) {
	_struct.mrt_refresh();
	_struct.mrt_set_target();	
}

function mrt_system_reset() {
	// We don't need to access the struct for this!
	surface_reset_target();
	shader_reset();
	gpu_set_blendenable(true);	
}

/// @func mrt_system_draw
/// @param MRT_Struct
/// @param [debug_boolean]
function mrt_system_draw(_struct) {
	draw_surface_ext(_struct.surf_diffuse,0,0,1,1,0,-1,1);

	if argument_count && argument[1]
	{
		gpu_set_colorwriteenable(1,1,1,0);
		gpu_set_blendmode_ext(bm_one,bm_zero);
		draw_surface_ext(_struct.surf_diffuse,000,0,1/4,1/4,0,-1,1);
		draw_surface_ext(_struct.surf_depth,320,0,1/4,1/4,0,-1,1);
		draw_surface_ext(_struct.surf_normal,640,0,1/4,1/4,0,-1,1);
		gpu_set_blendmode(bm_normal);
		gpu_set_colorwriteenable(1,1,1,1);
	}	
}

function mrt_setup_textures(_mrt, _normal,_specular) {
	shader_set_uniform_f(_mrt.shader_mrt_normal_sampler, _normal);
	shader_set_uniform_f(_mrt.shader_mrt_specular_sampler, _specular);
}