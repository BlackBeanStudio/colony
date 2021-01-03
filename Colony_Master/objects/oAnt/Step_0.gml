/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//get hit
if(hit_){
    xspeed_ = hitby_.xhit_;
    hitstun_ = hitby_.hitstun_;
    hit_ = false;
	state_ = enemystate.hit;
}

sprite_index = sprite_[state_];