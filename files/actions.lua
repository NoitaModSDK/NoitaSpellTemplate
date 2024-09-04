table.insert(actions,
  {
    id                 = "MY_CUSTOM_SPELL",
    name               = "My Custom Spell",
    description        = "description of my custom spell",
    sprite             = "data/ui_gfx/gun_actions/custom_spell.png",
    type               = ACTION_TYPE_PROJECTILE,
    spawn_level        = "1,2",
    spawn_probability  = "1,1",
    price              = 80,
    mana               = 10,
    max_uses           = 100,  -- optional
    custom_xml_file = "data/entities/misc/custom_cards/torch_electric.xml", -- optional
    action = function()
      add_projectile("data/entities/projectiles/deck/light_bullet_air.xml")

      -- Examples for triggers:
      --add_projectile_trigger_hit_world("data/entities/projectiles/deck/light_bullet.xml", 1)
      --add_projectile_trigger_timer("data/entities/projectiles/deck/light_bullet.xml", 10, 1)
      --add_projectile_trigger_death("data/entities/projectiles/deck/mine.xml", 1)
    end,
  }
)