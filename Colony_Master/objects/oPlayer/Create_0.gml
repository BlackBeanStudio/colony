
// State Vars
starting_state_ = playerstate.idle;
state_ = starting_state_;

// Movement Vars
spd_ = 1.5;
attack_spd_start_ = 2.4;
attack_spd_ = attack_spd_start_;
attack_spd_decay_ = 0.1;

// Sprite Look up
sprite_[playerstate.idle] = sAriIdle;
sprite_[playerstate.run] = sAriRun;

attack_sprite_[0] = sAriAttackA
attack_sprite_[1] = sAriAttackB
attack_sprite_[2] = sAriAttackC

// Hurtbox
hurtbox_ = hurtbox_create(17,44,-8,-44);

// Hitbox
hitbox_ = -1;

// Attack Variables
attack_chain_ = 0;