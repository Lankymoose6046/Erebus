	//Get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));

key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))

key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W")) || keyboard_check(vk_up);

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
if (key_left) {
	
	image_xscale = -1;
}
else if (key_right)  {
	image_xscale = 1 ;
}
if (mouse_check_button_pressed(mb_left) && state == PLAYERSTATE.FREE)
{
    state = PLAYERSTATE.ATTACK_SLASH;
    has_attacked = false;  // Reset attack state
}
// Change selected slot (e.g. using number keys)
if (keyboard_check_pressed(ord("1"))) selected_slot = 0;
if (keyboard_check_pressed(ord("2"))) selected_slot = 1;
if (keyboard_check_pressed(ord("3"))) selected_slot = 2;

// Use selected item (example action)
if (keyboard_check_pressed(vk_space)) {
    var item = inventory[selected_slot];
    if (item != -1) {
        // Use item logic here (depends on your item system)
        show_debug_message("Used item in slot " + string(selected_slot));
    }
}
if (autorun_active) {
    hspeed = 2; // Or however fast you want him to auto-run
    if (autorun_time > 0) {
        autorun_time--;
    } else {
        autorun_active = false;
        hspeed = 0;
    }

    // Exit early to disable other controls during autorun
    exit;
}

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Combo(); break;
}