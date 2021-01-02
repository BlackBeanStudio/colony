///// @description 

//if (surface_exists(surface_))
//{
	
//	var _cw = room_width;
//	var _ch = room_height;
//	var _cx = camera_get_view_x(view_camera[0]);
//	var _cy = camera_get_view_y(view_camera[0]);
	
//	// Traget
//	surface_set_target(surface_);
	
//	// Drawing
	
//	draw_set_color(c_black);
//	draw_set_alpha(1);
//	draw_rectangle(0,0,_cw,_ch,false)
	
	
	
//	//with (oCamera)
//	//{
//	//	var _xscale = camera_get_view_width(view_camera[0])/sprite_get_width(sRadialLight);
//	//	var _yscale = camera_get_view_height(view_camera[0])/sprite_get_height(sRadialLight);
		
//	//	draw_sprite_ext(sRadialLight,0,x-_cx,y-_cy,_xscale,_yscale,0,c_white,1);
//	//}
	
//	//gpu_set_blendmode(bm_normal);
	
//	//Reset
//	draw_set_alpha(1);
//	surface_reset_target();
//	draw_surface(surface_,_cx,_cy);
	
//}

//if (!surface_exists(surface_))
//{
//	var _cw = room_width;
//	var _ch = room_width;
	
//	surface_ = surface_create(_cw,_ch);
	
//	surface_set_target(surface_);
//	draw_set_color(c_black);
//	draw_set_alpha(1);
//	draw_rectangle(0,0,_cw,_ch,0);
	
//	// Reset
//	surface_reset_target();
//}

draw_self();

if !surface_exists(surf) {
	    //var _cw = camera_get_view_width(view_camera[0]);
		//var _ch = camera_get_view_height(view_camera[0]);
		var _cw = room_width;
		var _ch = room_height;
	    surf = surface_create(_cw, _ch);
	    surface_set_target(surf);
	    draw_set_colour(c_black);
	    draw_set_alpha(0);
	    draw_rectangle(0, 0, _cw, _cw, false);
	    surface_reset_target();
    }
	else
	{
		
		if (surface_exists(surf)) {
			
		var _cw = camera_get_view_width(view_camera[0]);
		var _ch = camera_get_view_height(view_camera[0]);
		var _cx = camera_get_view_x(view_camera[0]);
		var _cy = camera_get_view_y(view_camera[0]);
		surface_set_target(surf);
		draw_set_color(c_black);
		draw_set_alpha(0.8);
		draw_rectangle(0, 0, _cw, _ch, 0);
		gpu_set_blendmode(bm_subtract);
		
		with (oCamera)
		{
			    draw_sprite_ext(sRadialLight, 0,x,y,1,1,0, c_white, 1);            
		}
		
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		surface_reset_target();
		draw_surface(surf, _cx, _cy);
		
		}
	}