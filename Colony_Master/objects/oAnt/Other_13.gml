/// @description Hit State

xspeed_ = approach(xspeed_,0,0.1);

hitstun_ --;

if(hitstun_ <= 0){
    state_ = enemystate.idle;
}

