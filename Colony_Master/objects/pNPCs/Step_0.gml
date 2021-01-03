///@description

// Set Depth
depth = -y;

// Update State Machine
event_user(state_);

// Update Hitbox Location
with(hurtbox_){
    x = other.x + xoffset_;
    y = other.y + yoffset_;
}