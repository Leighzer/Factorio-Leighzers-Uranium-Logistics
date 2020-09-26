for _,force in pairs(game.forces) do    
    if force.recipes["uranium-splitter"] and force.technologies["uranium-logistics"] then
        force.recipes["uranium-splitter"].enabled = force.technologies["uranium-logistics"].researched
    end

    if force.recipes["uranium-underground-belt"] and force.technologies["uranium-logistics"] then
        force.recipes["uranium-underground-belt"].enabled = force.technologies["uranium-logistics"].researched
    end

    if force.recipes["uranium-transport-belt"] and force.technologies["uranium-logistics"] then
        force.recipes["uranium-transport-belt"].enabled = force.technologies["uranium-logistics"].researched
    end
end