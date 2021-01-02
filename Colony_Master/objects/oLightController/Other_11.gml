/// @description Color Mode

if !debug_mode exit;

// Cycle between the two colours of the gradient
if keyboard_check_pressed(vk_tab) {
	switch(current_col_) 
	{
		case 0:
			current_col_ = 1;
			break;
		case 1 :
			current_col_ = 2;
			break;
		case 2 :
			current_col_ = 0;
			break;
	}
	
	red_ = color_get_red(col_[current_col_]);
	green_ = color_get_green(col_[current_col_]);
	blue_ = color_get_blue(col_[current_col_]); 
}

// Alter which (R,G,B) Value you are changing
if keyboard_check_pressed(vk_up) {
	switch(cur_picker_)
	{
		case color.red:
			cur_picker_ = color.blue;
			break;
		case color.green:
			cur_picker_ = color.red;
			break;
		case color.blue:
			cur_picker_ = color.green;
			break;
	}
}

if keyboard_check_pressed(vk_down) {
	switch(cur_picker_)
	{
		case color.red:
			cur_picker_ = color.green;
			break;
		case color.green:
			cur_picker_ = color.blue;
			break;
		case color.blue:
			cur_picker_ = color.red;
			break;
	}
}

// Alter the (R,G,B) value
if keyboard_check(vk_right) {
	switch(cur_picker_)
	{
		case color.red:
			if red_ < col_max_ { red_ ++; }
			break;
		case color.green:
			if green_ < col_max_ { green_ ++; }
			break;
		case color.blue:
			if blue_ < col_max_ { blue_ ++; }
			break;
	}
	
	// Set the new color
	col_[current_col_] = make_color_rgb(red_,green_,blue_);
}

if keyboard_check(vk_left) {
	switch(cur_picker_)
	{
		case color.red:
			if red_ > col_min_ { red_ --; }
			break;
		case color.green:
			if green_ > col_min_ { green_ --; }
			break;
		case color.blue:
			if blue_ > col_min_ { blue_ --; }
			break;
	}
	
	// Set the new color
	col_[current_col_] = make_color_rgb(red_,green_,blue_);
}

// Fade Colors not selected 
switch(cur_picker_)
{
	case color.red:
		red_alpha_ = focused_;
		green_alpha_ = unfocused_;
		blue_alpha_ = unfocused_;
		break;
	case color.green:
		red_alpha_ = unfocused_;
		green_alpha_ = focused_;
		blue_alpha_ = unfocused_;
		break;
	case color.blue:
		red_alpha_ = unfocused_;
		green_alpha_ = unfocused_;
		blue_alpha_ = focused_;
		break;
}