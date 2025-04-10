enum PLAYERSTATE {
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
image_delay = 0;
state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();
hp = 100;
hp_max = hp;
damage = 1;
facing = 0;
attack_cooldown = 0;
is_attacking = false;
has_attacked = false
healthbar_width = 100;
healthbar_height = 12;
healthbar_x = (320/2) - (healthbar_width/2);
healthbar_y = ystart - 100;
inventory = array_create(3, -1);
selected_slot = 0;

autorun_time = 180;
autorun_active = true;
