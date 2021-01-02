/// General Scripts

function game_init() {
#macro BASEWIDTH 384
#macro BASEHEIGHT 336
#macro ONESECOND game_get_speed(gamespeed_fps)
}


function approach(a, b, amount) {

if (a < b)
{
    a += amount;
    if (a > b)
        return b;
}
else
{
    a -= amount;
    if (a < amount)
        return b;
}
return a;
}

function toggle(_toggle) {
	
	_toggle = !_toggle;
	return _toggle;
	
}

// Wave Between Two Points
function wave(from, to, duration, offset) {

var _wave = (to - from) * 0.5;

return from + _wave + sin((((current_time * 0.001) + duration * offset) / duration) * (pi * 2)) * _wave;

}

function round_n(value, increment) {
	var _value = value;
	var _increment = increment;
	return round(_value/_increment) * _increment;
}

///@description SpawnStacks(amount,layer,object,stack)
function spawn_stack(_amount, _layer, _object) {
	var _stack = ds_stack_create();

	for (var i = 0; i < _amount; i++)
	{
		var _temp_obj = instance_create_layer(0,0,_layer,_object);
		ds_stack_push(_stack,_temp_obj);
		instance_deactivate_object(_temp_obj);
	}

	return _stack;
}

function chance(percent) {
	return percent > random(1);
}

