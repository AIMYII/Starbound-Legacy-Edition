-- Item names of your Protectorate uniform
local chest = "protectorateuniformchest"
local legs  = "protectorateuniformlegs"

function init() 
  -- On first load or every respawn, enforce the uniform
  enforceUniform()
end

function enforceUniform()
  local equippedChest = world.entityItemSlot(entity.id(), "backCosmetic")
  local equippedLegs  = world.entityItemSlot(entity.id(), "legsCosmetic")

  -- If the uniform is missing, equip it automatically
  if equippedChest ~= chest then
    player.setItemSlot("chestCosmetic", { name = chest })
  end

  if equippedLegs ~= legs then
    player.setItemSlot("legsCosmetic", { name = legs })
  end

  -- Lock the slots so the player cannot remove them
  player.lockItemSlot("chestCosmetic", true)
  player.lockItemSlot("legsCosmetic", true)
end

function update(dt)
  -- Just in case the player tries modding slots, re-lock them
  enforceUniform()
end

