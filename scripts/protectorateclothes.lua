-- Names of your uniform items
local chestItem = "protectorateuniformchest"
local legsItem  = "protectorateuniformlegs"

function init()
  forceUniform()
end

function update(dt)
  forceUniform()
end

function forceUniform()
  -- Check current equipped chest
  local chest = player.equippedItem("chest")
  if not chest or chest.name ~= chestItem then
    player.setEquippedItem("chest", { name = chestItem })
  end

  -- Check current equipped legs
  local legs = player.equippedItem("legs")
  if not legs or legs.name ~= legsItem then
    player.setEquippedItem("legs", { name = legsItem })
  end
end

