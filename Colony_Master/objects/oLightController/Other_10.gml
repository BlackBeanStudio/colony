/// @description  Blend Mode

if !debug_mode exit;

// Update Which Blendmode Slider your Altering
if keyboard_check_pressed(vk_left) {
	switch(cur_bm_)
	{
		case 1:
			cur_bm_ = 2;
			bm1_alpha_ = 0.4;
			bm2_alpha_ = 1;
			break;
		case 2:
			cur_bm_ = 1;
			bm1_alpha_ = 1;
			bm2_alpha_ = 0.4;
			break;
	}
}

if keyboard_check_pressed(vk_right) {
	switch(cur_bm_)
	{
		case 1:
			cur_bm_ = 2;
			bm1_alpha_ = 0.4;
			bm2_alpha_ = 1;
			break;
		case 2:
			cur_bm_ = 1;
			bm1_alpha_ = 1;
			bm2_alpha_ = 0.4;
			break;
	}
}
	
// Update the Current Blendmode
change_blendmode();