function PlayerState_Attack() {
    hspeed = 0;

    if (sprite_index != spr_jin_attack) {
        sprite_index = spr_jin_attack;
        image_index = 0;
        has_attacked = false; // Reset attack state
        ds_list_clear(hitByAttack);
    }

    // Only attack once, after animation ends
    if (!has_attacked && floor(image_index) == 3)   {
        has_attacked = true;

        // Set hitbox
        mask_index = sAttack_SlashHB;

        var hitByAttackNow = ds_list_create();
        var hits = instance_place_list(x, y, obj_shadowDemon, hitByAttackNow, false);

        if (hits > 0) {
            for (var i = 0; i < hits; i++) {
                var hitID = hitByAttackNow[| i];
                if (ds_list_find_index(hitByAttack, hitID) == -1) {
                    ds_list_add(hitByAttack, hitID);
                    with (hitID) {
                        EnemyHit(2);
                    }
                }
            }
        }

        ds_list_destroy(hitByAttackNow);
        mask_index = spr_jin_idle; // Reset hitbox
    }

    // Return to normal state after attack finishes
    if (image_index >= image_number - 1) {
        sprite_index = spr_jin_idle;
        state = PLAYERSTATE.FREE;
    }
}
