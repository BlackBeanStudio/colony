///@description Run State

sprite_index = sprite_[state_]

// Key Controls
var _input = oInput;
var _hmove = _input.right_ - _input.left_;
var _vmove = _input.down_ - _input.up_;

// If there is any movement input set to move
if _hmove != 0 || _vmove != 0 {
	// Horizontal Speed = Direction * base speed
	var _hspd = _hmove * spd_;
	
	// Determine if there is any wall collision
	if !place_meeting(x+ (_hspd+sign(_hspd)),y,oWall) {
		x += _hspd;
	} 
	else {
		x = xprevious; 
	}
	
	// Vertical Speed = Direction * base speed
	var _vspd = _vmove * spd_;
	
	// Determine if there is any wall collision
	if !place_meeting(x,y+ _vspd,oWall) {
		y += _vspd;
	}
	else {
		y = yprevious;
	}
	
	// Flip player depending on direction of movement
	if _hmove < 0 {
		image_xscale = -1;
	}
	else {
		image_xscale = 1;
	}
}
else { // if no input set to idle
	
	state_ = playerstate.idle;
	
}

// Trigger Attack State
if _input.attack_ {
	image_index = 0;
	attack_spd_ = attack_spd_start_;
	state_ = playerstate.attack;
	
	if attack_chain_ < 2
	{
		attack_chain_ ++;
	}
	
	
}