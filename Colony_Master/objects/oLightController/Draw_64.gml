/// @description Draw Lighting Controls GUI
if neon_wave_ {

	// Draw Rectangle Gradient
	gpu_set_blendmode_ext(bm1_,bm2_);
	draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(),col_[1],col_[1],col_[0],col_[0], false);
	gpu_set_blendmode(bm_normal);

}


if show_controls_ {

	#region // Blend Mode Controls

	var _scale = gui_scale_;

	var _sw = sprite_get_width(sBlend1)*_scale;

	// Draw BlendMode Panels
	draw_sprite_ext(sBlend1,bm1_-1,24,24,_scale,_scale,0,c_white,bm1_alpha_);
	draw_sprite_ext(sBlend2,bm2_-1,24+_sw,24,_scale,_scale,0,c_white,bm2_alpha_);

	#endregion

	#region Colour Mode Controls

	// Blue Line
	var _linex = 24;
	var _slider_start = _linex + (9 *_scale)
	var _x = _linex + ((sprite_get_width(sBlueLine)+4)*_scale);
	var _y = display_get_gui_height() - (24*_scale);

	var _blue_pct = _slider_start + ((86*_scale) * (blue_/col_max_))
	draw_set_color(c_white);

	draw_sprite_ext(sBlueLine,0,_linex,_y,_scale,_scale,0,c_white,blue_alpha_);
	draw_sprite_ext(sSlider,0,_blue_pct,_y,_scale,_scale,0,c_white,blue_alpha_);
	draw_text_transformed(_x,_y-8,blue_,1,1,0)

	// Green Line
	_y = display_get_gui_height() - (48*_scale);
	var _green_pct = _slider_start + ((86*_scale) * (green_/col_max_))

	draw_sprite_ext(sGreenLine,0,_linex,_y,_scale,_scale,0,c_white,green_alpha_);
	draw_sprite_ext(sSlider,0,_green_pct,_y,_scale,_scale,0,c_white,green_alpha_);
	draw_text_transformed(_x,_y-8,green_,1,1,0)

	// Red Line
	_y = display_get_gui_height() - (72*_scale);
	var _red_pct = _slider_start + ((86*_scale) * (red_/col_max_))

	draw_sprite_ext(sRedLine,0,_linex,_y,_scale,_scale,0,c_white,red_alpha_);
	draw_sprite_ext(sSlider,0,_red_pct,_y,_scale,_scale,0,c_white,red_alpha_);
	draw_text_transformed(_x,_y-8,red_,1,1,0)

	// Draw Grad Picker
	_y = display_get_gui_height() - (96*_scale);

	draw_sprite_ext(sColourGradientPicker,current_col_,_linex,_y,_scale,_scale,0,c_white,1);

	// Colour Rectangle One
	var _x1,_x2,_y1,_y2;
	_x1 = _linex+(4*_scale);
	_x2 = _linex+(35*_scale);
	_y1 = _y - (36*_scale);
	_y2 = _y - (5*_scale);

	draw_rectangle_color(_x1,_y1,_x2,_y2,col_[0],col_[0],col_[0],col_[0],false);

	// Colour Rectangle Two
	var _x1,_x2,_y1,_y2;
	_x1 = _linex+(41*_scale);
	_x2 = _linex+(72*_scale);
	_y1 = _y - (36*_scale);
	_y2 = _y - (5*_scale);

	draw_rectangle_color(_x1,_y1,_x2,_y2,col_[1],col_[1],col_[1],col_[1],false);

	// Colour Rectangle OV
	var _x1,_x2,_y1,_y2;
	_x1 = _linex+(78*_scale);
	_x2 = _linex+(109*_scale);
	_y1 = _y - (36*_scale);
	_y2 = _y - (5*_scale);

	draw_rectangle_color(_x1,_y1,_x2,_y2,col_[2],col_[2],col_[2],col_[2],false);

}

#endregion