///@description Attack State

sprite_index = attack_sprite_[attack_chain_]

alarm[0] = ONESECOND * 2;

var _input = oInput;
var _atkx = _input.mousex_
var _atky = y + ((_input.mousey_ - y)/2);

if _atkx < x {
	image_xscale = -1
}
else {
	image_xscale = 1;
}

attack_spd_ = approach(attack_spd_,0,attack_spd_decay_);

move_towards_point(_atkx,_atky,attack_spd_);

//create hitbox on the right frame
var _facing = image_xscale;
var _frame = floor(image_index);

if(_frame == 2 && hitbox_ == -1){
	
	switch(attack_chain_)
	{
		case 0:
			hitbox_ = hitbox_create(26 * _facing,10,6 * _facing,-28,20,3 * _facing,45);
			break;
		case 1:
			hitbox_ = hitbox_create(21 * _facing,7,12 * _facing,-16,3,3 * _facing,45);
			break;
		case 2:
			hitbox_ = hitbox_create(18 * _facing,7,14 * _facing,-20,3,3 * _facing,45);
			break;
	}
    
}


if animation_hit_frame(image_number - 1) {
	state_ = playerstate.idle;
	image_index = 0;
	speed = 0;
	
	if attack_chain_ >= 2 {
		
		attack_chain_ = 0;
		
	}
}

