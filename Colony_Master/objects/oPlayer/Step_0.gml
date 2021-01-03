
event_user(state_);


depth = -y;


//hurtbox Position Update
with(hurtbox_){
    x = other.x + xoffset_;
    y = other.y + yoffset_;
}

//hitbox
if(hitbox_ != -1){
    with(hitbox_){
        x = other.x + xoffset_;
        y = other.y + yoffset_;

        //check to see if the hurtbox is touching your hitbox        
        with(oHurtBox){
            if(place_meeting(x,y,other) && other.owner_ != owner_){
                //ignore check
                //checking collision from the hitbox object
                with(other){
                    //check to see if your target is on the ignore list
                    //if it is on the ignore list, dont hit it again
                    for(var i = 0; i < ds_list_size(ignore_list_); i ++){
                        if(ignore_list_[|i] = other.owner_){
                            ignore_ = true;
                            break;
                        }
                    }

                    //if it is NOT on the ignore list, hit it, and add it to
                    //the ignore list
                    if(!ignore_){
                        other.owner_.hit_ = true;
                        other.owner_.hitby_ = id;
                        ds_list_add(ignore_list_,other.owner_);
                    }
                }
            }
        }
    }
}