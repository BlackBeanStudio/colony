/// @description Init

// Inherit the parent event
event_inherited();

// Hurtbox
hurtbox_ = hurtbox_create(11,43,-6,-43);

// Hitbox
hitbox_ = -1;

sprite_[enemystate.idle] = sBulletAntIdle;
sprite_[enemystate.run] = sBulletAntIdle;
sprite_[enemystate.attack] = sBulletAntAttack;
sprite_[enemystate.hit] = sBulletAntHit;