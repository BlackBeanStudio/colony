// Script Lighting Update Scripts

function change_blendmode(){

	// Update the Current Blendmode
	if keyboard_check_pressed(vk_up) {
		switch(cur_bm_)
		{
			case 1:
				if bm1_ < 11 {bm1_ ++;} else {bm1_ = 1;}
				break;
			case 2:
				if bm2_ < 11 {bm2_ ++;} else {bm2_ = 1;}
				break;
		}
	}

	if keyboard_check_pressed(vk_down) {
		switch(cur_bm_)
		{
			case 1:
				if bm1_ > 1 {bm1_ --;} else {bm1_ = 11;}
				break;
			case 2:
				if bm2_ > 1 {bm2_ --;} else {bm2_ = 11;}
				break;
		}
	}

}