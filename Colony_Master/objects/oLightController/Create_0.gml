/// @description 

depth = -9000;

show_controls_ = false;
neon_wave_ = false;

gui_scale_ = 2;

enum mode
{
	blend,
	color,
	lightupdate
}

enum blendmode
{
	none,
	zero,
	max,
	sub,
	isc,
	sa,
	isa,
	da,
	dc,
	ida,
	idc,
	sas
}

enum color
{
	red,
	green,
	blue
}

current_mode_ = mode.blend;
cur_picker_ = color.red;

// Blend Mode Variables
cur_bm_ = 1;

bm1_ = blendmode.idc;
bm2_ = blendmode.ida;
bm1_alpha_ = 1;
bm2_alpha_ = 0.5;



// Color Mode variables
current_col_ = 0;
col_[0] = make_color_rgb(73,66,193)
col_[1] = make_color_rgb(199,142,178)
col_[2] = c_black;
col_min_ = 0;
col_max_ = 255;

red_ = color_get_red(col_[0]);
green_ = color_get_green(col_[0]);
blue_ = color_get_blue(col_[0]); 

unfocused_ = 0.7;
focused_ = 1;
red_alpha_ = focused_;
green_alpha_ = unfocused_;
blue_alpha_ = unfocused_;

surf = -1;