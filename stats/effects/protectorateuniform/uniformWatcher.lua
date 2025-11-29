function init()
  script.setUpdateDelta(5)
end

function update(dt)
  local chest = world.entityType(player.id()) and player.equippedItem("chest")
  local legs  = world.entityType(player.id()) and player.equippedItem("legs")

  -- Allowed clothing
  local allowedChest = "protectorateuniformchest"
  local allowedLegs  = "protectorateuniformlegs"

  -- Remove anything that is not the Protectorate set
  if chest and chest.name ~= allowedChest then
    player.setEquippedItem("chest", nil)
  end

  if legs and legs.name ~= allowedLegs then
    player.setEquippedItem("legs", nil)
  end
end

