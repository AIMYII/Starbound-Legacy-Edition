local printed = false

function init()
  sb.logInfo("[TP] Protectorate Uniform Script Loaded!")

  giveUniform()
  forceEquip()
end

function update(dt)
  if not printed then
    sb.logInfo("[TP] Protectorate Uniform Script Running Update!")
    printed = true
  end

  forceEquip()
end

function giveUniform()
  if not player.hasItem("protectoratechest") then
    player.giveItem("protectoratechest")
  end
  if not player.hasItem("protectoratelegs") then
    player.giveItem("protectoratelegs")
  end
end

function forceEquip()
  if not player.equippedItem("utility") then
    player.setEquippedItem("utility", { name = "protectoratechest" })
  end
  if not player.equippedItem("utility2") then
    player.setEquippedItem("utility2", { name = "protectoratelegs" })
  end
end

