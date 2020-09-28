require("prototypes.uranium-transport-belt-pictures")

local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

data:extend({ 
  {
    type = "item",
    name = "uranium-transport-belt",
    icon = "__leighzeruraniumlogistics__/graphics/icons/uranium-transport-belt.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belt",
    order = "a[transport-belt]-d[uranium-transport-belt]",
    place_result = "uranium-transport-belt",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "uranium-transport-belt",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients =
    {
      {"express-transport-belt", 1},
      {"uranium-235", 1},
      {name="sulfuric-acid", amount=50, type="fluid"},
      {"steel-plate",20}
    },
    result = "uranium-transport-belt"    
  },

  {
      type = "transport-belt",
      name = "uranium-transport-belt",
      icon = "__leighzeruraniumlogistics__/graphics/icons/uranium-transport-belt.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 0.1, result = "uranium-transport-belt"},
      max_health = 180,
      corpse = "uranium-transport-belt-remnants",
      dying_explosion = "medium-explosion",
      resistances =
      {
        {
          type = "fire",
          percent = 50
        }
      },
      collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      damaged_trigger_effect = hit_effects.entity(),
      working_sound =
      {
        sound =
        {
          filename = "__base__/sound/transport-belt.ogg",
          volume = 0.3
        },
        persistent = true
      },
      animation_speed_coefficient = 32,
      belt_animation_set = uranium_basic_belt_animation_set,
      fast_replaceable_group = "transport-belt",      
      speed = leighzermods.leighzeruraniumlogistics.beltSpeed,
      connector_frame_sprites = transport_belt_connector_frame_sprites,
      circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
      circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
      circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
  {
    type = "corpse",
    name = "uranium-transport-belt-remnants",
    icon = "__leighzeruraniumlogistics__/graphics/icons/uranium-transport-belt.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "belt-remnants",
    order = "a-d-0",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation =  make_rotated_animation_variations_from_sheet (2,
    {
      filename = "__leighzeruraniumlogistics__/graphics/entity/uranium-transport-belt/remnants/uranium-transport-belt-remnants.png",
      line_length = 1,
      width = 54,
      height = 52,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 4,
      shift = util.by_pixel(1, 0),
      hr_version =
      {
        filename = "__leighzeruraniumlogistics__/graphics/entity/uranium-transport-belt/remnants/hr-uranium-transport-belt-remnants.png",
        line_length = 1,
        width = 106,
        height = 102,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 4,
        shift = util.by_pixel(1, -0.5),
        scale = 0.5,
      },
    })
  }
})
