///@description Idle State

sprite_index = sprite_[state_]

// Key Controls
var _input = oInput;
var _hmove = _input.right_ - _input.left_;
var _vmove = _input.down_ - _input.up_;

// If any key movement set the player to run
if _hmove != 0 || _vmove != 0 {
	state_ = playerstate.run;
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