function update(dt)
  local chest = world.entityItemSlot(entity.id(), "chest")
  local legs = world.entityItemSlot(entity.id(), "legs")
  local head = world.entityItemSlot(entity.id(), "head")

  if not chest and not legs and not head then
    status.addEphemeralEffect("noClothesEffect")
  else
    status.removeEphemeralEffect("noClothesEffect")
  end
end

