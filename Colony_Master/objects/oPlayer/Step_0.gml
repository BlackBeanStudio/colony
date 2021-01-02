
event_user(state_);


depth = -y;


//hurtbox Position Update
with(hurtbox_){
    x = other.x + xoffset_;
    y = other.y + yoffset_;
}

//hitbox Position Update
if(hitbox_ != -1){
    with(hitbox_){
        x = other.x + xoffset_;
        y = other.y + yoffset_;
    }
}