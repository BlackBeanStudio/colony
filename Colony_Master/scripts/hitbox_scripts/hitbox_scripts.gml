function hurtbox_create(_xscale,_yscale,_xoff,_yoff)	{
	
	_hurtbox = instance_create_layer(x,y,"Instances",oHurtBox);
	_hurtbox.owner_ = id;
	_hurtbox.image_xscale = _xscale;
	_hurtbox.image_yscale = _yscale;
	_hurtbox.xoffset_ = _xoff;
	_hurtbox.yoffset_ = _yoff;

	return _hurtbox;
}


function hitbox_create(_xscale,_yscale,_xoff,_yoff,_life,_xhit,_hitstun){
	
	_hitbox = instance_create_layer(x,y,"Instances",oHitBox);
	_hitbox.owner_ = id;
	_hitbox.image_xscale = _xscale;
	_hitbox.image_yscale = _yscale;
	_hitbox.xoffset_ = _xoff;
	_hitbox.yoffset_ = _yoff;
	_hitbox.life_ = _life;
	_hitbox.xhit_ = _xhit;
	_hitbox.hitstun_ = _hitstun;

	return _hitbox;
}