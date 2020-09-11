function surface_clear() {
	var _count = argument_count;

	for(var _i = 0; _i < _count; ++_i) {
		var _surf = argument[_i];
		surface_set_target(_surf);
		draw_clear_alpha(0,0);
		surface_reset_target();
	}


}
