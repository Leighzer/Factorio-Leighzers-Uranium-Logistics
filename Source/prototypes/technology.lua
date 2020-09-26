local uraniumLogisticsTech = {
    type = "technology",
    name = "uranium-logistics",
    icon_size = 128,
    icon = "__leighzeruraniumlogistics__/graphics/technology/uranium-logistics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "uranium-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-underground-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-splitter"
      }
    },
    prerequisites = {"kovarex-enrichment-process"},
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    order = "e-p-b-d"
  }

if mods["leighzernuclearsciencepack"] then
    uraniumLogisticsTech.prerequisites = {"nuclear-science-pack"}
    table.insert(uraniumLogisticsTech.unit.ingredients, {"nuclear-science-pack",1})
end

if data.raw.technology["logistics-3"] then
  table.insert(uraniumLogisticsTech.prerequisites, "logistics-3")
end

data:extend({
    uraniumLogisticsTech
})