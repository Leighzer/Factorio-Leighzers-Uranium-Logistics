if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzeruraniumlogistics then
    leighzermods.leighzeruraniumlogistics = {}

    leighzermods.leighzeruraniumlogistics.beltSpeed = 0.03125 * 5 -- 5x regular belt speed 75/s 4500/min
    leighzermods.leighzeruraniumlogistics.undergroundBeltMaxLength = 11 -- following pattern 5, 7, 9, => 11 for reg, fast, express => uranium
end

--load in items, recipes, entities, and remnant entities
require("prototypes.technology")
require("prototypes.uranium-splitter")
require("prototypes.uranium-transport-belt")
require("prototypes.uranium-underground-belt")

-- update express logistics to be upgradeable to our new belts
if data.raw.splitter["express-splitter"] then
    data.raw.splitter["express-splitter"].next_upgrade = "uranium-splitter"
end

if data.raw["transport-belt"]["express-transport-belt"] then
    data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "uranium-transport-belt"
end

if data.raw["underground-belt"]["express-underground-belt"] then
    data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "uranium-underground-belt"
end