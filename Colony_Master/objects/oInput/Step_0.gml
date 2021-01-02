/// @description Input Controls

// Keyboard Input Checks

	// Left Key Down
	if keyboard_check(ord("A")) {
		left_ = 1;
	}
	else {
		left_ = 0;
	}

	// Right Key Down
	if keyboard_check(ord("D")){
		right_ = 1;
	}
	else {
		right_ = 0;
	}

	// Up Key Down
	if keyboard_check(ord("W")){
		up_ = 1;
	}
	else {
		up_ = 0;
	}

	// Down Key Down
	if keyboard_check(ord("S")) {
		down_ = 1;
	}
	else {
		down_ = 0;
	}
	
	if mouse_check_button_pressed(mb_left) {
		attack_ = 1;
		mousex_ = mouse_x;
		mousey_ = mouse_y;
	}
	else {
		attack_ = 0;
	}
		
		